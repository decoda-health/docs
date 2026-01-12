# Memberships Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/inventory/memberships/page.tsx`
**Route:** `/[tenant]/inventory/memberships`

---

## Overview

The Memberships page manages recurring membership plans. Staff can create, edit, and archive memberships, view member counts, track revenue, and manage membership benefits like credits and discounts.

---

## Available Actions

### 1. View All Memberships

**Purpose:** Browse all membership plans.

**Step-by-Step Instructions:**

1. **Navigate to Memberships**
   - Inventory menu → Memberships

2. **View membership list**
   - Name and description
   - Price and billing frequency
   - Member count
   - Total revenue
   - Created date

---

### 2. Add New Membership

**Purpose:** Create a new membership plan.

**Step-by-Step Instructions:**

1. **Click "Add Membership" button**
   - Top right corner

2. **Redirected to membership editor**
   - Configure name, price, benefits

---

### 3. View Membership Details

**Purpose:** See complete membership configuration.

**Step-by-Step Instructions:**

1. **Find membership in list**

2. **Click expand arrow (chevron)**
   - Left side of row

3. **View expanded details:**
   - Included benefits
   - Discounted items
   - Patient credits
   - Global discount percentage

---

### 4. Edit Membership

**Purpose:** Modify membership configuration.

**Step-by-Step Instructions:**

1. **Find membership**

2. **Click menu (three dots)**

3. **Select "Edit Membership"**

4. **Redirected to editor**

---

### 5. View Members

**Purpose:** See patients enrolled in membership.

**Step-by-Step Instructions:**

1. **Find membership**

2. **Click member count link**
   - Shows "X active"

3. **Or use menu → "View Members"**

4. **Redirected to members list**

---

### 6. Add New Member

**Purpose:** Enroll a patient in membership.

**Step-by-Step Instructions:**

1. **Find membership**

2. **Click menu (three dots)**

3. **Select "Add New Member"**

4. **Redirected to enrollment page**

---

### 7. Archive Membership

**Purpose:** Deactivate membership (prevent new enrollments).

**Step-by-Step Instructions:**

1. **Find membership**

2. **Click menu (three dots)**

3. **Select "Archive"**

4. **Confirm archival**
   - Existing members keep benefits
   - No new enrollments allowed

---

### 8. Sort Memberships

**Purpose:** Organize membership list.

**Step-by-Step Instructions:**

1. **Click column header**
   - Name, Price, Members, etc.

2. **Toggle sort direction**
   - Ascending/descending

---

## Membership Table Columns

| Column | Description |
|--------|-------------|
| Membership | Name, description, created date |
| Price | Monthly/yearly cost |
| Frequency | Billing cycle (monthly, annual) |
| Members | Active member count with credit info |
| Total Revenue | Lifetime revenue from membership |
| Actions | Menu with options |

---

## Membership Details (Expanded)

When expanded, shows:
- Included items/services with discounts
- Patient credit amount
- Global discount percentage
- Rollover policy for unused benefits

---

## Billing Frequencies

| Frequency | Billing Cycle |
|-----------|---------------|
| MONTHLY | Every month |
| QUARTERLY | Every 3 months |
| SEMI_ANNUALLY | Every 6 months |
| ANNUALLY | Every year |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View memberships | ✓ | ✓ | ✓ |
| Add memberships | ✓ | ✓ | ✗ |
| Edit memberships | ✓ | ✓ | ✗ |
| Archive memberships | ✓ | ✓ | ✗ |
| View members | ✓ | ✓ | ✓ |
| Add members | ✓ | ✓ | ✓ |

---

## Mobile Note

Mobile view is limited. Desktop browser recommended for membership management.

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Can't archive | Check if has active members |
| Members not showing | Click member count link |
| Details not expanding | Click chevron icon |
| Revenue not updating | May take time to sync |
