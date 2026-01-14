# Membership Edit Page - User Actions Guide

## Overview

The Membership Edit page allows creating new memberships or editing existing ones. Configure pricing, billing frequency, patient credits, global discounts, and item-specific discounts.

---

## Available Actions

### 1. Set Basic Information

**Purpose:** Configure membership name and description.

**Step-by-Step Instructions:**

1. **Locate "Basic Information" section**

2. **Enter membership name**
   - Required field
   - Display name for patients

3. **Enter description**
   - Optional
   - Explains membership benefits

4. **Set text color**
   - Color picker for branding

---

### 2. Configure Billing Frequency

**Purpose:** Set how often members are charged.

**Step-by-Step Instructions:**

1. **Locate "Billing Frequency" section**

2. **Select frequency:**
   - Monthly
   - Quarterly
   - Semi-annually
   - Annually

3. **Set price**
   - Amount per billing cycle

4. **Configure setup fee (optional)**
   - One-time fee on enrollment
   - Can be negative for promotional discount

5. **Set freeze fee (optional)**
   - Fee for temporarily freezing membership

6. **Set minimum billing cycles**
   - Minimum commitment period

---

### 3. Configure Credits and Global Discounts

**Purpose:** Set membership-wide benefits.

**Step-by-Step Instructions:**

1. **Locate "Credits and Global Discounts" section**

2. **Set patient credit amount**
   - Credit added each billing cycle

3. **Configure credit expiry**
   - Days until credit expires

4. **Set credit to bank option**
   - Whether unused credits roll over

5. **Set global discount percentage**
   - Discount on all items/services

---

### 4. Add Discounted Items

**Purpose:** Configure item-specific discounts.

**Step-by-Step Instructions:**

1. **Locate "Discounted Items" section**

2. **Click "Add Discount"**

3. **Select discount type:**
   - Specific item
   - Category
   - Item group
   - Physical vs service items

4. **Set discount percentage**
   - 0-100%

5. **Set quantity (for 100% discounts)**
   - Required for free items
   - 0 = unlimited

6. **Configure rollover policy**

---

### 5. Remove Discounted Item

**Purpose:** Delete an item discount.

**Step-by-Step Instructions:**

1. **Find discount in list**

2. **Click remove/delete icon**

3. **Discount removed**

---

### 6. Save Membership

**Purpose:** Save changes and return to list.

**Step-by-Step Instructions:**

1. **Verify required fields:**
   - Name is set
   - At least one benefit configured

2. **Click "Save Membership"**
   - Top right corner

3. **Wait for save**
   - Success toast appears
   - Redirected to memberships list

---

### 7. Cancel Editing

**Purpose:** Discard changes and return.

**Step-by-Step Instructions:**

1. **Click "Cancel"**
   - Or back arrow

2. **Changes discarded**
   - Return to memberships list

---

## Form Sections

| Section | Description |
|---------|-------------|
| Basic Information | Name, description, color |
| Billing Frequency | Price, cycle, fees |
| Credits and Global Discounts | Account credits, store-wide discount |
| Discounted Items | Item-specific discounts |

---

## Validation Rules

| Rule | Description |
|------|-------------|
| Name required | Must have a name |
| Benefits required | At least one: discounts, credit, or global discount |
| 100% discount quantity | Must specify quantity for free items |
| Valid discount target | Each discount must have item/category/group |

---

## Discount Types

| Type | Description |
|------|-------------|
| Specific Item | Discount on one product/service |
| Category | Discount on all items in category |
| Group | Discount on item group |
| Physical/Service | Discount by item type |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Create membership | ✓ | ✓ | ✗ |
| Edit membership | ✓ | ✓ | ✗ |
| Set pricing | ✓ | ✓ | ✗ |
| Configure discounts | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Save fails | Check required fields |
| "Benefits required" | Add at least one discount/credit |
| "Quantity required" | Set quantity for 100% discounts |
| Membership not found | Check ID or it was deleted |
