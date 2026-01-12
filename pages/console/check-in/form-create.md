# Create Consent Form Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/check-in/forms/create-consent/page.tsx`
**Route:** `/[tenant]/check-in/forms/create-consent`

---

## Overview

The Create Consent Form page provides a form builder interface for creating new intake and consent forms. Users can add various field types, configure conditional logic, and set up signature requirements.

---

## Available Actions

### 1. Set Form Title

**Purpose:** Name your form for identification.

**Step-by-Step Instructions:**

1. **Locate title field**
   - At the top of the form builder
   - Placeholder: "Form Title"

2. **Enter form name**
   - Type descriptive title
   - E.g., "HIPAA Consent Form"
   - E.g., "New Patient Intake"

---

### 2. Add Form Description

**Purpose:** Provide context for patients filling out the form.

**Step-by-Step Instructions:**

1. **Locate description field**
   - Below the title
   - Larger text area

2. **Enter description**
   - Explain form's purpose
   - Include any instructions
   - Visible to patients

---

### 3. Add Text Question

**Purpose:** Collect short text responses.

**Step-by-Step Instructions:**

1. **Click "Add Field" or "+"**
   - Opens field type selector

2. **Select "Text" field type**
   - Single-line text input

3. **Configure field:**
   - **Label:** Question text
   - **Placeholder:** Example text
   - **Required:** Toggle on/off
   - **Help text:** Additional guidance

4. **Save field**
   - Field appears in form preview

---

### 4. Add Long Text/Textarea

**Purpose:** Collect detailed text responses.

**Step-by-Step Instructions:**

1. **Add new field**
   - Click "+" or "Add Field"

2. **Select "Textarea" or "Long Text"**

3. **Configure:**
   - Label and placeholder
   - Required toggle
   - Min/max character limits

---

### 5. Add Multiple Choice Question

**Purpose:** Let patients select from predefined options.

**Step-by-Step Instructions:**

1. **Add new field**

2. **Select field type:**
   - "Radio" for single selection
   - "Checkbox" for multiple selections
   - "Dropdown" for select menu

3. **Add options:**
   - Click "Add Option"
   - Enter option text
   - Repeat for each option
   - Drag to reorder

4. **Configure:**
   - Required toggle
   - "Other" option toggle

---

### 6. Add Date Field

**Purpose:** Collect date information.

**Step-by-Step Instructions:**

1. **Add new field**

2. **Select "Date" type**

3. **Configure:**
   - Label (e.g., "Date of Birth")
   - Required toggle
   - Date format preference
   - Min/max date restrictions

---

### 7. Add Signature Field

**Purpose:** Capture electronic signatures.

**Step-by-Step Instructions:**

1. **Add new field**

2. **Select "Signature" type**

3. **Configure:**
   - Label (e.g., "Patient Signature")
   - Required toggle
   - Clear instructions for signing

---

### 8. Add File Upload Field

**Purpose:** Allow patients to upload documents.

**Step-by-Step Instructions:**

1. **Add new field**

2. **Select "File Upload" type**

3. **Configure:**
   - Label
   - Accepted file types (PDF, images, etc.)
   - Max file size
   - Multiple files toggle

---

### 9. Add Section Header

**Purpose:** Organize form into logical sections.

**Step-by-Step Instructions:**

1. **Add new field**

2. **Select "Section" or "Header"**

3. **Configure:**
   - Section title
   - Description text
   - Visual styling

---

### 10. Reorder Fields

**Purpose:** Change the order of form fields.

**Step-by-Step Instructions:**

1. **Locate drag handle**
   - Usually on left side of field
   - Six dots icon

2. **Click and drag**
   - Hold mouse/touch
   - Drag to new position

3. **Drop to place**
   - Release to set position
   - Form reorders

---

### 11. Delete a Field

**Purpose:** Remove a field from the form.

**Step-by-Step Instructions:**

1. **Locate delete button**
   - Trash icon on field
   - Or in field menu

2. **Click delete**
   - Confirmation may appear

3. **Confirm deletion**
   - Field removed from form

---

### 12. Set Up Conditional Logic

**Purpose:** Show/hide fields based on answers.

**Step-by-Step Instructions:**

1. **Select field to control**
   - Click on the field

2. **Open conditional settings**
   - "Logic" or "Conditions" tab

3. **Configure condition:**
   - "Show this field when..."
   - Select triggering field
   - Select operator (equals, contains, etc.)
   - Select triggering value

4. **Save condition**
   - Field now shows conditionally

**Example:**
- Show "Describe allergies" field
- When "Do you have allergies?" equals "Yes"

---

### 13. Preview Form

**Purpose:** See how the form looks to patients.

**Step-by-Step Instructions:**

1. **Click "Preview" button**
   - Usually in header

2. **View form as patient sees it**
   - All fields displayed
   - Conditional logic works

3. **Test interactions**
   - Fill out fields
   - Test conditional logic
   - Check mobile view

4. **Exit preview**
   - Click "Edit" or close

---

### 14. Save Form as Draft

**Purpose:** Save progress without publishing.

**Step-by-Step Instructions:**

1. **Click "Save Draft"**
   - Form saved but not active

2. **Continue later**
   - Return to editing anytime
   - Find in forms list

---

### 15. Publish Form

**Purpose:** Make form available for patients.

**Step-by-Step Instructions:**

1. **Review all fields**
   - Check for completeness
   - Test in preview

2. **Click "Publish" or "Save & Publish"**
   - Form becomes active

3. **Confirm publication**
   - Form now available
   - Can be sent to patients

---

## Field Types Reference

| Type | Use Case |
|------|----------|
| Text | Short answers (name, etc.) |
| Textarea | Long answers (descriptions) |
| Number | Numeric values |
| Email | Email addresses |
| Phone | Phone numbers |
| Date | Dates (DOB, etc.) |
| Time | Time selection |
| Radio | Single choice from options |
| Checkbox | Multiple choices |
| Dropdown | Single choice (compact) |
| File Upload | Document/image uploads |
| Signature | Electronic signatures |
| Section | Organize form visually |

---

## Best Practices

1. **Group related questions** into sections
2. **Use clear, simple language** for labels
3. **Mark only essential fields** as required
4. **Test conditional logic** thoroughly
5. **Preview on mobile** before publishing

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Can't save form | Add required title |
| Conditional logic not working | Check trigger field values |
| Field not showing | Check conditional rules |
| Preview looks wrong | Refresh, check field order |
| Form too long | Consider splitting into sections |
