# Carts Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/carts/page.tsx`
**Route:** `/[tenant]/billing/carts`

---

## Overview

The Carts page manages patient shopping carts. Staff can view all carts, create new ones, search through existing carts, and convert them to charges or quotes for patient payment.

---

## Available Actions

### 1. View All Carts

**Purpose:** Browse all patient shopping carts.

**Step-by-Step Instructions:**

1. **Navigate to Carts**
   - Billing menu → Carts

2. **View cart list**
   - Patient name
   - Cart status
   - Items in cart
   - Total amount
   - Creator
   - Created date

---

### 2. Search Carts

**Purpose:** Find specific carts quickly.

**Step-by-Step Instructions:**

1. **Locate search bar**
   - Below page header

2. **Enter search term**
   - Patient name
   - Phone number
   - Cart ID
   - Creator name
   - Status
   - Item names

3. **View results**
   - Table filters in real-time

---

### 3. Create New Cart

**Purpose:** Start a new shopping cart for a patient.

**Step-by-Step Instructions:**

1. **Click "Create Cart" button**
   - Top right corner

2. **Redirected to cart creation page**
   - Select patient
   - Add products/services
   - Apply discounts

---

### 4. View Cart Details

**Purpose:** See complete cart information.

**Step-by-Step Instructions:**

1. **Click on cart row**
   - Opens cart details

2. **Review:**
   - Patient information
   - All cart items
   - Quantities and prices
   - Discounts applied
   - Total amount

---

### 5. Edit Cart

**Purpose:** Modify an existing cart.

**Step-by-Step Instructions:**

1. **Select cart to edit**

2. **Click edit action**
   - Opens edit form

3. **Make changes:**
   - Add/remove items
   - Adjust quantities
   - Update discounts

4. **Save changes**

---

### 6. Convert Cart to Charge

**Purpose:** Create a charge from cart items.

**Step-by-Step Instructions:**

1. **Select cart**

2. **Click "Convert to Charge"**

3. **Review charge details**

4. **Confirm conversion**
   - Cart becomes a charge
   - Ready for payment

---

### 7. Convert Cart to Quote

**Purpose:** Create a quote from cart for patient review.

**Step-by-Step Instructions:**

1. **Select cart**

2. **Click "Create Quote"**

3. **Configure quote options:**
   - Expiration date
   - Terms/notes

4. **Send to patient**
   - Patient can accept or decline

---

### 8. Delete Cart

**Purpose:** Remove unwanted carts.

**Step-by-Step Instructions:**

1. **Select cart**

2. **Click "Delete"**

3. **Confirm deletion**
   - Cart permanently removed

---

## Cart Table Columns

| Column | Description |
|--------|-------------|
| Patient | Patient name |
| Status | Draft, Pending, Converted |
| Items | Number of items |
| Total | Cart total amount |
| Creator | Staff who created |
| Created | Creation date |

---

## Cart Statuses

| Status | Meaning |
|--------|---------|
| Draft | In progress |
| Pending | Ready for conversion |
| Converted | Became charge/quote |
| Expired | No longer valid |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View carts | ✓ | ✓ | ✓ |
| Create carts | ✓ | ✓ | ✓ |
| Edit carts | ✓ | ✓ | ✓ |
| Delete carts | ✓ | ✓ | ✗ |
| Convert to charge | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Cart not found | Check search spelling |
| Can't convert | Verify cart has items |
| Patient missing | Cart may need patient assigned |
| Items unavailable | Check product active status |
