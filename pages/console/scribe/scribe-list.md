# Scribe List Page - User Actions Guide

## Overview

The Scribe List page displays all AI-generated medical notes and transcriptions. Providers can view, edit, finalize, and manage scribe recordings and the notes generated from them.

---

## Available Actions

### 1. View All Scribe Notes

**Purpose:** Browse all scribe recordings and notes.

**Step-by-Step Instructions:**

1. **Navigate to Scribe**
   - Click "Scribe" in navigation

2. **View notes table**
   - Each entry shows:
     - Patient name
     - Summary (note preview or "In Progress")
     - Contributors (providers)
     - Template used
     - Date (visit date and last edited)
     - Actions menu

---

### 2. Filter Notes

**Purpose:** Find specific notes.

**Step-by-Step Instructions:**

**Available filters:**
   - **Note ID:** Search by note ID
   - **Patient Name:** Search by patient name
   - **Patient ID:** Search by patient ID
   - **Provider:** Select from provider list
   - **Locations:** Filter by location
   - **Template:** Filter by note template
   - **Created Date:** Filter by date range

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

### 8. Resume Incomplete Note

**Purpose:** Continue recording an incomplete AI note.

**Step-by-Step Instructions:**

1. **Find incomplete AI note**
   - Shows "In Progress" status

2. **Click "Resume" in actions menu**
   - Recording interface opens
   - Continue from where you left off

3. **Complete recording**
   - Note generates when finished

---

### 9. Print Note

**Purpose:** Print note as document.

**Step-by-Step Instructions:**

1. **Open note**

2. **Click "Print" in actions menu**

3. **Print dialog opens**
   - Select printer
   - Configure settings

4. **Print document**

---

### 10. View Linked Appointment

**Purpose:** Navigate to the appointment associated with a note.

**Step-by-Step Instructions:**

1. **Find note linked to appointment**

2. **Click "View Appointment" in actions menu**
   - Only available if note is linked to an appointment

3. **Navigates to appointment details**

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

### 12. Create New Note

**Purpose:** Begin a new scribe note.

**Step-by-Step Instructions:**

1. **Click "New Note" button**
   - Dropdown appears with note types

2. **Select note type:**
   - **AI Note:** AI-assisted transcription
   - **Manual Note:** Fill out template manually
   - **Upload Note:** Upload existing documentation

3. **Select patient**
   - Required for all note types

4. **For Manual Notes:**
   - Select a note template

5. **Click "Create Note"**
   - Note creation begins

---

## Note Types

| Type | Description |
|------|-------------|
| AI Note | AI-assisted transcription from recording |
| Manual Note | Manually completed using a template |
| Upload Note | Uploaded from external documentation |

## Note Status

| Status | Meaning |
|--------|---------|
| In Progress | Note incomplete/recording in progress |
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
