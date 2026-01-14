# Scribe Playground Page - User Actions Guide

## Overview

The Scribe Playground is the main note editing interface supporting three creation methods: AI-generated from audio transcription, manual text entry, or upload from documents/images. Includes rich text editing, AI chat for modifications, medical code assignment, and version history.

---

## Note Types

### AI Note (Recording)

Record audio, get transcription, generate AI note.

### Manual Note

Write note content directly in editor.

### Upload Note

Generate note from uploaded images/PDFs.

---

## Available Actions - AI Note

### 1. Start/Resume Recording

**Purpose:** Capture audio for transcription.

**Step-by-Step Instructions:**

1. **Navigate to AI Note**
   - Or create new AI note from list

2. **Check microphone permission**
   - Warning shown if not granted

3. **Recording starts automatically**
   - Or use PiP controls

4. **Audio transcribed in real-time**

---

### 2. Generate AI Note

**Purpose:** Create structured note from transcript.

**Step-by-Step Instructions:**

1. **Complete or pause recording**

2. **Click "Generate AI Note" button**
   - Large purple/blue gradient button

3. **Select template (if not chosen)**
   - Modal prompts for template

4. **Wait for generation**
   - "Generating Note..." displayed
   - Can leave page and return

5. **Review generated content**
   - Switches to Note tab

---

### 3. Select Note Template

**Purpose:** Choose format for generated note.

**Step-by-Step Instructions:**

1. **Locate template dropdown**
   - "Select a Note Template"

2. **Click dropdown**

3. **Search for template**

4. **Select template**
   - Will be used for generation

---

### 4. View Transcript

**Purpose:** See transcribed audio text.

**Step-by-Step Instructions:**

1. **Click "Transcript" tab**

2. **View transcribed content**
   - Read-only display

3. **Copy or reference**
   - Using action bar

---

### 5. Chat with AI to Modify Note

**Purpose:** Ask AI to change generated note.

**Step-by-Step Instructions:**

1. **After note is generated**

2. **Locate chat input**
   - Bottom of note editor

3. **Type modification request:**
   - "Make this more concise"
   - "Add more detail about symptoms"
   - "Format as bullet points"

4. **Press Enter or click send**

5. **New version created**
   - Navigated to new revision

---

### 6. Save Note Changes

**Purpose:** Save manual edits to content.

**Step-by-Step Instructions:**

1. **Edit note in text editor**

2. **"Save" button activates**
   - In action bar

3. **Click Save**

4. **New version created**
   - Previous version preserved

---

### 7. Sign Off Note

**Purpose:** Finalize and lock note.

**Step-by-Step Instructions:**

1. **With generated note content**

2. **Click "Sign off" button**
   - If you have permission

3. **Note marked as signed off**
   - Cannot be edited further

---

### 8. View Note Versions

**Purpose:** See edit history.

**Step-by-Step Instructions:**

1. **Note shows version number**

2. **Navigate between versions**
   - Via version selector

3. **Previous versions read-only**

4. **Alert shown when viewing old version**

---

## Available Actions - Manual Note

### 9. Write Note Content

**Purpose:** Enter note manually.

**Step-by-Step Instructions:**

1. **Navigate to Manual Note**

2. **Click in editor**

3. **Type note content**
   - Rich text formatting available

4. **Use "/" for templates/suggestions**

5. **Save when complete**

---

### 10. Apply Template to Note

**Purpose:** Start from template content.

**Step-by-Step Instructions:**

1. **Click "Start from a Template"**
   - In action bar

2. **Select template from modal**

3. **Template content inserted**
   - Replaces current content

4. **Edit as needed**

---

## Available Actions - Upload Note

### 11. Upload Documents/Images

**Purpose:** Generate note from files.

**Step-by-Step Instructions:**

1. **Navigate to Upload Note**

2. **Drag and drop files**
   - Or click "Select File"

3. **Supported formats:**
   - JPEG, PNG, HEIC images
   - PDF documents
   - Word documents (DOCX)

4. **Files up to 10MB**
   - Large images auto-compressed

---

### 12. Add Multiple Files

**Purpose:** Upload several documents.

**Step-by-Step Instructions:**

1. **After initial upload**

2. **Click "Add More Files"**

3. **Select additional files**

4. **All files processed together**

---

### 13. Skip AI Processing

**Purpose:** Attach files without analysis.

**Step-by-Step Instructions:**

1. **After selecting files**

2. **Check "Skip AI processing"**

3. **Files attached as-is**
   - No content extraction

---

### 14. Generate Note from Upload

**Purpose:** AI analyzes and creates note.

**Step-by-Step Instructions:**

1. **Select files**

2. **Select template (required)**

3. **Ensure "Skip AI processing" unchecked**

4. **Click "Generate Note"**

5. **AI extracts:**
   - Medications
   - Vital signs
   - Clinical notes

---

## Common Actions - All Note Types

### 15. View/Add Attachments

**Purpose:** Manage note files.

**Step-by-Step Instructions:**

1. **Click "Attachments" tab**

2. **View existing attachments**

3. **Upload new files**
   - If note owner

---

### 16. Manage Medical Codes

**Purpose:** Assign ICD-10 and CPT codes.

**Step-by-Step Instructions:**

1. **Click "Codes" tab**
   - If SCRIBE_MEDICAL_CODES enabled

2. **Search and add ICD-10 codes**
   - Diagnosis codes

3. **Search and add CPT codes**
   - Procedure codes

4. **Save with note**

---

### 17. View Source Documents

**Purpose:** See documents note was generated from.

**Step-by-Step Instructions:**

1. **If note has source documents**

2. **View list above note content**

3. **Click to view original**

---

### 18. Copy Note Content

**Purpose:** Copy text to clipboard.

**Step-by-Step Instructions:**

1. **Use action bar**
   - Copy button

2. **Content copied**

---

## Tabs Available

| Tab | Shows | When Available |
|-----|-------|----------------|
| Clinician's Note | Generated/written content | After content exists |
| Transcript | Audio transcription | AI notes with recording |
| Note Template | Template structure | All notes |
| Attachments | Files and images | All notes |
| Codes | ICD-10/CPT codes | If module enabled |

---

## Note States

| State | Meaning |
|-------|---------|
| Recording | Audio being captured |
| Processing | Audio being saved |
| Paused | Recording paused, can resume |
| Complete | Note generated/saved |
| Signed Off | Finalized, no edits |

---

## Version History

- Each save creates new version
- Previous versions preserved
- Can view but not edit old versions
- Latest version is editable

---

## Weight Loss Clinic Features

For weight loss clinics:
- Weight detection from notes
- Progress charts displayed
- Medication tracking

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Create notes | ✓ | ✓ | ✓ |
| Edit own notes | ✓ | ✓ | ✓ |
| Sign off notes | ✓ | ✓ | ✗ |
| Assign codes | ✓ | ✓ | ✓ |
| View others' notes | ✓ | ✓ | ✓ |
| Edit others' notes | ✗ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Can't edit note | Check if you're the owner |
| Generation failed | Check transcript exists |
| Template not applying | Select template first |
| Mic not working | Check browser permissions |
| Upload too large | File exceeds 10MB limit |
| Chat not responding | Wait for previous request |
| Viewing old version | Switch to latest version |
