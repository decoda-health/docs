# Stock Management Page - User Actions Guide

## Overview

The Stock Management page provides inventory tracking and adjustment capabilities. Staff can view stock levels, make adjustments, transfer inventory between locations, and audit stock history.

---

## Available Actions

### 1. View Stock Levels

**Purpose:** See current inventory quantities.

**Step-by-Step Instructions:**

1. **Navigate to Stock**
   - Inventory → Stock

2. **View stock table**
   - Product name
   - SKU
   - Current quantity
   - Location
   - Status (in stock/low/out)

---

### 2. Filter by Location

**Purpose:** View stock at specific location.

**Step-by-Step Instructions:**

1. **Locate location filter**
   - Dropdown in header

2. **Select location**
   - Choose location name

3. **View filtered stock**
   - Only that location's inventory

---

### 3. Filter by Stock Status

**Purpose:** Find low or out of stock items.

**Step-by-Step Instructions:**

1. **Locate status filter**

2. **Select status:**
   - All items
   - Low stock
   - Out of stock
   - In stock

3. **View filtered results**

---

### 4. Search Products

**Purpose:** Find specific products.

**Step-by-Step Instructions:**

1. **Enter search term**
   - Product name or SKU

2. **View results**
   - Matching items shown

---

### 5. Adjust Stock Quantity

**Purpose:** Correct inventory levels.

**Step-by-Step Instructions:**

1. **Find product**
   - In stock table

2. **Click "Adjust" or quantity**
   - Adjustment modal opens

3. **Enter adjustment:**
   - New total quantity
   - Or +/- adjustment

4. **Select reason:**
   - Restock
   - Damage
   - Theft/loss
   - Correction
   - Transfer
   - Other

5. **Add notes (optional)**
   - Explain adjustment

6. **Save adjustment**
   - Stock updated
   - History recorded

---

### 6. Bulk Stock Adjustment

**Purpose:** Adjust multiple items at once.

**Step-by-Step Instructions:**

1. **Select multiple products**
   - Check boxes on rows

2. **Click "Bulk Adjust"**
   - Bulk modal opens

3. **Enter adjustments**
   - Quantity for each item

4. **Set reason**
   - Applies to all

5. **Submit adjustments**
   - All updated at once

---

### 7. Transfer Stock Between Locations

**Purpose:** Move inventory between locations.

**Step-by-Step Instructions:**

1. **Find product to transfer**

2. **Click "Transfer"**
   - Transfer modal opens

3. **Configure transfer:**
   - From location (current)
   - To location (destination)
   - Quantity to transfer

4. **Confirm transfer**
   - Source decreases
   - Destination increases

---

### 8. View Stock History

**Purpose:** See adjustment history for an item.

**Step-by-Step Instructions:**

1. **Click product row**
   - Or history icon

2. **View history log:**
   - Date/time
   - Adjustment type
   - Quantity change
   - User who made change
   - Notes/reason

3. **Filter history**
   - By date range
   - By adjustment type

---

### 9. Add Stock (Restock)

**Purpose:** Receive new inventory.

**Step-by-Step Instructions:**

1. **Navigate to Add Stock**
   - Click "Add Stock" or navigate
   - `/inventory/stock/add`

2. **Select products**
   - Search or browse

3. **Enter quantities received**
   - For each product

4. **Add receiving details:**
   - Vendor/supplier
   - Invoice number
   - Received date

5. **Submit restock**
   - Quantities added
   - History recorded

---

### 10. Export Stock Report

**Purpose:** Download inventory data.

**Step-by-Step Instructions:**

1. **Click "Export"**

2. **Select format**
   - CSV or Excel

3. **Choose data:**
   - Current stock only
   - Include history
   - Include valuations

4. **Download report**

---

### 11. Set Reorder Alerts

**Purpose:** Configure low stock notifications.

**Step-by-Step Instructions:**

1. **Find product**

2. **Click settings/edit**

3. **Set threshold**
   - Quantity that triggers alert

4. **Enable notifications**
   - Email/in-app alerts

5. **Save settings**

---

## Stock Status Indicators

| Status | Color | Meaning |
|--------|-------|---------|
| In Stock | Green | Above threshold |
| Low Stock | Yellow | At or below threshold |
| Out of Stock | Red | Zero quantity |

---

## Adjustment Reasons

| Reason | When to Use |
|--------|-------------|
| Restock | Received new inventory |
| Sale | Sold to customer |
| Damage | Item damaged |
| Theft/Loss | Unaccounted loss |
| Correction | Fix counting error |
| Transfer | Moved to another location |
| Return | Customer returned item |
| Expired | Product expired |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View stock | ✓ | ✓ | ✓ |
| Adjust stock | ✓ | ✓ | ✓ |
| Transfer stock | ✓ | ✓ | ✗ |
| View history | ✓ | ✓ | ✓ |
| Export | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Stock count wrong | Check adjustment history |
| Transfer failed | Verify source has quantity |
| Alerts not working | Check notification settings |
| History missing | May be filtered by date |
