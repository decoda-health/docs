# Create/Edit Cart Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/billing/carts/create/page.tsx`
**Route:** `/[tenant]/billing/carts/create`

---

## Overview

The Create Cart page allows staff to build shopping carts for patients. It supports creating new carts, editing existing ones, and duplicating carts. The page provides real-time preview and supports products, packages, and discounts.

---

## Available Actions

### 1. Select Patient

**Purpose:** Associate the cart with a patient.

**Step-by-Step Instructions:**

1. **Locate Patient Selection section**
   - First section on the form

2. **Search for patient**
   - Type patient name
   - Or phone number

3. **Select from results**
   - Click patient name
   - Patient info appears

4. **Or create new patient**
   - Click "Create Patient" if not found
   - Enter patient details

**Note:** Patient cannot be changed when editing an existing cart.

---

### 2. Add Products to Cart

**Purpose:** Add items or packages to the cart.

**Step-by-Step Instructions:**

1. **Locate "Add Products" section**

2. **Search for product**
   - Type product name
   - Browse categories

3. **Select item or package**
   - Click to add to cart
   - Default quantity is 1

4. **Repeat for additional products**

---

### 3. Adjust Item Quantities

**Purpose:** Change quantity of items in cart.

**Step-by-Step Instructions:**

1. **Find item in "Added Products" section**

2. **Locate quantity controls**
   - Plus/minus buttons
   - Or direct input

3. **Adjust quantity**
   - Increase or decrease
   - Minimum is 1

4. **View updated total**
   - Cart preview updates automatically

---

### 4. Apply Item Discount

**Purpose:** Discount individual items.

**Step-by-Step Instructions:**

1. **Find item in cart**

2. **Click discount option**
   - On item row

3. **Enter discount:**
   - **Percentage:** e.g., 10%
   - **Amount:** e.g., $5.00
   - **Reason:** Optional note

4. **View discounted price**
   - Shows original and new price

---

### 5. Apply Cart-Wide Discount

**Purpose:** Discount the entire cart.

**Step-by-Step Instructions:**

1. **Scroll to "Additional Options" section**

2. **Find cart discount controls**

3. **Enter discount:**
   - **Percentage:** Applied to subtotal
   - **Amount:** Fixed dollar discount

4. **View updated total**
   - Preview shows discount

---

### 6. Add Cart Notes

**Purpose:** Include notes about the cart.

**Step-by-Step Instructions:**

1. **Scroll to "Notes" section**

2. **Enter notes**
   - Special instructions
   - Reason for cart
   - Staff notes

3. **Notes are saved with cart**

---

### 7. Remove Item from Cart

**Purpose:** Delete items from the cart.

**Step-by-Step Instructions:**

1. **Find item in "Added Products" section**

2. **Click remove/delete icon**
   - Usually X or trash icon

3. **Item is removed**
   - Cart total updates

---

### 8. Review Cart Preview

**Purpose:** See cart summary before saving.

**Step-by-Step Instructions:**

1. **Locate "Cart Preview" panel**
   - Right side of page

2. **Review:**
   - Patient name
   - All items with prices
   - Discounts applied
   - Subtotal
   - Total

---

### 9. Create Cart

**Purpose:** Save the new cart.

**Step-by-Step Instructions:**

1. **Verify patient is selected**

2. **Verify at least one item added**

3. **Click "Create Cart" button**
   - Top right corner

4. **Wait for confirmation**
   - Success toast appears
   - Redirected to carts list

---

### 10. Update Cart (Edit Mode)

**Purpose:** Save changes to existing cart.

**Step-by-Step Instructions:**

1. **Make desired changes**
   - Add/remove items
   - Adjust quantities
   - Update discounts

2. **Click "Update Cart" button**

3. **Wait for confirmation**
   - Changes saved
   - Redirected to carts list

---

### 11. Duplicate Cart

**Purpose:** Create copy of existing cart for another patient.

**Step-by-Step Instructions:**

1. **Access via duplicate link**
   - URL has `duplicate=true`

2. **Items are pre-filled**
   - From original cart

3. **Select new patient**
   - Required for duplicate

4. **Modify as needed**

5. **Save new cart**

---

### 12. Cancel Cart Creation

**Purpose:** Discard changes and return.

**Step-by-Step Instructions:**

1. **Click "Cancel" button**
   - Or back arrow

2. **Confirm if prompted**
   - Unsaved changes lost

3. **Return to carts list**

---

## Form Sections

| Section | Description |
|---------|-------------|
| Patient Selection | Choose or create patient |
| Add Products | Search and add items/packages |
| Added Products | Review and adjust items |
| Notes | Optional cart notes |
| Additional Options | Cart-wide discounts |
| Cart Preview | Real-time summary |

---

## Cart Preview Details

The preview panel shows:
- Patient name
- Creator name
- Cart status (Draft)
- Each item with quantity and price
- Item-level discounts
- Subtotal
- Cart-level discount
- Final total

---

## Validation Rules

| Rule | Description |
|------|-------------|
| Patient required | Must select a patient |
| Items required | At least one item needed |
| Quantity minimum | Cannot be less than 1 |
| Discount limits | Cannot exceed item price |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Create cart | ✓ | ✓ | ✓ |
| Edit cart | ✓ | ✓ | ✓ |
| Apply discounts | ✓ | ✓ | ✓ |
| Delete items | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Product not found | Check if product is active |
| Can't save cart | Verify patient and items |
| Discount not applying | Check discount value |
| Patient search empty | Try different search term |
| Edit mode not loading | Check cart ID in URL |
