# Deposits Page - User Actions Guide

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

### 2. Filter Deposits

**Purpose:** View deposits for a specific time period or criteria.

**Step-by-Step Instructions:**

1. **Available filters:**
   - **Month:** Select from available months
   - **Merchant Account:** Filter by payment processor (if multiple)
   - **Status:** Filter by deposit status
   - **Date Range:** Filter by created date

2. **Apply filter**
   - Select from dropdown
   - Table updates to show matching deposits

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
   - Subtotal, Fees, Amount Deposited, Transactions, Created
   - Note: Status column is not sortable

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

- **Transactions:** Combined list of payments and refunds included
- **Fee Summary:** Payment fees, refund fees, deposit fees, and total
- **Merchant Account:** Payment processor info (if multiple accounts)
- **Description:** Additional details if available
- **Timing:** When initiated and completed

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

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No deposits showing | Check month filter |
| Amount doesn't match | Review refunds and fees |
| Missing transactions | Check deposit date range |
| Status stuck on Processing | Allow 2-3 business days |
