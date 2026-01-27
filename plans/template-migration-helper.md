# Template Migration Helper - Implementation Plan

## Overview

Add an LLM-powered feature to convert legacy migrated templates (single TEXT_AREA with old `content_template` in description) into properly structured multi-question forms.

### Problem

After the `scribe_as_a_form` migration, old templates become a single TEXT_AREA question where the `description` field contains the old template structure (e.g., `"## Chief Complaint\n{{complaint}}\n\n## Weight\n{{weight}}"`). Users lose the benefits of structured forms:

- Per-field editing
- Appropriate input types (toggles, dropdowns, number fields)
- Validation
- Better AI extraction

### Solution

1. **Detect** legacy TEXT_AREA questions (identifiable by migration pattern)
2. **UI trigger** on template editor: "Convert to Structured Form"
3. **LLM analyzes** the old `content_template` from the description
4. **Stream back** structured questions for user review
5. **User reviews/edits** in the existing template editor
6. **Save** archives old TEXT_AREA, creates new questions

---

## Acceptance Criteria

### Detection
- [ ] Legacy templates are automatically detected when opening the template editor
- [ ] Detection is based on TEXT_AREA questions with description starting with "Extract and format the note content following this template structure:\n"
- [ ] Non-legacy templates do not show the migration banner

### User Experience
- [ ] Migration banner is visible and clearly explains the benefit of converting
- [ ] Clicking "Convert to Structured Form" opens a modal
- [ ] Questions stream in one-by-one with a visual loading indicator
- [ ] Each generated question displays its type, name, and options (if applicable)
- [ ] User can cancel the migration at any point
- [ ] User can apply the generated questions to replace the legacy structure

### Question Generation
- [ ] LLM correctly infers question types based on content patterns:
  - Free-form text → TEXT or TEXT_AREA
  - Numeric values → NUMBER
  - Yes/No patterns → TOGGLE
  - Lists of options → SINGLE_SELECT or MULTI_SELECT
- [ ] Generated questions have appropriate names and placeholders
- [ ] SELECT type questions include parsed options from the template

### Data Integrity
- [ ] Applying migration replaces the questions array in the editor
- [ ] Saving the template archives the old TEXT_AREA question (not deleted)
- [ ] Existing notes with answers to the old question retain their data
- [ ] New notes use the new structured questions

### Error Handling
- [ ] Network errors during streaming show an error toast
- [ ] Invalid templates (non-legacy) return appropriate error
- [ ] Modal can be closed and reopened without issues

---

## Implementation Tasks

### Phase 1: Backend

#### 1.1 Create Schema (`decoda/schemas/scribe_migration.py`)

```python
from pydantic import BaseModel
from decoda.enums.question_type import QuestionType

class TemplateMigrationRequest(BaseModel):
    """Request to generate structured questions from legacy template content."""
    template_id: str
    question_id: str  # The legacy TEXT_AREA question to migrate

class GeneratedQuestion(BaseModel):
    """A single generated question from the migration helper."""
    question_type: QuestionType
    name: str
    description: str | None = None
    placeholder: str | None = None
    options: list[str] | None = None  # For SELECT types
    required: bool = False
```

#### 1.2 Add Streaming Endpoint (`decoda/apps/api/routes/scribe/notes/templates.py`)

```python
@router.post("/templates/{template_id}/questions/{question_id}/migrate")
async def migrate_legacy_question(
    template_id: str,
    question_id: str,
    gemini: CurrentGeminiClient,
    session: StoreSession,
    tenant: CurrentTenant,
) -> StreamingResponse:
    """
    Stream structured questions generated from a legacy TEXT_AREA question.

    Detects legacy questions by checking if description starts with:
    "Extract and format the note content following this template structure:\n"

    Returns SSE stream with:
    - type: "question" events containing GeneratedQuestion objects
    - type: "done" when complete
    - type: "error" on failure
    """
```

#### 1.3 Design LLM Prompt

**System Prompt:**
```
You are a medical form designer. Given an old template structure, break it down into
individual form questions with appropriate types.

Available question types:
- TEXT: Short single-line text (names, brief answers)
- TEXT_AREA: Long multi-line text (notes, descriptions, complaints)
- NUMBER: Numeric values (weight, age, quantities)
- TOGGLE: Yes/No boolean questions
- SINGLE_SELECT: Choose one from a list
- MULTI_SELECT: Choose multiple from a list
- DATE: Date picker

For each field in the template, output a JSON object with:
- question_type: The appropriate type from above
- name: Human-readable question label
- description: Optional AI hint for extraction
- placeholder: Optional input placeholder text
- options: Array of options (only for SELECT types)
- required: Whether this field should be required (default false)

Output each question as a separate JSON object on its own line.
```

**User Prompt:**
```
Convert this template into structured form questions:

{content_template extracted from description}
```

---

### Phase 2: Frontend - API Layer

#### 2.1 Extend SSE Types (`console/src/lib/stream-sse.ts`)

```typescript
export type SSEEvent =
  | { type: "text"; text: string }
  | { type: "summary"; summary: string }
  | { type: "metadata"; chat_id: string }
  | { type: "question"; question: GeneratedQuestion }  // NEW
  | { type: "done" }                                    // NEW
  | { type: "error"; error: string };
```

#### 2.2 Add Types (`console/src/types/notes.ts`)

```typescript
export interface GeneratedQuestion {
  questionType: QuestionType;
  name: string;
  description?: string;
  placeholder?: string;
  options?: string[];
  required: boolean;
}
```

#### 2.3 Create API Function (`console/src/api/provider/scribe/template-migration.ts`)

```typescript
import { fetchWithAuth } from "@/api/api-config";
import { streamSSE } from "@/lib/stream-sse";
import { GeneratedQuestion } from "@/types/notes";

export async function* streamTemplateMigration(
  templateId: string,
  questionId: string,
  signal?: AbortSignal
): AsyncGenerator<GeneratedQuestion> {
  const response = await fetchWithAuth(
    `/scribe/templates/${templateId}/questions/${questionId}/migrate`,
    { method: "POST", signal }
  );

  for await (const event of streamSSE(response)) {
    if (typeof event === "object" && "type" in event && event.type === "question") {
      yield event.question as GeneratedQuestion;
    }
  }
}
```

---

### Phase 3: Frontend - UI Components

#### 3.1 Legacy Detection Utility

```typescript
// In template editor or separate util file

const LEGACY_DESCRIPTION_PREFIX =
  "Extract and format the note content following this template structure:\n";

export const isLegacyMigratedQuestion = (question: NoteQuestionDetail): boolean => {
  return (
    question.questionType === QuestionType.TEXT_AREA &&
    question.position === 0 &&
    question.data.description?.startsWith(LEGACY_DESCRIPTION_PREFIX)
  );
};

export const extractContentTemplate = (question: NoteQuestionDetail): string => {
  const prefix = LEGACY_DESCRIPTION_PREFIX;
  return question.data.description?.slice(prefix.length) || "";
};
```

#### 3.2 Migration Banner (`console/src/components/note-templates/migration-banner.tsx`)

```tsx
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import { Button } from "@/components/ui";
import { FiInfo } from "react-icons/fi";

interface MigrationBannerProps {
  onMigrate: () => void;
  isLoading: boolean;
}

export function MigrationBanner({ onMigrate, isLoading }: MigrationBannerProps) {
  return (
    <Alert className="mb-4 border-status-info-text/20 bg-status-info-bg">
      <FiInfo className="h-4 w-4" />
      <AlertTitle>Legacy Template Detected</AlertTitle>
      <AlertDescription>
        This template was migrated from the old format. Convert it to a
        structured form for better organization and data extraction.
      </AlertDescription>
      <Button
        onClick={onMigrate}
        disabled={isLoading}
        className="mt-2"
        size="sm"
      >
        {isLoading ? "Converting..." : "Convert to Structured Form"}
      </Button>
    </Alert>
  );
}
```

#### 3.3 Migration Modal (`console/src/components/note-templates/migration-modal.tsx`)

```tsx
import { useState } from "react";
import {
  Dialog,
  DialogContent,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui";
import { Card } from "@/components/ui";
import Badge from "@/components/ui/badge";
import { Spinner } from "@/components/ui/spinner";

import { streamTemplateMigration } from "@/api/provider/scribe/template-migration";
import { formatToHumanReadable } from "@/lib/format-data";
import { useToast } from "@/lib/use-toast";

import { GeneratedQuestion, NoteQuestionCreate } from "@/types/notes";
import { QuestionType } from "@/types/forms/question";

interface MigrationModalProps {
  isOpen: boolean;
  onClose: () => void;
  templateId: string;
  questionId: string;
  onApply: (questions: NoteQuestionCreate[]) => void;
}

export function MigrationModal({
  isOpen,
  onClose,
  templateId,
  questionId,
  onApply,
}: MigrationModalProps) {
  const { toast } = useToast();
  const [generatedQuestions, setGeneratedQuestions] = useState<GeneratedQuestion[]>([]);
  const [isStreaming, setIsStreaming] = useState(false);
  const [isComplete, setIsComplete] = useState(false);

  const startMigration = async () => {
    setIsStreaming(true);
    setGeneratedQuestions([]);
    setIsComplete(false);

    try {
      for await (const question of streamTemplateMigration(templateId, questionId)) {
        setGeneratedQuestions((prev) => [...prev, question]);
      }
      setIsComplete(true);
    } catch (error) {
      toast({
        title: "Error",
        description: "Failed to generate questions. Please try again.",
        variant: "error",
      });
    } finally {
      setIsStreaming(false);
    }
  };

  const handleApply = () => {
    // Convert GeneratedQuestion[] to NoteQuestionCreate[]
    const newQuestions: NoteQuestionCreate[] = generatedQuestions.map((q, index) => ({
      templateId,
      position: index,
      questionType: q.questionType,
      required: q.required,
      data: {
        name: q.name,
        description: q.description,
        placeholder: q.placeholder,
        ...(q.options && { options: q.options }),
      },
    }));
    onApply(newQuestions);
    onClose();
  };

  const handleClose = () => {
    setGeneratedQuestions([]);
    setIsStreaming(false);
    setIsComplete(false);
    onClose();
  };

  return (
    <Dialog open={isOpen} onOpenChange={handleClose}>
      <DialogContent className="max-w-2xl max-h-[80vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle>Convert to Structured Form</DialogTitle>
        </DialogHeader>

        {!isStreaming && !isComplete && generatedQuestions.length === 0 && (
          <div className="text-center py-8">
            <p className="text-foreground-secondary mb-4">
              AI will analyze your template and suggest structured questions.
            </p>
            <Button onClick={startMigration}>Start Conversion</Button>
          </div>
        )}

        {(isStreaming || isComplete || generatedQuestions.length > 0) && (
          <div className="space-y-3">
            {generatedQuestions.map((q, index) => (
              <Card
                key={index}
                className="p-3 animate-in fade-in slide-in-from-bottom-2"
              >
                <div className="flex items-center gap-2 mb-1">
                  <Badge variant="secondary">
                    {formatToHumanReadable(q.questionType)}
                  </Badge>
                  {q.required && <Badge variant="destructive">Required</Badge>}
                </div>
                <p className="font-medium">{q.name}</p>
                {q.description && (
                  <p className="text-sm text-foreground-secondary">{q.description}</p>
                )}
                {q.options && q.options.length > 0 && (
                  <p className="text-sm text-foreground-secondary">
                    Options: {q.options.join(", ")}
                  </p>
                )}
              </Card>
            ))}

            {isStreaming && (
              <div className="flex items-center gap-2 text-foreground-secondary">
                <Spinner className="h-4 w-4" />
                <span>Generating questions...</span>
              </div>
            )}
          </div>
        )}

        {isComplete && (
          <DialogFooter>
            <Button variant="outline" onClick={handleClose}>
              Cancel
            </Button>
            <Button onClick={handleApply}>
              Apply {generatedQuestions.length} Questions
            </Button>
          </DialogFooter>
        )}
      </DialogContent>
    </Dialog>
  );
}
```

#### 3.4 Integration in Template Editor

In `console/src/app/[tenant]/(console)/settings/note-templates/[id]/page.tsx`:

```tsx
import { MigrationBanner } from "@/components/note-templates/migration-banner";
import { MigrationModal } from "@/components/note-templates/migration-modal";
import { isLegacyMigratedQuestion } from "@/lib/note-utils"; // or inline

// State
const [showMigrationModal, setShowMigrationModal] = useState(false);

// Detection
const legacyQuestion = useMemo(
  () => questions.find(isLegacyMigratedQuestion),
  [questions]
);

// Handler
const handleMigrationApply = (newQuestions: NoteQuestionCreate[]) => {
  // Replace questions array with new structured questions
  // The old TEXT_AREA will be archived on save (existing behavior)
  setQuestions(newQuestions);
  setHasChanges(true);
};

// Render (before the question list)
{legacyQuestion && (
  <MigrationBanner
    onMigrate={() => setShowMigrationModal(true)}
    isLoading={false}
  />
)}

<MigrationModal
  isOpen={showMigrationModal}
  onClose={() => setShowMigrationModal(false)}
  templateId={templateId}
  questionId={legacyQuestion?.id || ""}
  onApply={handleMigrationApply}
/>
```

---

## Existing Infrastructure to Reuse

### Backend

| Existing | Location | Usage |
|----------|----------|-------|
| `GeminiClient.stream_ai_conversation_response()` | `decoda/clients/gemini.py:370` | Base streaming method |
| `CurrentGeminiClient` dependency | `decoda/apps/dependencies.py` | Inject into endpoint |
| SSE format (`data: {...}\n\n`) | Used throughout | Same format |

### Frontend

| Existing | Location | Usage |
|----------|----------|-------|
| `streamSSE()` | `console/src/lib/stream-sse.ts` | Core SSE parsing |
| `useAIGenerationWithStream` | `console/src/hooks/use-ai-generation-with-stream.ts` | Pattern reference |
| Fetch with auth pattern | `console/src/api/ai/patient.ts` | Same auth/fetch pattern |

---

## Files to Create/Modify

### New Files

| File | Purpose |
|------|---------|
| `decoda/schemas/scribe_migration.py` | Request/response schemas |
| `console/src/api/provider/scribe/template-migration.ts` | Streaming API client |
| `console/src/components/note-templates/migration-banner.tsx` | Detection banner |
| `console/src/components/note-templates/migration-modal.tsx` | Streaming preview modal |

### Modified Files

| File | Changes |
|------|---------|
| `decoda/apps/api/routes/scribe/notes/templates.py` | Add migration endpoint |
| `console/src/app/[tenant]/(console)/settings/note-templates/[id]/page.tsx` | Integration |
| `console/src/types/notes.ts` | Add GeneratedQuestion type |
| `console/src/lib/stream-sse.ts` | Extend SSEEvent type |

---

## Testing

### Backend Tests

- Legacy question detection logic
- LLM prompt generates valid question types
- Streaming response format is correct
- Error handling (invalid template, non-legacy question)

### Frontend Tests

- Banner appears only for legacy templates
- Modal streaming UI updates correctly
- Apply flow updates questions correctly
- Cancel resets state properly

---

## Flow Summary

```
┌─────────────────────────────────────────────────────────────────┐
│                    Template Editor Page                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  ┌────────────────────────────────────────────────────────────┐ │
│  │ ⓘ Legacy Template Detected                                 │ │
│  │   This template was migrated from the old format...        │ │
│  │   [Convert to Structured Form]                             │ │
│  └────────────────────────────────────────────────────────────┘ │
│                              │                                   │
│                              ▼                                   │
│  ┌────────────────────────────────────────────────────────────┐ │
│  │           Migration Modal (Streaming)                      │ │
│  │  ┌──────────────────────────────────────────────────────┐  │ │
│  │  │ [TEXT_AREA] Chief Complaint                          │  │ │
│  │  │ Long-form text for patient's main concern            │  │ │
│  │  └──────────────────────────────────────────────────────┘  │ │
│  │  ┌──────────────────────────────────────────────────────┐  │ │
│  │  │ [NUMBER] Weight                                      │  │ │
│  │  │ Patient's current weight in pounds                   │  │ │
│  │  └──────────────────────────────────────────────────────┘  │ │
│  │  ┌──────────────────────────────────────────────────────┐  │ │
│  │  │ [TOGGLE] Side Effects                                │  │ │
│  │  │ Did patient experience any side effects?             │  │ │
│  │  └──────────────────────────────────────────────────────┘  │ │
│  │                                                            │ │
│  │  ⟳ Generating questions...                                │ │
│  │                                                            │ │
│  │                    [Cancel]  [Apply 3 Questions]           │ │
│  └────────────────────────────────────────────────────────────┘ │
│                              │                                   │
│                              ▼                                   │
│  Questions replaced, old TEXT_AREA archived on save              │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## Notes

- **No mapping_key suggestions**: Since most users are weight loss clinics who already have WEIGHT/MEDICATIONS questions from migration, we don't suggest mappings
- **Existing answers preserved**: Old TEXT_AREA gets archived (not deleted), so historical answers remain linked
- **User control**: Users review and can edit suggested questions before applying
- **Streaming UX**: Questions appear one-by-one for a more engaging experience
