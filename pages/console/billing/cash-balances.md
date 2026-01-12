# Cash Balances Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/cash-balances/page.tsx`
**Route:** `/[tenant]/billing/cash-balances`

---

## Overview

The Cash Balances page tracks cash on hand at each location. Staff can view the cash timeline, make pay-in/pay-out adjustments, close the register, and reconcile discrepancies between expected and actual cash amounts.

---

## Available Actions

### 1. View Cash Balance Timeline

**Purpose:** See history of cash balance changes.

**Step-by-Step Instructions:**

1. **Navigate to Cash Balances**
   - Billing menu → Cash Balances

2. **View timeline**
   - Balance closures
   - Adjustments (pay-in/pay-out)
   - Cash payments received
   - External settlements

3. **Scroll for more history**
   - Infinite scroll loads more
   - Shows "No more history" when complete

---

### 2. Record Pay-In

**Purpose:** Add cash to the register.

**Step-by-Step Instructions:**

1. **Click "Pay In" button**
   - Shows plus icon

2. **Enter details:**
   - **Amount:** Cash being added
   - **Reason:** Why cash is being added

3. **Submit**
   - Adjustment recorded
   - Timeline updates

---

### 3. Record Pay-Out

**Purpose:** Remove cash from the register.

**Step-by-Step Instructions:**

1. **Click "Pay Out" button**
   - Shows minus icon

2. **Enter details:**
   - **Amount:** Cash being removed
   - **Reason:** Purpose (e.g., "Bank deposit", "Petty cash")

3. **Submit**
   - Adjustment recorded
   - Timeline updates

---

### 4. Close Cash Balance

**Purpose:** Close the register and reconcile cash.

**Step-by-Step Instructions:**

1. **Click "Close Cash Balance" button**
   - Navigates to close register page

2. **Count cash**
   - Enter bills and coins

3. **Review discrepancy**
   - Compare to expected

4. **Submit closing balance**

---

### 5. Set Up Initial Balance

**Purpose:** Establish starting cash balance.

**Step-by-Step Instructions:**

1. **If no balance exists:**
   - Setup wizard appears

2. **Enter initial cash amount**
   - Current cash on hand

3. **Submit**
   - Initial balance established
   - Timeline begins

---

### 6. Acknowledge Discrepancy

**Purpose:** Accept a cash discrepancy.

**Step-by-Step Instructions:**

1. **Find discrepancy in timeline**
   - Marked with warning

2. **Click "Acknowledge"**
   - On discrepancy item

3. **Confirm acknowledgment**
   - Discrepancy marked as reviewed

---

### 7. Void Cash Balance

**Purpose:** Cancel a balance closure.

**Step-by-Step Instructions:**

1. **Find balance closure in timeline**

2. **Click void option**
   - Opens confirmation modal

3. **Confirm void**
   - Balance closure removed
   - Timeline recalculates

---

### 8. Void Adjustment

**Purpose:** Cancel a pay-in/pay-out.

**Step-by-Step Instructions:**

1. **Find adjustment in timeline**

2. **Click void option**

3. **Confirm void**
   - Adjustment removed
   - Balance recalculates

---

### 9. Update Balance Date

**Purpose:** Correct the date of a balance closure.

**Step-by-Step Instructions:**

1. **Find balance in timeline**

2. **Click date edit option**

3. **Select new date**

4. **Save**
   - Date updated

---

### 10. Update Adjustment Date

**Purpose:** Correct the date of an adjustment.

**Step-by-Step Instructions:**

1. **Find adjustment in timeline**

2. **Click date edit option**

3. **Select new date**

4. **Save**
   - Date updated

---

### 11. Switch Location

**Purpose:** View cash balance for different location.

**Step-by-Step Instructions:**

1. **Use location selector**
   - In header or user menu

2. **Select location**
   - Timeline updates for that location

---

## Timeline Event Types

| Event Type | Description |
|------------|-------------|
| Balance Closure | Register closing with counted cash |
| Adjustment | Pay-in or pay-out |
| Cash Payment | Customer paid with cash |
| External Settlement | Card terminal deposit |

---

## Expected Balance Calculation

The expected cash balance is calculated as:
- Last closing balance
- \+ Cash payments received
- \- Cash refunds given
- \+ Pay-ins
- \- Pay-outs
- = Expected cash on hand

---

## Discrepancy Handling

| Situation | Meaning |
|-----------|---------|
| Positive discrepancy | More cash than expected (over) |
| Negative discrepancy | Less cash than expected (short) |
| Zero discrepancy | Cash matches expected |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View balances | ✓ | ✓ | ✓ |
| Pay in/out | ✓ | ✓ | ✓ |
| Close register | ✓ | ✓ | ✓ |
| Void balance | ✓ | ✓ | ✗ |
| Acknowledge discrepancy | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No location selected | Select a location |
| Can't see history | Wait for load or scroll |
| Balance not updating | Refresh the page |
| Void fails | Check permissions |
| Initial setup missing | Complete setup wizard |
