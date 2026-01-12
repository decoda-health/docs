# Invoices Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/invoices/page.tsx`
**Route:** `/[tenant]/billing/invoices`

---

## Overview

The Invoices page manages outstanding debt collection and patient outreach for unpaid balances. Staff can view, filter, and manage invoices, create new ones, and track payment status.

---

## Available Actions

### 1. View All Invoices

**Purpose:** Browse and manage all patient invoices.

**Step-by-Step Instructions:**

1. **Navigate to Invoices**
   - Billing menu → Invoices

2. **View invoice list**
   - Patient name
   - Invoice amount
   - Status (pending, paid, overdue)
   - Due date
   - Creation date

---

### 2. Filter Invoices

**Purpose:** Find specific invoices quickly.

**Step-by-Step Instructions:**

1. **Locate filter controls**
   - Filter bar above table

2. **Apply filters:**
   - **By Status:** Pending, Paid, Overdue
   - **By Date Range:** Created date or due date
   - **By Amount:** Minimum/maximum range
   - **By Patient:** Search by name

3. **View filtered results**
   - Table updates automatically

---

### 3. Create New Invoices

**Purpose:** Generate invoices for outstanding charges.

**Step-by-Step Instructions:**

1. **Click "Create Invoices" button**
   - Top right corner
   - Redirects to checkout page

2. **Select charges to invoice**
   - Choose patient
   - Select outstanding charges

3. **Generate invoice**
   - Invoice created and sent

---

### 4. Sort Invoice Table

**Purpose:** Organize invoices by different criteria.

**Step-by-Step Instructions:**

1. **Click column header**
   - Amount, Date, Status, etc.

2. **Toggle sort direction**
   - Click again to reverse
   - Ascending/descending

---

### 5. View Invoice Details

**Purpose:** See complete invoice information.

**Step-by-Step Instructions:**

1. **Click on invoice row**
   - Opens detail view

2. **Review details:**
   - Line items
   - Payment history
   - Patient information
   - Notes

---

### 6. Take Invoice Action

**Purpose:** Perform actions on specific invoices.

**Step-by-Step Instructions:**

1. **Select invoice**

2. **Choose action:**
   - Send reminder
   - Mark as paid
   - Void invoice
   - Edit details
   - Download PDF

3. **Confirm action**

---

## Invoice Table Columns

| Column | Description |
|--------|-------------|
| Patient | Patient name and ID |
| Amount | Total invoice amount |
| Status | Payment status |
| Due Date | When payment is due |
| Created | Invoice creation date |
| Actions | Available actions |

---

## Invoice Statuses

| Status | Meaning |
|--------|---------|
| Pending | Awaiting payment |
| Paid | Fully paid |
| Partial | Partially paid |
| Overdue | Past due date |
| Voided | Cancelled invoice |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View invoices | ✓ | ✓ | ✓ |
| Create invoices | ✓ | ✓ | ✓ |
| Void invoices | ✓ | ✓ | ✗ |
| Send reminders | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Invoice not showing | Check filters applied |
| Can't create invoice | Verify patient has charges |
| Send reminder fails | Check patient contact info |
| Filters not working | Clear and reapply |
