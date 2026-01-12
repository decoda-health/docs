# Scribe List Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/scribe/(list)/page.tsx`
**Route:** `/[tenant]/scribe`

---

## Overview

The Scribe List page displays all AI-generated medical notes and transcriptions. Providers can view, edit, finalize, and manage scribe recordings and the notes generated from them.

---

## Available Actions

### 1. View All Scribe Notes

**Purpose:** Browse all scribe recordings and notes.

**Step-by-Step Instructions:**

1. **Navigate to Scribe**
   - Click "Scribe" in navigation

2. **View notes list**
   - Each entry shows:
     - Patient name
     - Date/time
     - Provider
     - Status (draft/finalized)
     - Note preview

---

### 2. Filter Notes

**Purpose:** Find specific notes.

**Step-by-Step Instructions:**

1. **By Date Range:**
   - Select start/end dates
   - View notes in range

2. **By Provider:**
   - Select provider name
   - See only their notes

3. **By Patient:**
   - Search patient name
   - View their notes

4. **By Status:**
   - Draft, Finalized, etc.

---

### 3. Search Notes

**Purpose:** Find notes by content.

**Step-by-Step Instructions:**

1. **Enter search term**
   - Patient name
   - Keywords
   - Diagnosis

2. **View matching notes**
   - Results filtered

---

### 4. View Note Details

**Purpose:** Read full note content.

**Step-by-Step Instructions:**

1. **Click on note row**
   - Opens note detail view

2. **View sections:**
   - Chief complaint
   - History
   - Assessment
   - Plan
   - Full transcript (if available)

---

### 5. Play Recording

**Purpose:** Listen to original audio.

**Step-by-Step Instructions:**

1. **Find note with recording**
   - Audio icon indicates recording

2. **Click play button**
   - Audio player opens

3. **Control playback:**
   - Play/pause
   - Seek to position
   - Adjust speed
   - Adjust volume

---

### 6. Edit Note

**Purpose:** Modify AI-generated content.

**Step-by-Step Instructions:**

1. **Open note**

2. **Click "Edit"**
   - Note becomes editable

3. **Modify content:**
   - Fix errors
   - Add details
   - Reorganize sections

4. **Save changes**
   - Note updated

---

### 7. Finalize Note

**Purpose:** Mark note as complete.

**Step-by-Step Instructions:**

1. **Review note content**
   - Verify accuracy

2. **Click "Finalize"**
   - Confirmation prompt

3. **Confirm finalization**
   - Note locked from editing
   - Status changes to "Finalized"

---

### 8. Link Note to Patient

**Purpose:** Associate note with patient record.

**Step-by-Step Instructions:**

1. **Open note**

2. **Click "Link Patient"**
   - Patient search appears

3. **Search for patient**
   - Enter name or phone

4. **Select patient**
   - Note attached to their record

---

### 9. Link Note to Appointment

**Purpose:** Associate note with specific visit.

**Step-by-Step Instructions:**

1. **Open note**

2. **Click "Link Appointment"**
   - Appointment list appears

3. **Select appointment**
   - From patient's appointments

4. **Confirm link**
   - Note attached to visit

---

### 10. Export Note

**Purpose:** Download note as document.

**Step-by-Step Instructions:**

1. **Open note**

2. **Click "Export"**

3. **Select format:**
   - PDF
   - Word document
   - Text file

4. **Download file**

---

### 11. Delete Note

**Purpose:** Remove a scribe note.

**Step-by-Step Instructions:**

1. **Find note to delete**

2. **Click delete option**
   - In actions menu

3. **Confirm deletion**
   - Note permanently removed

---

### 12. Start New Recording

**Purpose:** Begin new scribe session.

**Step-by-Step Instructions:**

1. **Click "New Recording"**
   - Recording interface opens

2. **Select patient (optional)**
   - Link recording to patient

3. **Start recording**
   - Speak clearly
   - AI transcribes in real-time

4. **Stop recording**
   - Processing begins
   - Note generated

---

## Note Status

| Status | Meaning |
|--------|---------|
| Recording | Currently recording |
| Processing | AI generating note |
| Draft | Note ready for review |
| Finalized | Note complete and locked |

---

## Note Sections

Typical AI-generated note includes:
- Chief Complaint
- History of Present Illness
- Review of Systems
- Physical Examination
- Assessment
- Plan
- Follow-up

---

## Permissions

| Action | Admin | Manager | Provider | Staff |
|--------|-------|---------|----------|-------|
| View notes | ✓ | ✓ | Own | ✗ |
| Edit notes | ✓ | ✓ | Own | ✗ |
| Delete notes | ✓ | ✗ | Own | ✗ |
| Finalize notes | ✓ | ✓ | Own | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Recording not working | Check microphone permissions |
| Note generation failed | Retry, check audio quality |
| Can't edit note | May be finalized |
| Audio won't play | Check browser audio settings |
