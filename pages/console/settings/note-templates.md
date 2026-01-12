# Note Templates Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/note-templates/page.tsx`
**Route:** `/[tenant]/settings/note-templates`

---

## Overview

The Note Templates page manages reusable templates for AI Scribe notes. Templates define the structure and format for auto-generated clinical notes.

---

## Available Actions

### 1. View All Templates

**Purpose:** Browse note templates.

**Step-by-Step Instructions:**

1. **Navigate to Note Templates**
   - Settings → Note Templates

2. **View template table:**
   - Template ID
   - Name
   - Content preview
   - Created date

---

### 2. Create Note Template

**Purpose:** Add new template.

**Step-by-Step Instructions:**

1. **Click "Create Note Template"**
   - Top right

2. **Enter template name**

3. **Enter content template**
   - Use placeholders for dynamic content
   - Structure the note format

4. **Save template**

---

### 3. Edit Template

**Purpose:** Modify existing template.

**Step-by-Step Instructions:**

1. **Find template in table**

2. **Click menu (three dots)**

3. **Select "Edit"**

4. **Modify name/content**

5. **Save changes**

---

### 4. Delete Template

**Purpose:** Remove a template.

**Step-by-Step Instructions:**

1. **Click menu (three dots)**

2. **Select "Delete"**

3. **Confirm deletion**

4. **Template removed**

---

### 5. Sort Templates

**Purpose:** Organize template list.

**Step-by-Step Instructions:**

1. **Click column header**
   - Name or Created Date

2. **Toggle sort direction**

---

### 6. Navigate Pages

**Purpose:** Browse many templates.

**Step-by-Step Instructions:**

1. **View pagination**

2. **Click Previous/Next**

3. **Page through templates**

---

## Template Structure

Templates typically include:
- Chief Complaint
- History of Present Illness
- Assessment
- Plan
- Notes

---

## Placeholders

Use placeholders for dynamic content:
- Patient information
- Date/time
- Provider notes

---

## Usage

Templates used in:
- AI Scribe note generation
- Manual note creation
- Upload note processing

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View templates | ✓ | ✓ | ✓ |
| Create template | ✓ | ✓ | ✗ |
| Edit template | ✓ | ✓ | ✗ |
| Delete template | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Template not appearing in Scribe | Refresh template list |
| Content too long | Template preview truncated |
| Can't delete | Check if in use |
