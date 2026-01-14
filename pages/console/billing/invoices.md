# Invoices Page - User Actions Guide

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
   - **By Status:** Active, Paused, Cancelled, Expired, Paid, Will Fail, Failed
   - **By Date Range:** Invoice created date or send time
   - **By Amount:** Minimum/maximum dollar range
   - **By Patient:** Search by name, phone number, or ID
   - **By Rule Set:** Select specific invoice rule sets

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
   - Write Off
   - Send to Collections
   - Change Rule Set
   - Pause (pause outreach)
   - Resume (resume paused outreach)
   - Stop Invoicing (cancel)

3. **Confirm action**

---

## Invoice Table Columns

| Column | Description |
|--------|-------------|
| Status | Current invoice status with expandable details |
| Amount Outstanding | Remaining balance |
| Patient | Patient name and info |
| Actions | Available actions |

Click "Show Details" on any row to view the invoice timeline history.

---

## Invoice Statuses

| Status | Meaning |
|--------|---------|
| Active | Actively sending invoices to patient |
| Paused | Outreach temporarily paused |
| Cancelled | Invoicing stopped |
| Expired | Rule set completed, balance remains |
| Paid | Fully paid |
| Will Fail | Future invoice sends will fail |
| Failed | Invoice delivery failed |

---

## Status Metrics Cards

The page displays four summary cards:

| Card | Description |
|------|-------------|
| Failed | Patients with invoices that cannot be delivered |
| Expired | Patients who completed a rule set and still have a balance |
| Paused | Patients with paused outreach |
| Will Fail | Patients with invoices that will fail to send in the future |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View invoices | ✓ | ✓ | ✓ |
| Create invoices | ✓ | ✓ | ✓ |
| Stop invoicing | ✓ | ✓ | ✗ |
| Pause/Resume | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Invoice not showing | Check filters applied |
| Can't create invoice | Verify patient has charges |
| Send reminder fails | Check patient contact info |
| Filters not working | Clear and reapply |
