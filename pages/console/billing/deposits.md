# Deposits Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/deposits/page.tsx`
**Route:** `/[tenant]/billing/deposits`

---

## Overview

The Deposits page tracks bank deposits from payment processing. Staff can view deposit history, see transaction breakdowns, track fees, and reconcile payments with bank statements.

---

## Available Actions

### 1. View Deposit List

**Purpose:** See all bank deposits from payment processing.

**Step-by-Step Instructions:**

1. **Navigate to Deposits**
   - Billing menu → Deposits

2. **View deposit table**
   - Subtotal (gross amount)
   - Total fees (processing fees)
   - Amount deposited (net)
   - Transaction count
   - Status
   - Created date

---

### 2. Filter by Month

**Purpose:** View deposits for a specific time period.

**Step-by-Step Instructions:**

1. **Locate month selector**
   - Top right corner

2. **Click dropdown**
   - Shows available months

3. **Select month**
   - Table updates to show that month's deposits

---

### 3. View Deposit Details

**Purpose:** See breakdown of individual deposit.

**Step-by-Step Instructions:**

1. **Click on deposit row**
   - Row is clickable
   - Opens detail drawer

2. **Review details:**
   - Individual payments included
   - Refunds applied
   - Fee breakdown
   - Transaction IDs
   - Dates and amounts

---

### 4. Sort Deposits

**Purpose:** Organize deposits by different criteria.

**Step-by-Step Instructions:**

1. **Click column header**
   - Amount, Date, Status, etc.

2. **Toggle sort direction**
   - Ascending/descending

---

### 5. View by Merchant Account

**Purpose:** See deposits grouped by payment processor.

**Step-by-Step Instructions:**

1. **If multiple merchant accounts exist:**
   - Deposits are automatically grouped
   - Each group shows subtotals

2. **Review per-account totals**
   - Subtotal per account
   - Fees per account
   - Net amount per account

---

### 6. View Summary Totals

**Purpose:** See aggregate deposit information.

**Step-by-Step Instructions:**

1. **Scroll to table footer**
   - Shows summary row

2. **Review totals:**
   - Total subtotal for period
   - Total fees paid
   - Total amount deposited
   - Total payment/refund count

---

## Deposit Table Columns

| Column | Description |
|--------|-------------|
| Subtotal | Gross payment amount |
| Total Fees | Processing fees charged |
| Amount Deposited | Net amount to bank |
| Transactions | Payment and refund counts |
| Status | PROCESSING, IN_REVIEW, SUCCEEDED, FAILED |
| Created | When deposit was initiated |

---

## Deposit Statuses

| Status | Badge Color | Meaning |
|--------|-------------|---------|
| PROCESSING | Blue | Being processed |
| IN_REVIEW | Yellow | Under review |
| SUCCEEDED | Green | Completed successfully |
| FAILED | Red | Deposit failed |

---

## Deposit Details Drawer

When clicking a deposit, the drawer shows:

- **Payment List:** Each payment included
- **Refund List:** Any refunds applied
- **Fee Breakdown:** Per-transaction and deposit fees
- **Timing:** When initiated and completed
- **Bank Info:** Destination account details

---

## Multiple Merchant Accounts

If your practice has multiple merchant accounts:
- Deposits are grouped by account
- Each group has a subtotal row
- Group headers show account name
- Useful for practices with multiple locations or processors

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View deposits | ✓ | ✓ | ✗ |
| View details | ✓ | ✓ | ✗ |
| Export data | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No deposits showing | Check month filter |
| Amount doesn't match | Review refunds and fees |
| Missing transactions | Check deposit date range |
| Status stuck on Processing | Allow 2-3 business days |
