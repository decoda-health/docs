# Care Plan Branching: Frontend Component Architecture

## Context

HRT care plans share an initial pathway but diverge at a decision point where the patient chooses one of several options (e.g., different appointment sets/dosage changes). The backend introduces a `DECISION` step type that owns `CarePlanBranch` records, each containing ordered steps. This document defines the frontend component architecture for rendering and interacting with branches.

### Existing Architecture Summary

The care plan UI is built on a **provider + children** pattern:

- `CarePlan` / `PatientCarePlan` — root providers that wrap children in `CarePlanContext`
- `CarePlanContext` — `{ state, actions, config, lookups }` interface consumed by all child components
- `StepList` — read-only timeline rendering, delegates to `DndStepList` when editable
- `StepCard` — individual step card in the timeline
- `StepDetail` — sidebar panel that routes to `AppointmentStepDetail`, `TaskStepDetail`, or `MessageStepDetail` based on step type
- `DateConnector` — renders time gaps between steps

Steps are rendered as a **linear timeline** (vertical or horizontal). MESSAGE steps are either nested under their parent or shown in a separate timeline view. The timeline filters out MESSAGE steps and renders only APPOINTMENT/TASK steps as primary cards.

---

## Design Principles

### 1. Branches are first-class timeline content

Branch steps are the core clinical content of many care plans — they are the treatment options the patient will actually follow. They must be **visible inline in the timeline**, not hidden behind a sidebar or collapsed by default. Putting branches only in the sidebar would create a false hierarchy where the most important steps feel secondary.

### 2. The timeline stays linear after resolution

Once a branch is selected, its steps promote into the main timeline as regular step cards. No indentation, no sub-lists. The decision step above them indicates which path was chosen. Non-selected branch steps are SKIPPED by the backend and excluded from the visible timeline.

### 3. Branch selection is irreversible and must be confirmed

Selecting a branch SKIPs all steps in every other branch permanently. This is a destructive action that requires a confirmation dialog — not a single click.

### 4. Read-only compact views collapse unresolved branches

The `ReadOnlyCarePlan` (horizontal card strip in patient overview) doesn't have room for parallel branch lanes. Unresolved decisions show a single compact card. Resolved decisions show selected branch steps inline.

### 5. Composition over boolean props

Following Vercel composition patterns: no `isDecision`, `hasBranches`, or `showBranchPicker` props on existing components. DECISION steps render entirely different components via composition. New components use compound component patterns with context providers.

---

## Type Changes

**File: `components/care-plan/types.ts`**

```ts
// ── StepType enum ──────────────────────────────────────────────
export enum StepType {
  APPOINTMENT = "APPOINTMENT",
  TASK = "TASK",
  MESSAGE = "MESSAGE",
  DECISION = "DECISION", // new
}

// ── Branch types ───────────────────────────────────────────────
export interface CarePlanBranch {
  id: string;
  decisionStepId: string;
  templateBranchId?: string;
  description?: string;
  position: number;
  tagIds: string[];
  selectedDate?: string;
  selectedById?: string;
  steps: CarePlanStep[];
}

// ── Step base changes ──────────────────────────────────────────
// Add to CarePlanStepBase:
export interface CarePlanStepBase {
  // ... all existing fields unchanged ...
  branchId?: string;             // which branch this step belongs to (null for main-path steps)
  branches?: CarePlanBranch[];   // populated on DECISION steps only
}

// ── Action changes ─────────────────────────────────────────────
// Add to CarePlanActions:
export interface CarePlanActions {
  // ... all existing actions unchanged ...

  // Branch-level actions
  selectBranch: (decisionStepId: string, branchId: string) => Promise<void>;

  // Branch-scoped step actions (mirrors of the main-path actions)
  addBranchStep: (branchId: string, type?: StepType) => void;
  updateBranchStep: (branchId: string, stepId: string, updates: Partial<...>) => void;
  removeBranchStep: (branchId: string, stepId: string) => void;
  duplicateBranchStep: (branchId: string, step: CarePlanStep, atIndex: number) => void;
  moveBranchStep: (branchId: string, fromIndex: number, toIndex: number) => void;
}
```

The `toPatientSteps` mapper and `getStepDisplayName` function need updates:

- `toPatientSteps`: map `branchId` and `branches` fields from API response
- `getStepDisplayName`: return `"Decision Point"` for DECISION steps

---

## Component Architecture

### Component Tree — Full-Screen Views (Template Editor + Patient Care Plan)

#### Unresolved decision (no branch selected yet)

Each branch renders its steps via `BranchStepList` — in edit mode with drag-and-drop (`SortableStepCard`), in read-only mode with plain `StepCard`s. The steps inside a branch are the same step cards used everywhere else in the timeline.

```
<PatientCarePlan>
  <StepList renderConnector={...}>

    <StepCard step={step1} />                         ← APPOINTMENT (main path)
    <DateConnector />
    <StepCard step={step2} />                         ← APPOINTMENT (main path)
    <DateConnector />

    <DecisionStep.Root step={decisionStep}>           ← DECISION step provider
      <DecisionStep.Header />                         ← card in timeline: "Decision Point"
      <DecisionStep.BranchPicker>                     ← parallel lane container
        <DecisionStep.Branch branch={branchA}>        ← single branch lane + provider
          <DecisionStep.BranchLabel />                ← branch name + dot indicator
          <DecisionStep.BranchStepList                ← full draggable step list (edit mode)
            renderConnector={...} />                     or plain StepCards (read-only mode)
        </DecisionStep.Branch>
        <DecisionStep.Branch branch={branchB}>
          <DecisionStep.BranchLabel />
          <DecisionStep.BranchStepList renderConnector={...} />
        </DecisionStep.Branch>
      </DecisionStep.BranchPicker>
    </DecisionStep.Root>

    <DateConnector />
    <StepCard step={step5} />                         ← blocked (grayed out)

  </StepList>
  <StepDetail />                                      ← sidebar: shows DecisionStepDetail
</PatientCarePlan>                                       when decision step is selected
```

Each `BranchStepList` has its own `DragDropProvider`, so steps can be reordered within a branch using the same `SortableStepCard` as the main timeline. The DnD scopes are isolated — a drag in one branch can't leak into another branch or the main timeline.

#### Resolved decision (branch selected)

```
<PatientCarePlan>
  <StepList renderConnector={...}>

    <StepCard step={step1} />
    <DateConnector />
    <StepCard step={step2} />
    <DateConnector />

    <DecisionStep.Root step={decisionStep}>
      <DecisionStep.Header />                         ← "Decision Point — Selected: Option A"
    </DecisionStep.Root>

    <DateConnector />
    <StepCard step={branchStep1} />                   ← branch step, promoted to main timeline
    <DateConnector />
    <StepCard step={branchStep2} />                   ← branch step, promoted to main timeline
    <DateConnector />
    <StepCard step={step5} />                         ← main path continues, no longer blocked

  </StepList>
  <StepDetail />
</PatientCarePlan>
```

Key: once resolved, the `BranchPicker` is not rendered. The selected branch's steps appear as regular `StepCard`s in the timeline because the backend includes them in the step list with their proper step numbers. Non-selected branches' steps are SKIPPED and filtered out.

### Component Tree — Read-Only Compact View

```
<ReadOnlyCarePlan>
  <PatientCarePlan orientation="horizontal" detailMode="popover">
    <StepList renderConnector={...}>

      <StepCard step={step1} />
      <DateConnector />

      <!-- Unresolved: single compact card -->
      <ReadOnlyDecisionCard step={decisionStep} />    ← "Pending decision — 3 options"

      <!-- Resolved: no decision card visible, branch steps are just regular StepCards -->
      <StepCard step={branchStep1} />
      <DateConnector />
      <StepCard step={branchStep2} />

      <DateConnector />
      <StepCard step={step5} />

    </StepList>
  </PatientCarePlan>
</ReadOnlyCarePlan>
```

---

## New Components

### File Structure

```
components/care-plan/
├── decision/
│   ├── decision-step-context.tsx        # DecisionStepContextValue + useDecisionStep hook
│   ├── decision-step.tsx                # Compound component export (DecisionStep.*)
│   ├── decision-step-header.tsx         # Timeline card for the decision point
│   ├── decision-step-detail.tsx         # Sidebar detail panel with branch selection + confirmation
│   ├── branch-picker.tsx                # Container for parallel branch lanes (full views only)
│   ├── branch.tsx                       # Single branch lane + BranchContext provider
│   ├── branch-label.tsx                 # Branch name/description — lane header
│   ├── branch-step-list.tsx             # Step list within a branch (draggable in edit, plain in read-only)
│   ├── branch-select-dialog.tsx         # Confirmation dialog for branch selection
│   └── read-only-decision-card.tsx      # Compact card for read-only horizontal view
├── step-card.tsx                        # (unchanged — DECISION steps excluded, handled separately)
├── step-list.tsx                        # (updated — delegates DECISION steps to compound component)
├── step-detail.tsx                      # (updated — routes DECISION to DecisionStepDetail)
├── step-detail-layout.tsx               # (updated — adds DECISION icon/label)
├── types.ts                             # (updated — new types + enum value)
└── ...existing files unchanged
```

### `DecisionStepContext` — Branch-scoped provider

**File: `decision/decision-step-context.tsx`**

Follows the `{ state, actions, meta }` context interface pattern (composition patterns section 2.2). This is a nested provider within the parent `CarePlanContext` — components inside the decision block can access both contexts.

```tsx
import { createContext, useContext } from "react";
import { CarePlanBranch, CarePlanStep } from "../types";

interface DecisionStepState {
  decisionStep: CarePlanStep;
  branches: CarePlanBranch[];
  selectedBranchId: string | null;
  isResolved: boolean;
}

interface DecisionStepActions {
  selectBranch: (branchId: string) => Promise<void>;
}

interface DecisionStepMeta {
  readOnly: boolean;
}

export interface DecisionStepContextValue {
  state: DecisionStepState;
  actions: DecisionStepActions;
  meta: DecisionStepMeta;
}

export const DecisionStepContext =
  createContext<DecisionStepContextValue | null>(null);

export function useDecisionStep(): DecisionStepContextValue {
  const ctx = useContext(DecisionStepContext);
  if (!ctx) {
    throw new Error("useDecisionStep must be used within a DecisionStep.Root");
  }
  return ctx;
}
```

### `DecisionStep` — Compound component

**File: `decision/decision-step.tsx`**

The root component is the provider boundary (composition patterns section 2.3 — lift state into provider). All child components (`Header`, `BranchPicker`, `Branch`, etc.) share decision state without prop drilling.

```tsx
import { ReactNode, useMemo } from "react";
import { useCarePlanContext } from "../care-plan";
import { CarePlanStep, CarePlanStepStatus, isPatientStep } from "../types";
import { DecisionStepContext } from "./decision-step-context";
import { DecisionStepHeader } from "./decision-step-header";
import { BranchPicker } from "./branch-picker";
import { Branch } from "./branch";
import { BranchLabel } from "./branch-label";
import { BranchStepList } from "./branch-step-list";

interface DecisionStepRootProps {
  step: CarePlanStep;
  children: ReactNode;
}

function DecisionStepRoot({ step, children }: DecisionStepRootProps) {
  const {
    actions: { selectBranch },
    config: { readOnly },
  } = useCarePlanContext();

  const branches = step.branches ?? [];
  const selectedBranch = branches.find((b) => !!b.selectedDate);
  const isResolved =
    isPatientStep(step) && step.status === CarePlanStepStatus.COMPLETED;

  const value = useMemo(
    () => ({
      state: {
        decisionStep: step,
        branches,
        selectedBranchId: selectedBranch?.id ?? null,
        isResolved,
      },
      actions: {
        selectBranch: (branchId: string) => selectBranch(step.id, branchId),
      },
      meta: { readOnly },
    }),
    [step, branches, selectedBranch, isResolved, selectBranch, readOnly],
  );

  return (
    <DecisionStepContext.Provider value={value}>
      {children}
    </DecisionStepContext.Provider>
  );
}

// Compound component export (composition patterns section 1.2)
export const DecisionStep = {
  Root: DecisionStepRoot,
  Header: DecisionStepHeader,
  BranchPicker,
  Branch,
  BranchLabel,
  BranchStepList,
};
```

### `DecisionStepHeader` — Timeline card

**File: `decision/decision-step-header.tsx`**

Renders as a single card in the timeline, same width as `StepCard`. Shows the decision status: awaiting selection, selected branch name, or skipped.

```tsx
import { RiGitBranchLine } from "react-icons/ri";
import { cx } from "@/lib/tailwind-utils";
import { useCarePlanContext } from "../care-plan";
import { useDecisionStep } from "./decision-step-context";
import { CarePlanStepStatus, isPatientStep } from "../types";

export function DecisionStepHeader() {
  const {
    state: { selectedStepId },
    actions: { selectStep },
    config: { size },
  } = useCarePlanContext();

  const {
    state: { decisionStep, isResolved, selectedBranchId, branches },
  } = useDecisionStep();

  const isSelected = selectedStepId === decisionStep.id;
  const selectedBranch = branches.find((b) => b.id === selectedBranchId);
  const isSkipped =
    isPatientStep(decisionStep) &&
    decisionStep.status === CarePlanStepStatus.SKIPPED;

  return (
    <div
      className={cx(
        "relative cursor-pointer rounded-lg border bg-background",
        size === "sm" ? "w-48 py-2 px-3" : "w-72 py-3 px-4",
        "transition-colors hover:border-primary/40",
        isSelected
          ? "border-primary ring-1 ring-primary/30"
          : "border-border",
      )}
      onClick={() => selectStep(isSelected ? null : decisionStep.id)}
      data-step-card
    >
      <div className="flex items-center gap-1.5">
        <span className="aspect-square w-4 shrink-0 flex items-center justify-center rounded-md bg-status-warning-bg text-status-warning-text">
          <RiGitBranchLine size={10} />
        </span>
        <span
          className={cx(
            "truncate font-medium",
            size === "sm" ? "text-xs" : "text-sm",
            isSkipped && "line-through text-foreground-secondary",
          )}
        >
          Decision Point
        </span>
      </div>

      {isResolved && selectedBranch?.description && (
        <p className="mt-1 text-xs text-status-success-text truncate">
          Selected: {selectedBranch.description}
        </p>
      )}
      {!isResolved && !isSkipped && (
        <p className="mt-1 text-xs text-foreground-muted">
          {branches.length} option{branches.length !== 1 ? "s" : ""} — awaiting selection
        </p>
      )}
    </div>
  );
}
```

### `BranchPicker` — Parallel lane container

**File: `decision/branch-picker.tsx`**

Renders branch options as side-by-side cards below the decision header. Only shown in full-screen views when the decision is unresolved.

```tsx
import { ReactNode } from "react";
import { useDecisionStep } from "./decision-step-context";

interface BranchPickerProps {
  children: ReactNode;
}

export function BranchPicker({ children }: BranchPickerProps) {
  const {
    state: { isResolved },
  } = useDecisionStep();

  // Once resolved, branch steps are promoted into the main timeline
  // by the backend — no picker needed
  if (isResolved) return null;

  return (
    <div className="flex gap-3 py-2 overflow-x-auto">
      {children}
    </div>
  );
}
```

### `Branch` — Context provider for a branch lane

**File: `decision/branch.tsx`**

A pure context provider scoped to a single branch. No wrapper div, no card styling — the branch is just a vertical lane of `StepCard`s headed by a `BranchLabel`. The step cards inside it are the same cards used everywhere else in the timeline. There's no "branch card" wrapping the step cards.

```tsx
import { createContext, ReactNode, useContext, useMemo } from "react";
import { CarePlanBranch } from "../types";
import { useDecisionStep } from "./decision-step-context";

interface BranchContextValue {
  branch: CarePlanBranch;
  isSelected: boolean;
}

const BranchContext = createContext<BranchContextValue | null>(null);

export function useBranch(): BranchContextValue {
  const ctx = useContext(BranchContext);
  if (!ctx) throw new Error("useBranch must be used within a DecisionStep.Branch");
  return ctx;
}

interface BranchProps {
  branch: CarePlanBranch;
  children: ReactNode;
}

export function Branch({ branch, children }: BranchProps) {
  const {
    state: { selectedBranchId },
  } = useDecisionStep();

  const isSelected = selectedBranchId === branch.id;

  const value = useMemo(
    () => ({ branch, isSelected }),
    [branch, isSelected],
  );

  return (
    <BranchContext.Provider value={value}>
      <div className="flex flex-col items-center gap-2">
        {children}
      </div>
    </BranchContext.Provider>
  );
}
```

### `BranchLabel` — Lane header

**File: `decision/branch-label.tsx`**

A lightweight lane header — just a colored dot and the branch name. Sits above the step cards in the lane, not wrapping them.

```tsx
import { cx } from "@/lib/tailwind-utils";
import { useBranch } from "./branch";

export function BranchLabel() {
  const { branch, isSelected } = useBranch();

  return (
    <div className="flex items-center gap-2 py-1">
      <div
        className={cx(
          "h-2 w-2 rounded-full shrink-0",
          isSelected ? "bg-primary" : "bg-foreground-muted",
        )}
      />
      <span
        className={cx(
          "text-xs font-medium truncate",
          isSelected ? "text-foreground" : "text-foreground-secondary",
        )}
      >
        {branch.description || `Option ${branch.position + 1}`}
      </span>
    </div>
  );
}
```

### `BranchStepList` — Draggable step list within a branch

**File: `decision/branch-step-list.tsx`**

Renders the full step list inside a branch lane with drag-and-drop reordering. This is the same pattern as `DndStepList` — same `SortableStepCard`, same `DragDropProvider` — just scoped to a branch's step array and wired to `moveBranchStep` instead of `moveStep`.

In read-only mode it renders plain `StepCard`s (matching `StepList` behavior). In edit mode it renders `SortableStepCard`s with vertical DnD.

```tsx
import { DragDropProvider } from "@dnd-kit/react";
import { isSortable } from "@dnd-kit/react/sortable";
import { AnimatePresence, motion } from "motion/react";
import { ReactNode, useMemo } from "react";

import { useCarePlanContext } from "../care-plan";
import { StepCard } from "../step-card";
import { StepCardPopover } from "../step-card-popover";
import { SortableStepCard } from "../sortable-step-card";
import { DateConnector } from "../date-connector";
import { StepType } from "../types";
import { useBranch } from "./branch";

// Reuse the same RestrictToVerticalAxis modifier from DndStepList

interface BranchStepListProps {
  renderConnector: (nextStep: any) => ReactNode;
}

export function BranchStepList({ renderConnector }: BranchStepListProps) {
  const { branch } = useBranch();
  const {
    actions: { moveBranchStep, addBranchStep },
    config: { readOnly, detailMode },
  } = useCarePlanContext();

  const timelineSteps = useMemo(
    () => branch.steps.filter((s) => s.type !== StepType.MESSAGE),
    [branch.steps],
  );

  const usePopover = detailMode === "popover";

  if (readOnly) {
    return (
      <div className="flex flex-col items-center gap-2">
        {timelineSteps.map((step, i) => (
          <div key={step.id} className="flex flex-col items-center gap-2">
            {usePopover ? (
              <StepCardPopover stepId={step.id}>
                <StepCard step={step} />
              </StepCardPopover>
            ) : (
              <StepCard step={step} />
            )}
            {i < timelineSteps.length - 1 && renderConnector(timelineSteps[i + 1])}
          </div>
        ))}
      </div>
    );
  }

  // Edit mode: same DnD pattern as DndStepList, scoped to this branch
  return (
    <DragDropProvider
      onDragEnd={(event) => {
        if (event.canceled) return;
        const { source } = event.operation;
        if (isSortable(source)) {
          const { initialIndex, index } = source;
          if (initialIndex !== index) {
            moveBranchStep(branch.id, initialIndex, index);
          }
        }
      }}
    >
      <div className="flex flex-col items-center gap-2">
        <AnimatePresence initial={false} mode="popLayout">
          {timelineSteps.map((step, i) => {
            const nextStep = timelineSteps.at(i + 1);
            const connector = nextStep ? renderConnector(nextStep) : null;

            return (
              <motion.div
                key={step.id}
                layout
                initial={{ opacity: 0, scale: 0.95, y: -10 }}
                animate={{ opacity: 1, scale: 1, y: 0 }}
                exit={{ opacity: 0, scale: 0.95, y: -10 }}
                transition={{ duration: 0.2, ease: "easeOut" }}
              >
                <SortableStepCard step={step} index={i}>
                  {connector}
                </SortableStepCard>
              </motion.div>
            );
          })}
        </AnimatePresence>
        <AddStepButton onClick={() => addBranchStep(branch.id)} />
      </div>
    </DragDropProvider>
  );
}
```

The `AddStepButton` at the end of each branch lane calls `addBranchStep(branchId)` instead of the main-path `addStep`. The new step is appended to `branch.steps` with its date computed from the last step in the branch (or the decision step's date if the branch is empty).

**Why the DnD isolation works:** Each `DragDropProvider` manages its own drag context. The main timeline has one `DragDropProvider`, and each branch lane has its own. Steps can only be dragged within their own provider scope — a branch step can't accidentally be dragged into the main timeline or another branch. This is the same isolation you get for free from the existing DnD architecture.

### `BranchSelectDialog` — Confirmation for irreversible selection

**File: `decision/branch-select-dialog.tsx`**

Uses the existing `Dialog` component pattern (see `billing/invoices/confirm-dialog.tsx`). Shown from the sidebar `DecisionStepDetail` when the user clicks "Select this path".

```tsx
import { useState } from "react";
import Button from "@/components/ui/button";
import {
  Dialog,
  DialogBody,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { CarePlanBranch, getStepDisplayName, StepType } from "../types";
import { useCarePlanContext } from "../care-plan";

interface BranchSelectDialogProps {
  branch: CarePlanBranch;
  totalBranches: number;
  onConfirm: () => Promise<void>;
  children: React.ReactNode;  // trigger element
}

export function BranchSelectDialog({
  branch,
  totalBranches,
  onConfirm,
  children,
}: BranchSelectDialogProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const {
    lookups: { serviceById, medicationById, measurementById },
  } = useCarePlanContext();

  const nonMessageSteps = branch.steps.filter((s) => s.type !== StepType.MESSAGE);
  const skippedCount = totalBranches - 1;

  const handleConfirm = async () => {
    setIsLoading(true);
    try {
      await onConfirm();
      setIsOpen(false);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <Dialog open={isOpen} onOpenChange={setIsOpen}>
      <DialogTrigger asChild>{children}</DialogTrigger>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>
            Select: {branch.description || `Option ${branch.position + 1}`}
          </DialogTitle>
          <DialogDescription>
            This will activate {nonMessageSteps.length} step
            {nonMessageSteps.length !== 1 ? "s" : ""} in this path and skip all
            steps in the other {skippedCount} option
            {skippedCount !== 1 ? "s" : ""}. This cannot be undone.
          </DialogDescription>
        </DialogHeader>

        <DialogBody>
          <div className="space-y-1">
            <p className="text-xs font-medium text-foreground-secondary mb-2">
              Steps in this path:
            </p>
            {nonMessageSteps.map((step, i) => (
              <p key={step.id} className="text-sm text-foreground">
                <span className="text-foreground-muted mr-1.5">{i + 1}.</span>
                {getStepDisplayName(step, {
                  serviceById,
                  medicationById,
                  measurementById,
                }) || "Untitled Step"}
              </p>
            ))}
          </div>
        </DialogBody>

        <DialogFooter>
          <Button
            variant="secondary"
            onClick={() => setIsOpen(false)}
            disabled={isLoading}
          >
            Cancel
          </Button>
          <Button
            variant="primary"
            onClick={handleConfirm}
            isLoading={isLoading}
          >
            Confirm selection
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
```

### `DecisionStepDetail` — Sidebar detail panel

**File: `decision/decision-step-detail.tsx`**

Shown in the sidebar when a DECISION step is selected. Lists all branches with step counts. For unresolved decisions in edit mode, each branch has a "Select this path" button that opens the confirmation dialog.

```tsx
import { Label } from "@/components/ui";
import { cx } from "@/lib/tailwind-utils";
import { useCarePlanContext } from "../care-plan";
import { StepType, getStepDisplayName } from "../types";
import { BranchSelectDialog } from "./branch-select-dialog";
import Button from "@/components/ui/button";

export function DecisionStepDetail() {
  const {
    state: { selectedStep },
    actions: { selectBranch },
    config: { readOnly },
    lookups: { serviceById, medicationById, measurementById },
  } = useCarePlanContext();

  if (!selectedStep) return null;

  const branches = selectedStep.branches ?? [];
  const selectedBranch = branches.find((b) => !!b.selectedDate);
  const isResolved = !!selectedBranch;

  return (
    <div className="space-y-4">
      <Label>Branches</Label>
      <div className="space-y-2">
        {branches
          .sort((a, b) => a.position - b.position)
          .map((branch) => {
            const isBranchSelected = branch.id === selectedBranch?.id;
            const nonMessageSteps = branch.steps.filter(
              (s) => s.type !== StepType.MESSAGE,
            );

            return (
              <div
                key={branch.id}
                className={cx(
                  "rounded-lg border p-3",
                  isBranchSelected
                    ? "border-primary bg-primary/5"
                    : isResolved
                      ? "border-border opacity-50"
                      : "border-border",
                )}
              >
                <p className="text-sm font-medium">
                  {branch.description || `Option ${branch.position + 1}`}
                </p>
                <p className="text-xs text-foreground-secondary mt-1">
                  {nonMessageSteps.length} step
                  {nonMessageSteps.length !== 1 ? "s" : ""}
                </p>

                {/* Step preview */}
                {nonMessageSteps.length > 0 && (
                  <ul className="mt-2 space-y-0.5">
                    {nonMessageSteps.slice(0, 4).map((step, i) => (
                      <li
                        key={step.id}
                        className="text-xs text-foreground-secondary truncate"
                      >
                        <span className="text-foreground-muted mr-1">
                          {i + 1}.
                        </span>
                        {getStepDisplayName(step, {
                          serviceById,
                          medicationById,
                          measurementById,
                        }) || "Untitled Step"}
                      </li>
                    ))}
                    {nonMessageSteps.length > 4 && (
                      <li className="text-xs text-foreground-muted">
                        +{nonMessageSteps.length - 4} more
                      </li>
                    )}
                  </ul>
                )}

                {isBranchSelected && (
                  <p className="text-xs text-status-success-text mt-2">
                    Selected
                  </p>
                )}

                {!readOnly && !isResolved && (
                  <BranchSelectDialog
                    branch={branch}
                    totalBranches={branches.length}
                    onConfirm={() =>
                      selectBranch(selectedStep.id, branch.id)
                    }
                  >
                    <Button size="sm" variant="outline" className="mt-2">
                      Select this path
                    </Button>
                  </BranchSelectDialog>
                )}
              </div>
            );
          })}
      </div>
    </div>
  );
}
```

### `ReadOnlyDecisionCard` — Compact card for horizontal read-only view

**File: `decision/read-only-decision-card.tsx`**

Used in `ReadOnlyCarePlan` where the horizontal layout can't accommodate parallel branch lanes. Shows a single compact card for unresolved decisions. Resolved decisions don't render this at all — their selected branch steps appear as regular `StepCard`s.

```tsx
import { RiGitBranchLine } from "react-icons/ri";
import { cx } from "@/lib/tailwind-utils";
import { CarePlanStep } from "../types";

interface ReadOnlyDecisionCardProps {
  step: CarePlanStep;
  size?: "sm" | "md";
}

export function ReadOnlyDecisionCard({
  step,
  size = "md",
}: ReadOnlyDecisionCardProps) {
  const branches = step.branches ?? [];

  return (
    <div
      className={cx(
        "rounded-lg border border-dashed border-status-warning-text/40 bg-status-warning-bg/30",
        size === "sm" ? "w-48 py-2 px-3" : "w-72 py-3 px-4",
      )}
      data-step-card
    >
      <div className="flex items-center gap-1.5">
        <span className="aspect-square w-4 shrink-0 flex items-center justify-center rounded-md bg-status-warning-bg text-status-warning-text">
          <RiGitBranchLine size={10} />
        </span>
        <span className={cx("font-medium", size === "sm" ? "text-xs" : "text-sm")}>
          Pending decision
        </span>
      </div>
      <p className="mt-1 text-xs text-foreground-muted">
        {branches.length} option{branches.length !== 1 ? "s" : ""}
      </p>
    </div>
  );
}
```

---

## Integration Points — Changes to Existing Components

### `StepList` (`step-list.tsx`)

The timeline rendering logic needs to handle DECISION steps differently. In the read-only `StepList`:

```tsx
// Inside the timelineSteps.map():
{step.type === StepType.DECISION ? (
  <DecisionStep.Root step={step}>
    <DecisionStep.Header />
    <DecisionStep.BranchPicker>
      {(step.branches ?? [])
        .sort((a, b) => a.position - b.position)
        .map((branch) => (
          <DecisionStep.Branch key={branch.id} branch={branch}>
            <DecisionStep.BranchLabel />
            <DecisionStep.BranchStepList renderConnector={renderConnector} />
          </DecisionStep.Branch>
        ))}
    </DecisionStep.BranchPicker>
  </DecisionStep.Root>
) : usePopover ? (
  <StepCardPopover stepId={step.id}>
    <StepCard step={step} />
  </StepCardPopover>
) : (
  <StepCard step={step} />
)}
```

The `timelineSteps` filter already excludes MESSAGE steps. It should NOT exclude DECISION steps — they participate in the timeline.

### `DndStepList` (`dnd-step-list.tsx`)

Same rendering change as `StepList` for DECISION steps. DECISION steps participate in the main timeline's drag-and-drop as a single unit — the entire decision block (header + branches) reorders as one item. Within each branch, `BranchStepList` has its own `DragDropProvider` so branch steps are independently reorderable using the same `SortableStepCard` component.

### `StepDetail` (`step-detail.tsx`)

Add DECISION to the step type routing:

```tsx
const detail =
  selectedStep.type === StepType.MESSAGE ? (
    <MessageStepDetail />
  ) : selectedStep.type === StepType.TASK ? (
    <TaskStepDetail />
  ) : selectedStep.type === StepType.DECISION ? (
    <DecisionStepDetail />
  ) : (
    <AppointmentStepDetail />
  );
```

Add icon and label for DECISION:

```tsx
const typeIcon =
  selectedStep.type === StepType.DECISION ? (
    <RiGitBranchLine size={14} />
  ) : // ... existing icon logic

const typeLabel =
  selectedStep.type === StepType.DECISION
    ? "Decision"
    : // ... existing label logic
```

### `StepDetailLayout` (`step-detail-layout.tsx`)

Same icon/label additions as `StepDetail` above.

### `StepCard` (`step-card.tsx`)

No changes needed. `StepCard` is never rendered for DECISION steps — `StepList`/`DndStepList` render `DecisionStep.Root` instead. The `displayNumber` calculation should also skip DECISION steps (they don't get a number):

```tsx
const displayNumber = isMessage || step.type === StepType.DECISION
  ? 0
  : steps
      .filter((s) => s.type !== StepType.MESSAGE && s.type !== StepType.DECISION)
      .findIndex((s) => s.id === step.id) + 1;
```

### `ReadOnlyCarePlan` (`read-only-care-plan.tsx`)

The `StepList` inside `ReadOnlyCarePlan` uses `detailMode="popover"` and `orientation="horizontal"`. For this view, DECISION steps should render as `ReadOnlyDecisionCard` instead of the full compound component. This is handled in `StepList` by checking if the config is read-only + horizontal:

```tsx
// In StepList, when rendering a DECISION step:
const isCompactReadOnly = readOnly && orientation === "horizontal";

{step.type === StepType.DECISION ? (
  isCompactReadOnly ? (
    // Resolved decisions: backend excludes non-selected branch steps,
    // so selected branch steps are already in timelineSteps as regular StepCards.
    // Only render the card for unresolved decisions.
    !isDecisionResolved(step) && <ReadOnlyDecisionCard step={step} size={size} />
  ) : (
    <DecisionStep.Root step={step}>
      <DecisionStep.Header />
      <DecisionStep.BranchPicker>
        {/* ... branches ... */}
      </DecisionStep.BranchPicker>
    </DecisionStep.Root>
  )
) : (
  <StepCard step={step} />
)}
```

### `use-care-plan-context-value.ts`

The `nextSchedulableStepId` computation should skip steps inside unresolved branches (they're blocked). The `messagesByParentId` map should include branch step messages.

### `types.ts` — `getStepDisplayName`

```tsx
// Add at the top of getStepDisplayName:
if (step.type === StepType.DECISION) {
  return "Decision Point";
}
```

### `types.ts` — `isStepEmpty`

```tsx
// DECISION steps are never "empty" — they always have branches
if (step.type === StepType.DECISION) return false;
```

---

## Branch Step Mutations and Date Recalculation

### The Problem

The existing hooks (`useCarePlan` and `usePatientCarePlan`) operate on a flat step array. Every action — `addStep`, `removeStep`, `moveStep`, `duplicateStep`, `updateStep` — mutates that flat array and calls `recalculatePositions` to re-number steps and re-derive `minutesAfterPrevious` offsets.

With branches, steps live in two places:
1. **Main-path steps** — in the top-level step array (same as today)
2. **Branch steps** — nested inside `branch.steps` arrays on DECISION steps

Every existing action needs a branch-scoped counterpart that operates on `branch.steps` instead of the top-level array. The logic is identical — the only difference is which array you're mutating.

### Branch-Scoped Actions

Each branch action mirrors its main-path equivalent. The pattern is: find the branch by ID (searching recursively through the tree) → mutate `branch.steps` → recalculate within the branch → write the updated tree back.

**`addBranchStep(branchId, type?)`**
- Find the branch, append a new step to `branch.steps`
- Template: set `minutesAfterPrevious` to `DEFAULT_OFFSET_MINUTES`
- Patient: compute `scheduledDate` from the last step in the branch (or the decision step's date if the branch is empty)

**`removeBranchStep(branchId, stepId)`**
- Filter the step (and its child messages) out of `branch.steps`
- Recalculate positions within the branch

**`moveBranchStep(branchId, fromIndex, toIndex)`**
- Reorder within `branch.steps`, same splice logic as `moveStep`
- Template: recalculate step numbers
- Patient: `reorderWithPinnedDates` scoped to the branch

**`updateBranchStep(branchId, stepId, updates)`**
- Map over `branch.steps` to apply the update
- If `scheduledDate` changed: re-sort and recalculate within the branch

**`duplicateBranchStep(branchId, step, atIndex)`**
- Same clone + insert logic as `duplicateStep`, scoped to `branch.steps`

### Implementation in the Hooks — Recursive Tree Updates

The core challenge: a branch can live at any depth in the tree (a DECISION inside a branch inside another DECISION). Every branch action needs a recursive helper that walks the step tree, finds the target branch, applies the mutation, and returns the updated tree.

Both `useCarePlan` and `usePatientCarePlan` share this pattern via a `updateBranchInTree` helper:

```tsx
/**
 * Recursively walk the step tree to find a branch by ID and apply a mutation.
 * Returns a new step array with the branch updated immutably.
 *
 * Works at any nesting depth: step → branch → step → branch → ...
 */
function updateBranchInTree(
  steps: CarePlanStep[],
  branchId: string,
  mutate: (branch: CarePlanBranch, decisionStep: CarePlanStep) => CarePlanBranch,
): CarePlanStep[] {
  return steps.map((step) => {
    if (step.type !== StepType.DECISION) return step;
    const branches = step.branches ?? [];

    // Check if the target branch is a direct child of this DECISION step
    const branchIdx = branches.findIndex((b) => b.id === branchId);
    if (branchIdx !== -1) {
      const updatedBranches = [...branches];
      updatedBranches[branchIdx] = mutate(branches[branchIdx], step);
      return { ...step, branches: updatedBranches };
    }

    // Otherwise, recurse into each branch's steps to find nested DECISION steps
    let changed = false;
    const updatedBranches = branches.map((branch) => {
      const updatedSteps = updateBranchInTree(branch.steps, branchId, mutate);
      if (updatedSteps !== branch.steps) {
        changed = true;
        return { ...branch, steps: updatedSteps };
      }
      return branch;
    });

    return changed ? { ...step, branches: updatedBranches } : step;
  });
}
```

All branch actions use this helper:

```tsx
const addBranchStep = useCallback(
  (branchId: string, type?: StepType) => {
    stableSetSteps((prev) =>
      updateBranchInTree(prev, branchId, (branch, decisionStep) => {
        const lastBranchStep = [...branch.steps]
          .reverse()
          .find((s) => s.type !== StepType.MESSAGE);
        const anchorDate = lastBranchStep
          ? new Date(lastBranchStep.scheduledDate)
          : new Date(decisionStep.scheduledDate);

        const newStep = createDefaultStep(branch.steps.length + 1, type);
        newStep.scheduledDate = new Date(
          anchorDate.getTime() + DEFAULT_OFFSET_MINUTES * 60_000,
        ).toISOString();
        newStep.branchId = branchId;

        return {
          ...branch,
          steps: recalculatePositions([...branch.steps, newStep]),
        };
      }),
    );
  },
  [stableSetSteps],
);

const moveBranchStep = useCallback(
  (branchId: string, fromIndex: number, toIndex: number) => {
    stableSetSteps((prev) =>
      updateBranchInTree(prev, branchId, (branch) => {
        const timeline = branch.steps.filter((s) => s.type !== StepType.MESSAGE);
        // ... same reorder + rebuild logic as moveStep ...
        return { ...branch, steps: reorderWithPinnedDates(result) };
      }),
    );
  },
  [stableSetSteps],
);

// removeBranchStep, updateBranchStep, duplicateBranchStep all follow the same pattern
```

The `updateBranchInTree` helper handles any nesting depth. A branch action targeting a branch 3 levels deep works identically to one targeting a top-level branch — the recursion walks until it finds the `branchId`, applies the mutation, and immutably rebuilds the path back to the root.

### What Happens to Downstream Dates and Estimated Date Display

#### How estimated dates work today

The `isDateEstimated` flag is computed **server-side** in `_step_to_schema`: a step's date is marked estimated when its preceding appointment step hasn't reached a terminal status (COMPLETED/SKIPPED). The frontend reads this flag and renders the `~` prefix with muted styling. The frontend does **not** compute which dates are estimated — it trusts the backend.

The `_recalculate_downstream_dates` backend method handles cascading date shifts: when an appointment step is scheduled, rescheduled, or completed, the backend walks downstream steps (scoped by branch — it checks `branch_id` to avoid leaking across branches) and recomputes their `scheduled_date` from `minutes_after_previous`.

#### How this applies to branches

**Template editing:** No dates exist. Template steps only have `minutesAfterPrevious` offsets. Adding a branch step just sets its offset within the branch. No downstream impact on the frontend — date computation happens server-side when the template is applied to a patient.

**Patient care plan — unresolved decision:**

The backend computes all dates and `isDateEstimated` flags. Main-path steps after an unresolved DECISION will have `isDateEstimated: true` because the decision step (which acts as their predecessor in the progression chain) hasn't reached a terminal status. The frontend renders these with `~` prefix and muted styling, same as today.

When the user adds/removes/reorders steps within a branch **on the frontend** (before saving), only the branch's internal dates change. The main-path steps' estimated dates don't shift client-side because:
1. Those dates are already estimates — they'll be recalculated by the backend on save
2. The frontend doesn't know which branch will be selected, so it can't predict the correct downstream anchor

After the user saves (PUT steps), the backend recalculates all dates and the response comes back with updated `scheduledDate` and `isDateEstimated` values.

**Patient care plan — resolved decision:**

The selected branch's steps have been promoted into the main-path step array by the backend. They have real `scheduledDate` values and participate in `_recalculate_downstream_dates` normally. Adding a step to the resolved branch on the frontend uses the existing `addStep` / `recalculatePositions` logic on the flat timeline — downstream dates shift immediately on the client, same as today.

**Within-branch estimated dates:**

Branch steps also have dates and `isDateEstimated` flags. A branch step's date is estimated if its preceding appointment step within the branch hasn't completed. The `~` prefix rendering in `StepCard` works identically for branch steps — no special handling needed since `StepCard` only reads `isDateEstimated` from the step object.

#### Summary

| Scenario | Who computes dates | Frontend behavior |
|---|---|---|
| Template editing | N/A (no dates) | Show `minutesAfterPrevious` offsets only |
| Patient, unresolved, within-branch mutation | Backend on save | Branch dates recalculated client-side; main-path estimated dates unchanged until save response |
| Patient, resolved, within-branch mutation | Frontend (existing logic) | Same as main-path step mutation — `recalculatePositions` shifts downstream dates |
| Patient, branch selection | Backend (via `select_branch` API) | Full date recalculation server-side; response updates all dates + `isDateEstimated` flags |
| Step scheduling/completion | Backend (`_recalculate_downstream_dates`) | Response updates downstream dates, scoped by `branch_id` |

### `selectedStep` Lookup

Currently `selectedStep` is found by searching the top-level step array:

```tsx
const selectedStep = steps.find((s) => s.id === selectedStepId) ?? null;
```

This won't find branch steps since they're nested inside DECISION steps. The lookup needs to also search `branch.steps`:

```tsx
function findStep(steps: CarePlanStep[], id: string): CarePlanStep | null {
  for (const step of steps) {
    if (step.id === id) return step;
    if (step.type === StepType.DECISION) {
      for (const branch of step.branches ?? []) {
        // Recurse into branch steps — handles nested DECISION steps
        const found = findStep(branch.steps, id);
        if (found) return found;
      }
    }
  }
  return null;
}

const selectedStep = findStep(steps, selectedStepId) ?? null;
```

This recurses through the full tree: step → branch → step → branch → ... at any depth. A step inside a nested branch (a DECISION inside a branch that's inside another DECISION) is found the same way as a top-level step. This is needed so that clicking a `StepCard` inside any `BranchStepList` opens it in the sidebar detail panel.

### `messagesByParentId` Lookup

The `useCarePlanContextValue` hook builds a `messagesByParentId` map from the top-level step array. It also needs to include messages from branch steps:

```tsx
const messagesByParentId = useMemo(() => {
  const map = new Map<string, CarePlanStep[]>();

  // Recurse through all steps at any nesting depth
  const walk = (stepList: CarePlanStep[]) => {
    for (const step of stepList) {
      if (step.type === StepType.MESSAGE && step.parentStepId) {
        const list = map.get(step.parentStepId) ?? [];
        list.push(step);
        map.set(step.parentStepId, list);
      }
      if (step.type === StepType.DECISION) {
        for (const branch of step.branches ?? []) {
          walk(branch.steps);
        }
      }
    }
  };

  walk(steps);
  return map;
}, [steps]);
```

---

## How Step Data Flows

### Unresolved decision

The API returns all steps including all branch steps. The frontend step list contains:

```
[
  { id: "s1", type: "APPOINTMENT", branchId: null },
  { id: "s2", type: "APPOINTMENT", branchId: null },
  { id: "s3", type: "DECISION",   branchId: null, branches: [
    { id: "b1", steps: [{ id: "s4", ... }, { id: "s5", ... }] },
    { id: "b2", steps: [{ id: "s6", ... }, { id: "s7", ... }] },
  ]},
  { id: "s8", type: "APPOINTMENT", branchId: null },  // blocked
]
```

Branch steps (`s4`–`s7`) are **nested inside their branch objects**, not in the top-level step array. The `StepList` iterates the top-level array and renders `DecisionStep.Root` when it encounters the DECISION step, which uses `step.branches[].steps` to render previews.

### Resolved decision

After branch `b1` is selected:

```
[
  { id: "s1", type: "APPOINTMENT", branchId: null },
  { id: "s2", type: "APPOINTMENT", branchId: null },
  { id: "s3", type: "DECISION",   branchId: null, branches: [
    { id: "b1", selectedDate: "2026-03-27T...", steps: [...] },
    { id: "b2", steps: [...] },  // steps are SKIPPED
  ]},
  { id: "s4", type: "APPOINTMENT", branchId: "b1" },  // promoted
  { id: "s5", type: "APPOINTMENT", branchId: "b1" },  // promoted
  { id: "s8", type: "APPOINTMENT", branchId: null },   // unblocked
]
```

Selected branch steps are promoted to the top-level array by the backend (or by `toPatientSteps` mapping). Non-selected branch steps (SKIPPED) are excluded from the top-level array. The timeline renders them as regular `StepCard`s — no special handling needed.

**The `isResolved` check on the frontend:**

```tsx
function isDecisionResolved(step: CarePlanStep): boolean {
  return (step.branches ?? []).some((b) => !!b.selectedDate);
}
```

---

## Drag-and-Drop Behavior

- **Main timeline:** DECISION steps are draggable as a single unit in `DndStepList`. The entire block (header + branch picker) reorders as one item.
- **Within-branch reordering:** Each branch lane renders a `BranchStepList` with its own `DragDropProvider`. Steps within a branch are draggable using the same `SortableStepCard` as the main timeline. Reordering calls `moveBranchStep(branchId, fromIndex, toIndex)` which reorders steps within `branch.steps` — identical logic to `moveStep`, just scoped to the branch array. Each `DragDropProvider` is isolated, so a drag operation stays within its branch.
- **Cross-branch dragging:** Not supported. Each branch has its own `DragDropProvider` scope, so steps cannot be dragged between branches or from the main path into a branch.

---

## Nested Branches

A branch can contain a DECISION step, which itself has branches with steps. This creates a tree: step → branch → step (DECISION) → branch → step → ...

### Why It Works Without Special Handling

The component architecture is naturally recursive:

1. **`BranchStepList`** renders `StepCard`s for each step in a branch
2. When it hits a `StepType.DECISION`, the same rendering logic in `StepList`/`DndStepList` kicks in — it renders `DecisionStep.Root` → `BranchPicker` → `Branch` → `BranchStepList` → ...
3. Each level gets its own `DecisionStepContext` provider and `BranchContext` provider
4. Each `BranchStepList` gets its own `DragDropProvider` for isolated DnD

No component knows or cares how deep it is. A `StepCard` inside a 3-level nested branch works identically to one on the main path.

### What Needs Recursive Implementation

The components are naturally recursive, but the **data helpers and actions** need explicit recursion:

| Concern | Where | What changes |
|---|---|---|
| Find a step by ID | `findStep` in hooks | Recurse into `branch.steps` (already shown above) |
| Find a branch by ID | `updateBranchInTree` helper | Recurse into nested DECISION steps within branches (already shown above) |
| Collect messages | `messagesByParentId` in context | `walk()` recurses into branch steps (already shown above) |
| Branch-scoped actions | `addBranchStep`, `moveBranchStep`, etc. | All use `updateBranchInTree` which handles any depth |

### Context Provider Nesting

Each DECISION step creates a `DecisionStepContext` provider. With nesting:

```
CarePlanContext (root)
  └── DecisionStepContext (outer decision)
        └── BranchContext (outer branch A)
              └── DecisionStepContext (inner decision)
                    └── BranchContext (inner branch X)
```

`useDecisionStep()` always returns the **nearest** `DecisionStepContext` — the one directly wrapping the component. A `BranchLabel` inside the inner decision reads from the inner `DecisionStepContext`, not the outer one. This is standard React context scoping and requires no special handling.

`useCarePlanContext()` always returns the **root** care plan context — there's only one, and all components at every nesting depth share it for lookups, config, and actions.

### Rendering Example — Nested Unresolved Decision

```
<StepList>
  <StepCard step={step1} />
  <DateConnector />

  <DecisionStep.Root step={outerDecision}>           ← outer DecisionStepContext
    <DecisionStep.Header />
    <DecisionStep.BranchPicker>

      <DecisionStep.Branch branch={branchA}>          ← outer BranchContext
        <DecisionStep.BranchLabel />
        <DecisionStep.BranchStepList>
          <StepCard step={branchA_step1} />
          <DateConnector />

          <DecisionStep.Root step={innerDecision}>    ← inner DecisionStepContext
            <DecisionStep.Header />
            <DecisionStep.BranchPicker>
              <DecisionStep.Branch branch={branchX}>  ← inner BranchContext
                <DecisionStep.BranchLabel />
                <DecisionStep.BranchStepList>
                  <StepCard step={branchX_step1} />
                </DecisionStep.BranchStepList>
              </DecisionStep.Branch>
              <DecisionStep.Branch branch={branchY}>
                ...
              </DecisionStep.Branch>
            </DecisionStep.BranchPicker>
          </DecisionStep.Root>

        </DecisionStep.BranchStepList>
      </DecisionStep.Branch>

      <DecisionStep.Branch branch={branchB}>
        ...
      </DecisionStep.Branch>

    </DecisionStep.BranchPicker>
  </DecisionStep.Root>

  <DateConnector />
  <StepCard step={step5} />
</StepList>
```

### After Nested Resolution

When the outer branch is selected, its steps (including the inner DECISION) promote to the main timeline. The inner DECISION then renders as a regular DECISION step in the main timeline — it's no longer nested. Its branches fan out just like a top-level DECISION.

When both are resolved, all steps are flat in the main timeline:

```
<StepCard step={step1} />
<DecisionStep.Header />  ← "Selected: Branch A"
<StepCard step={branchA_step1} />
<DecisionStep.Header />  ← "Selected: Branch X"
<StepCard step={branchX_step1} />
<StepCard step={step5} />
```

---

## Blocked Step Rendering

Steps after an unresolved DECISION are blocked by the backend (they remain PENDING with estimated dates). The existing `StepCard` already renders estimated-date steps with muted styling (`text-foreground-muted`, `~` prefix). No additional blocked-state styling is needed — the existing visual language communicates "this hasn't been scheduled yet" clearly.

If we want a stronger blocked signal, we can add an `isBlocked` field to the step data and render those cards with reduced opacity + a tooltip: _"Waiting for decision above"_. This is a nice-to-have for a follow-up.

---

## Composition Pattern Mapping

| Pattern | Application |
|---|---|
| **Avoid boolean props** (section 1.1) | No `isDecision`, `hasBranches`, `showBranchPicker` on `StepCard` or `StepList`. DECISION steps render a completely different component tree via the `step.type` switch |
| **Compound components** (section 1.2) | `DecisionStep.{Root, Header, BranchPicker, Branch, BranchLabel, BranchStepList}` — consumers compose exactly what they need for each view context |
| **Decouple state from UI** (section 2.1) | `DecisionStepContext` provides `{ state, actions, meta }` — UI components don't know whether `selectBranch` calls a REST API or updates local state |
| **Generic context interface** (section 2.2) | Both `DecisionStepContextValue` and `BranchContextValue` follow the `state/actions/meta` shape, consistent with the parent `CarePlanContextType` pattern |
| **Lift state into provider** (section 2.3) | `DecisionStep.Root` is the provider boundary — `Header`, `BranchPicker`, and `Branch` are siblings that share decision state via context, not props |
| **Explicit variants** (section 3.1) | `DecisionStepHeader` vs `StepCard` vs `ReadOnlyDecisionCard` — three explicit variants instead of one component with mode flags |
| **Children over render props** (section 3.2) | `BranchPicker` takes `children`, `DecisionStep.Root` takes `children` — no `renderBranch` or `renderHeader` callbacks |

---

## Verification Plan

1. **Unresolved decision in vertical full-screen view**: DECISION card renders with branch picker below showing all options side by side. Clicking a branch card selects the decision step in the sidebar. Steps after the decision appear with estimated dates.
2. **Branch selection flow**: Click "Select this path" in sidebar → confirmation dialog shows step list and warns about skipping other branches → confirm → branch steps promote into timeline, non-selected branches disappear, decision card shows "Selected: [name]".
3. **Resolved decision in vertical view**: Decision card shows selected branch name. Branch steps render as regular `StepCard`s below it. No branch picker visible.
4. **Read-only horizontal view (unresolved)**: Single compact card with dashed border: "Pending decision — 3 options". No branch fan-out.
5. **Read-only horizontal view (resolved)**: No decision card visible. Selected branch steps render as regular `StepCard`s in the horizontal strip.
6. **Drag-and-drop**: Decision block reorders as a single unit. Branch steps are not individually draggable.
7. **Nested decisions**: A branch containing a DECISION step renders its own `DecisionStep.Root` within the `BranchStepList`. Verify: `useDecisionStep()` returns the inner context (not the outer), `findStep` finds steps at any depth, `addBranchStep` targeting the inner branch works via `updateBranchInTree`, each `DragDropProvider` is isolated so inner branch DnD doesn't interfere with outer. After the outer branch is selected and steps promote to the timeline, the inner DECISION renders as a regular top-level DECISION step.
8. **Template editor**: Same as patient view but without dates, statuses, or selection (branches are defined, not selected, during template editing). The branch picker shows the branch structure for editing.
