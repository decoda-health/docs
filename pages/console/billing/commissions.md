# Commissions Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/commissions/page.tsx`
**Route:** `/[tenant]/billing/commissions`

---

## Overview

The Commissions page manages provider commission structures and generates payout reports. Staff can create commission rules, assign providers to structures, generate reports for specific date ranges, and export data for payroll processing.

---

## Available Actions

### 1. View Commission Reports

**Purpose:** See generated and saved commission reports.

**Step-by-Step Instructions:**

1. **Navigate to Commissions**
   - Billing menu → Commissions

2. **View reports section:**
   - **Recent (Unsaved):** Just-generated reports
   - **Saved Reports:** Previously saved reports

3. **Each report shows:**
   - Structure name
   - Date range
   - Number of payouts
   - Total payout amount

---

### 2. Generate Commission Report

**Purpose:** Create a new commission report.

**Step-by-Step Instructions:**

1. **Click "Generate Report" button**
   - Top right corner

2. **Configure report:**
   - Select commission structure
   - Choose date range (start/end)
   - Select providers (optional)

3. **Click "Generate"**
   - Report is created
   - Automatically opens for review

---

### 3. View Report Details

**Purpose:** See detailed breakdown of a report.

**Step-by-Step Instructions:**

1. **Find report in list**
   - Recent or saved

2. **Click "View Details"**
   - Opens detail dialog

3. **Review:**
   - Provider payouts
   - Individual transactions
   - Commission calculations
   - Total amounts

---

### 4. Save Commission Report

**Purpose:** Permanently save a generated report.

**Step-by-Step Instructions:**

1. **Generate or view report**

2. **Click "Save Report"**
   - In report details dialog

3. **Report moves to Saved Reports**
   - Persists for future reference

---

### 5. Archive Commission Report

**Purpose:** Remove a saved report from active view.

**Step-by-Step Instructions:**

1. **Find saved report**

2. **Click menu (three dots)**

3. **Select "Archive Report"**

4. **Confirm archival**
   - Report removed from list
   - Data preserved

---

### 6. Export Commission Report

**Purpose:** Download report data for payroll.

**Step-by-Step Instructions:**

1. **Find saved report**

2. **Click menu (three dots)**

3. **Select "Export Report"**

4. **Choose format:**
   - CSV
   - Excel

5. **Download file**

---

### 7. Export Tips

**Purpose:** Export tip data for a date range.

**Step-by-Step Instructions:**

1. **Click "Export Tips" button**
   - Top right area

2. **Configure export:**
   - Select date range
   - Choose format

3. **Download file**
   - Tips data for payroll

---

### 8. Create Commission Structure

**Purpose:** Define new commission rules.

**Step-by-Step Instructions:**

1. **Click "New Structure" button**
   - In Commission Structures section

2. **Enter details:**
   - **Name:** Structure name
   - **Description:** Optional description

3. **Add commission rules:**
   - Type (percentage, flat rate)
   - Rate/amount
   - Applies to (services, products, packages)

4. **Save structure**

---

### 9. Edit Commission Structure

**Purpose:** Modify existing structure.

**Step-by-Step Instructions:**

1. **Find structure in list**

2. **Click menu (three dots)**

3. **Select "Edit"**

4. **Modify:**
   - Name and description
   - Commission rules
   - Rule configurations

5. **Save changes**

---

### 10. Duplicate Commission Structure

**Purpose:** Copy an existing structure.

**Step-by-Step Instructions:**

1. **Find structure**

2. **Click menu (three dots)**

3. **Select "Duplicate"**

4. **Copy is created**
   - Named "[Original] Copy"
   - Edit as needed

---

### 11. Delete Commission Structure

**Purpose:** Remove a structure.

**Step-by-Step Instructions:**

1. **Find structure**

2. **Click menu (three dots)**

3. **Select "Delete"**

4. **Confirm deletion**
   - Structure permanently removed

---

### 12. Add Provider to Structure

**Purpose:** Assign a provider to use this structure.

**Step-by-Step Instructions:**

1. **Find structure**

2. **Click menu (three dots)**

3. **Select "Add Provider"**

4. **Search and select provider**

5. **Provider assigned**
   - Appears in structure's provider list

---

### 13. Remove Provider from Structure

**Purpose:** Unassign a provider.

**Step-by-Step Instructions:**

1. **Find provider in structure's list**
   - Shown as badge/tag

2. **Click X on provider badge**

3. **Provider removed**

---

## Commission Structure Components

| Component | Description |
|-----------|-------------|
| Name | Identifies the structure |
| Description | Explains purpose |
| Rules | Individual commission calculations |
| Providers | Staff assigned to structure |

---

## Commission Rule Types

| Type | How It Works |
|------|--------------|
| Percentage | % of sale amount |
| Flat Rate | Fixed amount per sale |
| Tiered | Different rates at thresholds |

---

## Report Export Columns

The export typically includes:
- Provider name
- Date range
- Total sales
- Commission earned
- Tips received
- Net payout

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View reports | ✓ | ✓ | ✗ |
| Generate reports | ✓ | ✓ | ✗ |
| View structures | ✓ | ✓ | ✓ |
| Create structures | ✓ | ✗ | ✗ |
| Edit structures | ✓ | ✗ | ✗ |
| Delete structures | ✓ | ✗ | ✗ |
| Export data | ✓ | ✓ | ✗ |

---

## Getting Started

If no commission structures exist:

1. **Empty state wizard appears**
2. **Click "Create Commission Structure"**
3. **Follow creation steps**
4. **Assign providers**
5. **Generate first report**

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No reports showing | Generate a report first |
| Can't generate report | Need at least one structure |
| Provider not in dropdown | Check if user is marked as provider |
| Export fails | Try different format |
| Structure not saving | Check required fields |
