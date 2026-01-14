# Charges Page - User Actions Guide

## Overview

The Charges page displays all patient charges with comprehensive filtering, sorting, and action capabilities. Staff can view charge details, process payments, issue refunds, make adjustments, and manage payment plans.

---

## Available Actions

### 1. View All Charges

**Purpose:** See all charges across the practice.

**Step-by-Step Instructions:**

1. **Navigate to Charges**
   - Click "Billing" → "Charges"

2. **View charges table**
   - Each row displays:
     - Amount and status
     - Patient information
     - Provider
     - Service
     - Location
     - Source
     - Created date
     - Actions

---

### 2. Create New Charge

**Purpose:** Create a charge for a patient.

**Step-by-Step Instructions:**

1. **Click "Create Charge" button**
   - Located in header
   - Plus icon with text

2. **Navigate to checkout**
   - Redirects to check-out page

3. **Complete charge creation**
   - Select patient
   - Add items/services
   - Process or save

---

### 3. Filter Charges

**Purpose:** Find specific charges quickly.

**Step-by-Step Instructions:**

1. **Locate filter bar**
   - Below page header

2. **Available filters:**
   - **Status:** Outstanding, Paid, Written Off, etc.
   - **Date Range:** Start and end dates
   - **Patient:** Search by name
   - **Provider:** Filter by provider
   - **Service:** Filter by service type
   - **Location:** Filter by location
   - **Charge ID:** Search by charge ID
   - **External ID:** Search by external ID

3. **Apply filters**
   - Select/enter filter values
   - Table updates automatically

4. **Clear filters**
   - Click "Clear" or remove individual filters

---

### 4. Sort Charges

**Purpose:** Order charges by different criteria.

**Step-by-Step Instructions:**

1. **Click column header**
   - Amount, Date, Patient, etc.

2. **Toggle sort direction**
   - Click again to reverse
   - Arrow indicates direction

---

### 5. View Charge Details

**Purpose:** See full information about a charge.

**Step-by-Step Instructions:**

1. **Click expand arrow (▼)**
   - On the right side of row

2. **View charge timeline**
   - Creation details
   - Payment history
   - Adjustments
   - Refunds

3. **Collapse details**
   - Click arrow again

---

### 6. Take Payment

**Purpose:** Collect payment on an outstanding charge.

**Step-by-Step Instructions:**

1. **Find outstanding charge**
   - Status shows "Outstanding"

2. **Click actions menu (⋮)**
   - Three dots button

3. **Select "Take Payment"**
   - Redirects to checkout

4. **Complete payment**
   - Enter payment details
   - Process transaction

---

### 7. Edit Charge Amount

**Purpose:** Adjust the charge total.

**Step-by-Step Instructions:**

1. **Click actions menu**
   - On the charge row

2. **Select "Edit Charge Amount"**
   - Adjustment modal opens

3. **Enter adjustment:**
   - Positive to increase
   - Negative to decrease
   - Add reason/note

4. **Save adjustment**
   - Charge total updates
   - History recorded

---

### 8. Write Off Charge

**Purpose:** Mark a charge as uncollectible.

**Step-by-Step Instructions:**

1. **Click actions menu**
   - On outstanding charge

2. **Select "Write off charge"**
   - Write-off modal opens

3. **Configure write-off:**
   - Full or partial amount
   - Write-off reason
   - Notes

4. **Confirm write-off**
   - Charge status changes
   - Balance reduced

---

### 9. Externally Settle Charge

**Purpose:** Mark charge as paid outside the system.

**Step-by-Step Instructions:**

1. **Click actions menu**

2. **Select "Externally Settle Charge"**
   - Confirmation appears

3. **Confirm action**
   - Charge marked as settled
   - No payment processed in system

---

### 10. Cancel Payment Plan

**Purpose:** Remove a payment plan from a charge.

**Step-by-Step Instructions:**

1. **Find charge with payment plan**
   - Status shows "Payment Plan"

2. **Click actions menu**

3. **Select "Cancel Payment Plan"**
   - Confirmation dialog

4. **Confirm cancellation**
   - Plan cancelled
   - Charge returns to outstanding

---

### 11. Refund Payment

**Purpose:** Return money to patient.

**Step-by-Step Instructions:**

1. **Find paid charge**
   - Status shows "Paid" or "External Settlement"

2. **Click actions menu**

3. **Select "Refund Payment"**
   - Refund modal opens

4. **Configure refund:**
   - Full or partial amount
   - Refund reason

5. **Process refund**
   - Funds returned
   - Status updates

---

### 12. Add/Edit Comment

**Purpose:** Add notes to a charge.

**Step-by-Step Instructions:**

1. **Click actions menu**

2. **Select "Add Comment" or "Edit Comment"**
   - Comment modal opens

3. **Enter comment**
   - Internal notes about charge

4. **Save comment**
   - Comment icon appears on row
   - Hover to view

---

### 13. Edit Charge Details

**Purpose:** Modify charge metadata.

**Step-by-Step Instructions:**

1. **Click actions menu**

2. **Select "Edit Details"**
   - Edit modal opens

3. **Modify details:**
   - Service date
   - External ID
   - Other metadata

4. **Save changes**

---

### 14. View Detailed Receipt

**Purpose:** Generate a comprehensive receipt.

**Step-by-Step Instructions:**

1. **Find paid charge**

2. **Click actions menu**

3. **Select "Detailed Receipt"**
   - Opens in new tab

4. **View/print receipt**
   - Full charge and payment details

---

### 15. Export Charges

**Purpose:** Download charge data.

**Step-by-Step Instructions:**

1. **Click "Export Charges" button**
   - In header area

2. **Configure export:**
   - Format (CSV/Excel)
   - Columns to include
   - Date range (uses current filters)

3. **Download file**
   - File with all matching charges

---

## Charge Status Reference

| Status | Meaning |
|--------|---------|
| Outstanding | Unpaid balance |
| Payment Plan | Active payment plan |
| Paid | Fully paid |
| External Settlement | Paid outside system |
| Written Off | Marked uncollectible |
| Refunded | Payment returned |
| Void | Charge voided |
| Chargeback | Disputed transaction |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View charges | ✓ | ✓ | ✓ |
| Create charges | ✓ | ✓ | ✓ |
| Take payments | ✓ | ✓ | ✓ |
| Issue refunds | ✓ | ✓ | ✗ |
| Write off | ✓ | ✓ | ✗ |
| Export | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Charge not showing | Check filters, location |
| Can't refund | Payment may already be refunded |
| Export taking long | Narrow date range |
| Payment plan issues | Check for failed scheduled payments |
