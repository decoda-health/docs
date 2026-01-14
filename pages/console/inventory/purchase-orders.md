# Purchase Orders Page - User Actions Guide

## Overview

The Purchase Orders page manages supplier orders for inventory replenishment. Staff can create orders, track shipments, take deliveries, and manage the entire procurement workflow.

---

## Available Actions

### 1. View All Purchase Orders

**Purpose:** Browse all purchase orders.

**Step-by-Step Instructions:**

1. **Navigate to Purchase Orders**
   - Inventory menu → Purchase Orders

2. **View order list**
   - Supplier name
   - Total amount
   - Progress (items received)
   - Lead time
   - Status
   - Created date

---

### 2. Create New Purchase Order

**Purpose:** Order inventory from supplier.

**Step-by-Step Instructions:**

1. **Click "New Purchase Order" button**
   - Top right corner

2. **Select supplier**

3. **Add items to order:**
   - Search for stock items
   - Set quantities
   - Confirm pricing

4. **Review order**

5. **Save as draft or place order**

---

### 3. View Order Details

**Purpose:** See complete order information.

**Step-by-Step Instructions:**

1. **Find order in list**

2. **Click expand arrow**
   - Left side of row

3. **View expanded details:**
   - All line items
   - Quantities ordered/received
   - Shipment tracking

---

### 4. Edit Purchase Order

**Purpose:** Modify draft order.

**Step-by-Step Instructions:**

1. **Find draft order**

2. **Click expand → Edit**
   - Or use row action menu

3. **Modify items/quantities**

4. **Save changes**

---

### 5. Place Order

**Purpose:** Submit order to supplier.

**Step-by-Step Instructions:**

1. **Find draft order**

2. **Click "Place Order" action**

3. **Confirm order placement**

4. **Status changes to Placed**

---

### 6. Take Delivery

**Purpose:** Record received shipment.

**Step-by-Step Instructions:**

1. **Find placed order**

2. **Click "Take Delivery"**

3. **Enter received quantities:**
   - For each line item
   - May be partial delivery

4. **Submit delivery**
   - Stock levels updated

---

### 7. Cancel Order

**Purpose:** Cancel a purchase order.

**Step-by-Step Instructions:**

1. **Find order**

2. **Click menu → Cancel**

3. **Confirm cancellation**

4. **Order marked as cancelled**

---

### 8. Reorder

**Purpose:** Create new order from existing.

**Step-by-Step Instructions:**

1. **Find completed order**

2. **Click "Reorder"**

3. **New order created with same items**

4. **Modify as needed**

---

### 9. Filter Orders

**Purpose:** Find specific orders.

**Step-by-Step Instructions:**

1. **By Status:**
   - Draft, Placed, Partially Received
   - Received, Cancelled

2. **By Supplier:**
   - Select from active suppliers

---

### 10. Sort Orders

**Purpose:** Organize order list.

**Step-by-Step Instructions:**

1. **Click column header**
   - Created date is sortable

2. **Toggle sort direction**

---

## Purchase Order Table Columns

| Column | Description |
|--------|-------------|
| Supplier | Supplier name |
| Total | Order total amount |
| Progress | Items received vs ordered |
| Lead Time | Expected delivery time |
| Status | Current order status |
| Created | When order was created |
| Actions | Available actions |

---

## Purchase Order Statuses

| Status | Meaning |
|--------|---------|
| DRAFT | Not yet placed |
| PLACED | Sent to supplier |
| PARTIALLY_RECEIVED | Some items received |
| RECEIVED | All items received |
| CANCELLED | Order cancelled |

---

## Delivery Workflow

1. **Create draft order**
2. **Place order with supplier**
3. **Wait for shipment**
4. **Take delivery (full or partial)**
5. **Stock levels auto-update**

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View orders | ✓ | ✓ | ✓ |
| Create orders | ✓ | ✓ | ✓ |
| Place orders | ✓ | ✓ | ✓ |
| Take delivery | ✓ | ✓ | ✓ |
| Cancel orders | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No suppliers | Add suppliers first |
| Can't edit | Only draft orders editable |
| Quantities wrong | Create new delivery record |
| Stock not updating | Check delivery was submitted |
