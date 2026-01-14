# Patient List Page - User Actions Guide

## Overview

The Patient List page is the central hub for managing all patients in the practice. It provides a searchable, filterable table of patients with quick actions for viewing, creating, merging, and exporting patient data.

---

## Available Actions

### 1. Create a New Patient

**Purpose:** Add a new patient to the practice management system.

**Step-by-Step Instructions:**

1. **Locate the "New" button**
   - In the header area, top right
   - Blue primary button labeled "New"

2. **Click the "New" button**
   - Patient creation modal opens
   - Form displays required fields

3. **Fill in patient information:**

   **Required Fields:**
   - **First Name:** Enter patient's given name
   - **Last Name:** Enter patient's family name
   - **Phone Number:** Enter 10-digit mobile number

   **Optional Fields:**
   - **Email:** Patient's email address
   - **Date of Birth:** Select or type birth date
   - **Address:** Street, City, State, ZIP
   - **Gender:** Select from options
   - **Preferred Pronouns:** If applicable
   - **Notes:** Any important patient information

4. **Save the patient**
   - Click "Save" or "Create Patient"
   - Modal closes
   - New patient appears in table
   - Success notification shown

5. **Handle validation errors**
   - If required fields empty, errors shown
   - Correct and retry

---

### 2. Search for Patients

**Purpose:** Find specific patients quickly.

**Step-by-Step Instructions:**

1. **Locate the search box**
   - Near the top of the patient table
   - Placeholder text: "Search patients..."

2. **Enter search terms**
   - Type patient name (first, last, or both)
   - Or type phone number
   - Or type email address

3. **View results**
   - Table filters as you type
   - Matching patients shown
   - Non-matching rows hidden

4. **Clear search**
   - Delete text in search box
   - Or click the X clear button
   - All patients visible again

---

### 3. Sort the Patient Table

**Purpose:** Order patients by different criteria.

**Step-by-Step Instructions:**

1. **Locate column headers**
   - Table headers are clickable
   - Sortable columns show sort indicator

2. **Click a column header**
   - Table sorts by that column
   - Arrow indicates sort direction (↑ ascending, ↓ descending)

3. **Click again to reverse**
   - Toggles between ascending and descending
   - Or click different column to sort by that

4. **Default sort:**
   - By last name, ascending (A-Z)

**Sortable Columns:**
- Patient Name
- Date of Birth
- Completed Appointments
- Total Spent
- Created Date

---

### 4. Filter Patients

**Purpose:** Narrow down the patient list by specific criteria.

**Step-by-Step Instructions:**

1. **Locate filter controls**
   - Above or beside the table
   - Dropdown menus or filter buttons

2. **Available filters:**
   - **Name:** Search by patient name
   - **Patient ID:** Search by ID
   - **Email:** Search by email
   - **Phone Number:** Search by phone
   - **Created Date:** Filter by date range
   - **Date of Birth:** Filter by birth date
   - **Location:** Patients at specific locations
   - **Tags:** Filter by patient tags
   - **Lead Source:** Filter by how patient was acquired

3. **Apply filters**
   - Select filter criteria
   - Table updates automatically
   - Multiple filters can combine

4. **Clear filters**
   - Click "Clear All" or remove individual filters
   - All patients visible again

---

### 5. View Patient Details

**Purpose:** Open a patient's full profile.

**Step-by-Step Instructions:**

1. **Find the patient in the table**
   - Use search or scroll through list

2. **Click on the patient row**
   - Or click "View" action button
   - Patient detail page opens

3. **Navigate patient profile**
   - Multiple tabs available
   - See Patient Detail page documentation

---

### 6. Navigate Between Pages

**Purpose:** Move through large patient lists.

**Step-by-Step Instructions:**

1. **Locate pagination controls**
   - Below the patient table
   - Shows current page and total

2. **Navigate pages:**
   - Click "Next" or ">" for next page
   - Click "Previous" or "<" for previous page
   - Click page number for specific page

3. **Change page size:**
   - Dropdown to select items per page
   - Options: 10, 25, 50, 100
   - Larger sizes show more at once

---

### 7. Merge Duplicate Patients

**Purpose:** Combine multiple patient records into one.

**Step-by-Step Instructions:**

1. **Locate the "Merge" button**
   - In the header area
   - Button with merge icon

2. **Click "Merge"**
   - Navigates to patient merge page

3. **Select patients to merge**
   - Search and select first patient
   - Search and select second patient (or more)

4. **Complete merge process**
   - See Patient Merge page documentation

**Alternative Method:**
- From patient detail page, click duplicate warning banner
- Automatically pre-populates merge with patient and duplicates

---

### 8. Upload Patients (Bulk Import)

**Purpose:** Import multiple patients from a file.

**Step-by-Step Instructions:**

1. **Locate the "Upload" button**
   - In the header area
   - Button with import icon

2. **Click "Upload"**
   - Navigates to patient upload page

3. **Download template (optional)**
   - Get the CSV template
   - Fill in patient data

4. **Upload file**
   - Drag and drop or click to select
   - CSV or Excel format accepted

5. **Review and confirm**
   - Preview imported data
   - Fix any errors
   - Confirm import

---

### 9. Export Patients

**Purpose:** Download patient data for reporting or backup.

**Step-by-Step Instructions:**

1. **Locate the "Export" button**
   - In the header area
   - Button with export icon

2. **Click "Export"**
   - Export drawer opens

3. **Configure export:**

   **File Format:**
   - CSV (comma-separated values)
   - Excel (XLSX)

   **Columns:**
   - Select which columns to include
   - All columns selected by default

   **Data Range:**
   - Current filters apply
   - Export only visible/filtered patients

4. **Start export**
   - Click "Export" or "Download"
   - File download begins
   - Large exports may take time

5. **Wait for completion**
   - Progress indicator shows status
   - File downloads when ready

**Export Columns:**
- First Name
- Last Name
- Email
- Phone
- Date of Birth
- Address
- Tags
- Created Date
- Last Visit
- And more...

---

### 10. Quick Actions on Patient Rows

**Purpose:** Perform common actions directly from the table.

**Step-by-Step Instructions:**

1. **Click patient name**
   - Opens patient detail sidebar
   - View patient information quickly

2. **Click phone number**
   - Initiates call via system

3. **Select multiple patients**
   - Use checkboxes to select
   - Bulk actions appear:
     - Merge selected patients
     - Send bulk text message
     - Archive patients

---

## Table Columns

| Column | Description |
|--------|-------------|
| Patient Name | Full name with gender icon (link to detail) |
| Date of Birth | Patient's birth date |
| Contact Info | Phone, email, and lead source |
| Address | Street address, city, state, ZIP |
| Completed Appointments | Count of completed appointments |
| Total Spent | Total amount spent by patient |
| Created Date | When patient was added to system |

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl/Cmd + F` | Focus search box |
| `Enter` | Open selected patient |
| `↑` / `↓` | Navigate table rows |
| `Escape` | Clear search/selection |

---

## Mobile Behavior

- Table scrolls horizontally
- Tap patient to view
- Actions in expandable menu
- Search accessible at top
- Filters in collapsible section

---

## Permissions

All patient management actions are available to users with appropriate patient access. Specific permissions may be configured per role in Settings.

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Search not finding patient | Check spelling, try partial name |
| Export taking too long | Narrow date range with filters |
| Patient not saving | Check required fields, try refresh |
| Duplicate warning | Use merge function to consolidate |
| Table loading slowly | Reduce page size, apply filters |
