# Merge Patients Page - User Actions Guide

## Overview

The Merge Patients page allows staff to find and merge duplicate patient records. Staff can search for duplicates by specific fields, review potential matches, select which record to keep as primary, and merge others into it. Charges can optionally be voided during merge.

---

## Available Actions

### 1. Find Duplicate Patients

**Purpose:** Search for patients with matching data.

**Step-by-Step Instructions:**

1. **Navigate to Merge page**
   - Patient menu → Merge Patients

2. **View Fields to Check card**
   - Centered on page

3. **Select fields to check for duplicates:**
   - First Name
   - Last Name
   - Date of Birth
   - Phone Number
   - Email

4. **Click multiple fields**
   - Each click toggles selection
   - Selected fields highlighted in blue

5. **Click "Find Duplicates" button**
   - System searches for matches

6. **View results**
   - Duplicate groups displayed
   - Or "No duplicates found" message

---

### 2. Use Pre-selected Patients

**Purpose:** Merge specific patients via URL.

**Step-by-Step Instructions:**

1. **Access via URL with patient IDs**
   - `?patientIds=pat_xxx,pat_yyy,pat_zzz`

2. **Patients auto-loaded**
   - First patient set as primary
   - Others marked for merging

3. **Review and proceed**

---

### 3. Review Duplicate Groups

**Purpose:** Examine potential merge candidates.

**Step-by-Step Instructions:**

1. **After finding duplicates**

2. **View merge cards**
   - Left side: Patients to merge (gray)
   - Right side: Primary patient (blue)
   - Merge arrow in middle

3. **Each patient card shows:**
   - Name
   - Contact information
   - Date of birth
   - Other identifying info

---

### 4. Change Primary Patient

**Purpose:** Select which patient to keep.

**Step-by-Step Instructions:**

1. **In a merge group**

2. **Click on a patient card on the left**
   - The "to be merged" side

3. **That patient becomes primary**
   - Moves to right side (blue)
   - Previous primary moves to left

4. **All data merges INTO the primary**

---

### 5. Remove Merge Group

**Purpose:** Skip a suggested merge.

**Step-by-Step Instructions:**

1. **Find merge group to remove**

2. **Click "X" button**
   - Top left of merge card

3. **Group removed from list**
   - Patients not merged

---

### 6. Void Other Charges Option

**Purpose:** Clear charges on merged patients.

**Step-by-Step Instructions:**

1. **In each merge group**

2. **Locate checkbox below patient cards**
   - "If checked, all charges on the merged patients will be voided"

3. **Check or uncheck as needed**
   - Checked: Void all charges
   - Unchecked: Transfer charges to primary

---

### 7. Execute Merge

**Purpose:** Complete the patient merge.

**Step-by-Step Instructions:**

1. **Review all merge groups**

2. **Verify primary patients selected**

3. **Set void charges preferences**

4. **Click "Merge Patients" button**
   - Red/destructive button
   - Bottom of page

5. **Confirm action**
   - This is irreversible

6. **Wait for processing**

7. **Success message appears**

---

### 8. Go Back to Search

**Purpose:** Return to duplicate search.

**Step-by-Step Instructions:**

1. **While viewing merge results**

2. **Click "Back" button**
   - Top right corner

3. **Returns to field selection**
   - Previous results cleared

---

## Merge Validation Rules

The system prevents merging when:

| Condition | Result |
|-----------|--------|
| Different email AND phone | Merge blocked |
| Same email, different phone | Allowed |
| Same phone, different email | Allowed |
| Both same | Allowed |
| One field empty | Allowed |

---

## Duplicate Search Fields

| Field | What It Checks |
|-------|----------------|
| First Name | Exact match |
| Last Name | Exact match |
| Date of Birth | Exact match |
| Phone Number | Normalized match |
| Email | Case-insensitive match |

---

## Merge Outcome

When patients are merged:

| Data Type | Behavior |
|-----------|----------|
| Appointments | Transferred to primary |
| Charges | Transferred or voided |
| Documents | Transferred to primary |
| Notes | Transferred to primary |
| Contact info | Primary's info kept |
| Merged patients | Soft deleted |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Find duplicates | ✓ | ✓ | ✓ |
| Merge patients | ✓ | ✓ | ✓ |
| Void charges | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No duplicates found | Try different field combinations |
| Cannot merge | Check email/phone conflict |
| Button disabled | Resolve validation errors |
| Patients not loading | Check patient IDs in URL |
