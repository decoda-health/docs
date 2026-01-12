# Payments Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/payments/page.tsx`
**Route:** `/[tenant]/billing/payments`

---

## Overview

The Payments page displays all payment transactions with filtering, sorting, and management capabilities. Staff can view payment details, process refunds, send receipts, move payments between patients, and create one-time payments.

---

## Available Actions

### 1. View All Payments

**Purpose:** See all payment transactions.

**Step-by-Step Instructions:**

1. **Navigate to Payments**
   - Billing → Payments

2. **View payments table**
   - Each row shows:
     - Amount (in green)
     - Patient information
     - Payment method/card
     - Payment medium
     - Date/time
     - Actions

---

### 2. Create One-Time Payment

**Purpose:** Record a payment not tied to a specific charge.

**Step-by-Step Instructions:**

1. **Click "One Time Payment" button**
   - In header area

2. **Fill payment details:**
   - Select patient or enter name
   - Enter amount
   - Select payment medium
   - Add comment (optional)

3. **Submit payment**
   - Payment recorded
   - Appears in table

---

### 3. Filter Payments

**Purpose:** Find specific payments.

**Step-by-Step Instructions:**

1. **Locate filter bar**

2. **Available filters:**
   - **Date Range:** Start/end dates
   - **Status:** Succeeded, Processing, Failed
   - **Payment Medium:** Card, Cash, Check, etc.
   - **Patient:** Search by name
   - **Merchant Account:** For specific processors
   - **Insurance Payments:** Toggle inclusion

3. **Apply filters**
   - Table updates automatically

---

### 4. Sort Payments

**Purpose:** Order by different criteria.

**Step-by-Step Instructions:**

1. **Click column header**
   - Amount, Date, Patient, etc.

2. **Toggle direction**
   - Click again to reverse

---

### 5. View Payment Timeline

**Purpose:** See detailed payment history.

**Step-by-Step Instructions:**

1. **Click expand arrow (▼)**
   - On payment row (non-insurance)

2. **View timeline**
   - Payment creation
   - Related charge
   - Refunds if any

3. **Collapse**
   - Click arrow again

---

### 6. Refund Payment

**Purpose:** Return funds to patient.

**Step-by-Step Instructions:**

1. **Click actions menu (⋮)**
   - On payment row

2. **Select "Refund Payment"**
   - Refund modal opens

3. **Configure refund:**
   - Full or partial amount
   - Reason for refund

4. **Process refund**
   - Funds returned to patient
   - Payment shows "Refunded" badge

---

### 7. View Receipt Details

**Purpose:** See and send payment receipt.

**Step-by-Step Instructions:**

1. **Click actions menu**

2. **Select "Receipt Details"**
   - Receipt modal opens

3. **View receipt information:**
   - Payment amount
   - Date/time
   - Method used
   - Items paid for

4. **Send receipt:**
   - Enter email or phone
   - Click "Send"
   - Receipt delivered

---

### 8. Generate Detailed Receipt

**Purpose:** Create comprehensive receipt document.

**Step-by-Step Instructions:**

1. **Click actions menu**
   - On payment with linked charge

2. **Select "Generate Detailed Receipt"**
   - Opens in new tab

3. **View/download receipt**
   - Full transaction details
   - Printable format

---

### 9. Move Payment to Another Patient

**Purpose:** Transfer payment to different patient.

**Step-by-Step Instructions:**

1. **Click actions menu**

2. **Select "Move to Another Patient"**
   - Modal opens

3. **Search for patient**
   - Enter name or phone

4. **Select destination patient**
   - Choose from results

5. **Confirm move**
   - Payment transferred
   - History updated

---

### 10. Move Payment to Location

**Purpose:** Change payment's location assignment.

**Step-by-Step Instructions:**

1. **Click actions menu**

2. **Select "Move to Location"**
   - Location modal opens

3. **Select new location**
   - Choose from list

4. **Confirm move**
   - Location updated

---

### 11. Export Payments

**Purpose:** Download payment data.

**Step-by-Step Instructions:**

1. **Click "Export Payments" button**

2. **Configure export:**
   - Uses current filters
   - CSV or Excel format

3. **Download file**
   - Contains all filtered payments

---

### 12. View Deposits

**Purpose:** Navigate to deposit transactions.

**Step-by-Step Instructions:**

1. **Click "View Deposits" button**
   - In header area

2. **Navigate to deposits page**
   - See all deposit/credit transactions

---

## Payment Status Badges

| Badge | Meaning |
|-------|---------|
| Succeeded | Payment completed |
| Processing | Payment in progress |
| Refunded | Payment has been refunded |
| Refund Failed | Refund attempt failed |
| Payment Plan | Part of scheduled payments |

---

## Payment Methods

| Method | Description |
|--------|-------------|
| Card | Credit/debit card |
| Cash | Cash payment |
| Check | Check payment |
| POS Terminal | In-person terminal |
| Patient Credit | Applied credit |
| Insurance | Insurance payment |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View payments | ✓ | ✓ | ✓ |
| Create one-time | ✓ | ✓ | ✓ |
| Refund | ✓ | ✓ | ✗ |
| Move payment | ✓ | ✓ | ✗ |
| Export | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Payment not showing | Check date range filters |
| Can't refund | Check if already refunded |
| Move failed | Verify permissions |
| Export empty | Adjust filters |
