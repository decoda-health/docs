# Patient Upload Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/patient/(patient-upload-page)/upload/page.tsx`
**Route:** `/[tenant]/patient/upload`

---

## Overview

The Patient Upload page provides a multi-step wizard for bulk importing patient data from CSV files. Supports both collections (with balances) and contact-only uploads. Includes column mapping, data validation, and saved mapping templates.

---

## Available Actions

### 1. Select Upload Type

**Purpose:** Choose what type of data to import.

**Step-by-Step Instructions:**

1. **Navigate to Patient Upload**
   - Patient menu → Upload

2. **View upload type options:**

3. **Select "Patient Collections"**
   - For importing balance/debt data
   - Requires rule set selection

4. **Or select "Patient Contact"**
   - For importing contact info only
   - No rule set needed

---

### 2. Select Rule Set (Collections Only)

**Purpose:** Determine how charges are processed.

**Step-by-Step Instructions:**

1. **After selecting Collections type**

2. **View rule set dropdown**

3. **Click dropdown**

4. **Select a rule set**
   - Required for collections upload

5. **Configure options:**
   - **Void existing charges:** Remove old charges using this rule set
   - **Update existing patient charges:** Adjust existing vs. create new

---

### 3. Select Patient Identifiers

**Purpose:** Define how to match existing patients.

**Step-by-Step Instructions:**

1. **Locate "Patient Identifiers" section**

2. **Select fields for matching:**
   - Phone Number
   - Email
   - Account Number
   - Date of Birth

3. **Multiple selections allowed**
   - More fields = stricter matching

---

### 4. Upload CSV File

**Purpose:** Select file for import.

**Step-by-Step Instructions:**

1. **Option A - Drag and drop:**
   - Drag CSV file to upload zone
   - Zone highlights when file hovers

2. **Option B - Browse:**
   - Click "Browse Files" button
   - Select file from computer

3. **File validates automatically**
   - Shows row count
   - Shows column count
   - Displays warnings if any

4. **Maximum file size:** 10MB

---

### 5. Preview CSV Data

**Purpose:** Verify data before processing.

**Step-by-Step Instructions:**

1. **After file uploads**

2. **Click "Show Preview" button**

3. **View table preview:**
   - Headers displayed
   - First few rows shown
   - Scrollable if wide

4. **Click "Hide Preview" to collapse**

---

### 6. Remove Selected File

**Purpose:** Clear file and start over.

**Step-by-Step Instructions:**

1. **With file selected**

2. **Click trash icon**
   - Next to file name

3. **File removed**
   - Can select new file

---

### 7. Navigate to Column Mapping

**Purpose:** Map CSV columns to system fields.

**Step-by-Step Instructions:**

1. **Complete configuration step**

2. **Click "Next" button**

3. **Column mapping page loads**
   - Shows required fields
   - Shows optional fields

---

### 8. Map CSV Columns

**Purpose:** Match your columns to required fields.

**Step-by-Step Instructions:**

1. **View required fields**
   - Marked with asterisk (*)

2. **For each required field:**
   - Click dropdown
   - Select matching CSV column

3. **Review auto-suggestions**
   - System may auto-match common names

4. **Map optional fields as needed**

5. **All required + identifier fields must be mapped**

---

### 9. Apply Saved Mapping

**Purpose:** Use previously saved column configuration.

**Step-by-Step Instructions:**

1. **On column mapping page**

2. **View "Saved Mappings" section**

3. **Click a saved mapping**
   - Columns auto-populate

4. **Default mapping applies automatically**
   - If one exists

---

### 10. Configure Balance Conversion

**Purpose:** Convert dollar amounts to cents.

**Step-by-Step Instructions:**

1. **If balance column detected**

2. **View conversion prompt**

3. **Select whether values are in:**
   - Dollars (will convert to cents)
   - Cents (no conversion)

4. **Preview shows converted values**

---

### 11. Navigate to Preview Step

**Purpose:** Final review before upload.

**Step-by-Step Instructions:**

1. **Complete column mapping**

2. **Click "Next" button**

3. **Mapping applied to full file**

4. **Preview step loads**

---

### 12. Review Configuration Summary

**Purpose:** Verify all settings before upload.

**Step-by-Step Instructions:**

1. **On Preview step**

2. **Review summary:**
   - Upload type
   - Rule set (if collections)
   - Void existing charges setting
   - Update existing charges setting
   - Patient identifiers
   - File name

3. **View file preview**
   - Now shows mapped columns

---

### 13. Submit Upload

**Purpose:** Process the file.

**Step-by-Step Instructions:**

1. **Verify configuration**

2. **Click "Next" / Submit button**

3. **Upload progress displays**
   - Progress bar shows percentage

4. **Wait for processing**

5. **On success:**
   - Redirected to Upload History
   - Toast confirmation appears

---

### 14. View Upload History

**Purpose:** Check status of uploads.

**Step-by-Step Instructions:**

1. **Click "View History" button**
   - Top right of page

2. **Navigate to upload history page**

---

## Multi-Step Wizard Flow

| Step | Name | Purpose |
|------|------|---------|
| 1 | Configuration | Select type, rule set, file |
| 2 | Column Mapping | Map CSV to system fields |
| 3 | Preview | Final review and submit |

---

## Required CSV Fields

For Collections upload:
- Patient identifier (phone/email/account)
- Balance amount
- Name fields

For Contact upload:
- Patient identifier
- Name fields
- Contact information

---

## File Requirements

| Requirement | Value |
|-------------|-------|
| Format | CSV |
| Max size | 10MB |
| Encoding | UTF-8 recommended |
| Headers | Required in first row |

---

## Upload Type Comparison

| Feature | Collections | Contact |
|---------|-------------|---------|
| Balance data | ✓ | ✗ |
| Rule set required | ✓ | ✗ |
| Creates charges | ✓ | ✗ |
| Contact info | ✓ | ✓ |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Upload patients | ✓ | ✓ | ✓ |
| Configure rule sets | ✓ | ✓ | ✗ |
| Void existing charges | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| File too large | Split into smaller files |
| Invalid file type | Use .csv extension |
| Missing fields error | Map all required columns |
| Validation errors | Check data format in CSV |
| No rule sets | Create rule sets in Settings |
| Mapping not saved | Complete all required fields |
