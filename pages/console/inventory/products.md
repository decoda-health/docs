# Products Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/inventory/products/page.tsx`
**Route:** `/[tenant]/inventory/products`

---

## Overview

The Products page manages the practice's product catalog including retail items, consumables, and equipment. Staff can add, edit, categorize, and track inventory levels.

---

## Available Actions

### 1. View All Products

**Purpose:** Browse the complete product catalog.

**Step-by-Step Instructions:**

1. **Navigate to Products**
   - Inventory → Products

2. **View product list**
   - Each product shows:
     - Name and image
     - SKU
     - Price
     - Stock level
     - Category

---

### 2. Search Products

**Purpose:** Find specific products quickly.

**Step-by-Step Instructions:**

1. **Locate search box**
   - At top of product list

2. **Enter search term**
   - Product name
   - SKU
   - Description keywords

3. **View results**
   - Matching products shown

---

### 3. Filter by Category

**Purpose:** View products in specific categories.

**Step-by-Step Instructions:**

1. **Locate category filter**
   - Dropdown or sidebar

2. **Select category**
   - Click category name

3. **View filtered products**
   - Only category items shown

---

### 4. Add New Product

**Purpose:** Create a new product in catalog.

**Step-by-Step Instructions:**

1. **Click "Add Product"**
   - Button in header

2. **Fill product details:**
   - **Name:** Product display name
   - **SKU:** Stock keeping unit
   - **Description:** Product details
   - **Category:** Assign to category
   - **Price:** Selling price
   - **Cost:** Your cost (for profit tracking)
   - **Tax:** Tax category
   - **Image:** Upload product photo

3. **Configure inventory:**
   - Track inventory toggle
   - Initial stock quantity
   - Reorder threshold

4. **Save product**
   - Product added to catalog

---

### 5. Edit Product

**Purpose:** Modify existing product details.

**Step-by-Step Instructions:**

1. **Find product in list**

2. **Click product or edit icon**
   - Opens edit form

3. **Modify details**
   - Update any fields

4. **Save changes**
   - Product updated

---

### 6. Upload Product Image

**Purpose:** Add visual for product.

**Step-by-Step Instructions:**

1. **Edit product**

2. **Click image upload area**
   - File picker opens

3. **Select image**
   - JPG, PNG, or WebP
   - Recommended: 500x500px

4. **Save product**
   - Image displayed

---

### 7. Set Product Price

**Purpose:** Configure pricing.

**Step-by-Step Instructions:**

1. **Edit product**

2. **Enter price fields:**
   - **Selling Price:** What customer pays
   - **Cost:** Your purchase cost
   - **Compare Price:** Original/strikethrough price

3. **Save changes**

---

### 8. Manage Stock Levels

**Purpose:** Track and update inventory.

**Step-by-Step Instructions:**

1. **Find product**

2. **View current stock**
   - Stock level displayed

3. **Adjust stock:**
   - Click adjust button
   - Enter new quantity
   - Or +/- adjustment

4. **Record reason**
   - Sale, restock, damage, etc.

---

### 9. Set Low Stock Alert

**Purpose:** Get notified when stock is low.

**Step-by-Step Instructions:**

1. **Edit product**

2. **Find reorder threshold**
   - Inventory settings

3. **Set threshold**
   - Enter minimum quantity
   - Alert triggers below this

4. **Save product**

---

### 10. Deactivate Product

**Purpose:** Remove from active catalog without deleting.

**Step-by-Step Instructions:**

1. **Edit product**

2. **Toggle active status**
   - Switch to inactive

3. **Save changes**
   - Product hidden from sales
   - History preserved

---

### 11. Delete Product

**Purpose:** Permanently remove product.

**Step-by-Step Instructions:**

1. **Find product**

2. **Click delete option**
   - In actions menu

3. **Confirm deletion**
   - Warning about data loss
   - Click confirm

---

### 12. Export Products

**Purpose:** Download product catalog.

**Step-by-Step Instructions:**

1. **Click "Export"**

2. **Select format**
   - CSV or Excel

3. **Download file**
   - Complete catalog data

---

## Product Fields Reference

| Field | Description |
|-------|-------------|
| Name | Display name |
| SKU | Stock keeping unit (unique) |
| Description | Detailed description |
| Category | Product category |
| Price | Selling price |
| Cost | Your cost |
| Tax Category | Tax treatment |
| Stock | Current quantity |
| Threshold | Low stock alert level |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View products | ✓ | ✓ | ✓ |
| Add products | ✓ | ✓ | ✗ |
| Edit products | ✓ | ✓ | ✗ |
| Delete products | ✓ | ✗ | ✗ |
| Adjust stock | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Product not showing | Check if active, check category |
| Image not uploading | Check file size/format |
| Stock incorrect | Review adjustment history |
| Can't delete | May have associated transactions |
