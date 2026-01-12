# Package Usage Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/inventory/packages/package-usage/[packageId]/page.tsx`
**Route:** `/[tenant]/inventory/packages/package-usage/[packageId]`

---

## Overview

The Package Usage page shows all patients who purchased a specific package and their usage history. Staff can view remaining credits, usage timeline, and manage individual sold packages.

---

## Available Actions

### 1. View All Package Purchases

**Purpose:** See who bought this package.

**Step-by-Step Instructions:**

1. **Navigate to package usage**
   - From packages → Click patient count

2. **View sold packages list**
   - Patient name and contact
   - Status
   - Usage progress
   - Dates
   - Price paid

---

### 2. View Package Details

**Purpose:** See package configuration.

**Step-by-Step Instructions:**

1. **View package summary**
   - At top of page
   - Shows included items and quantities

---

### 3. Filter Purchases

**Purpose:** Find specific purchases.

**Step-by-Step Instructions:**

1. **By Status:**
   - Active
   - Used
   - Cancelled

2. **By Patient Name:**
   - Search patient

3. **By Date:**
   - Purchase date filter

---

### 4. View Usage Progress

**Purpose:** See how much of package is used.

**Step-by-Step Instructions:**

1. **View progress bars**
   - Each item shows used/total
   - Percentage complete

2. **Visual indication:**
   - Blue fill = used portion
   - Gray = remaining

---

### 5. View Usage Timeline

**Purpose:** See when package items were used.

**Step-by-Step Instructions:**

1. **Click expand arrow**
   - Left side of row

2. **Timeline opens below**
   - Shows each usage event
   - Dates and quantities

---

### 6. Cancel Sold Package

**Purpose:** Cancel a patient's package.

**Step-by-Step Instructions:**

1. **Find sold package**

2. **Click menu (three dots)**

3. **Select "Cancel Package"**

4. **Enter cancellation reason**

5. **Confirm cancellation**
   - Status changes to Cancelled

---

### 7. Reactivate Cancelled Package

**Purpose:** Restore a cancelled package.

**Step-by-Step Instructions:**

1. **Find cancelled package**
   - Filter by Cancelled status

2. **Click menu (three dots)**

3. **Select "Reactivate Package"**

4. **Confirm reactivation**
   - Status changes to Active

---

### 8. Sort Purchases

**Purpose:** Organize the list.

**Step-by-Step Instructions:**

1. **Click column header**

2. **Toggle sort direction**

---

## Sold Package Table Columns

| Column | Description |
|--------|-------------|
| Patient | Name, phone, email |
| Status | Active, Used, Cancelled |
| Usage | Progress bars per item |
| Dates | Purchase and last activity |
| Price | Amount paid with discounts |
| Actions | Menu options |

---

## Package Statuses

| Status | Badge Color | Meaning |
|--------|-------------|---------|
| ACTIVE | Green | In use, has remaining credits |
| USED | Gray | All items consumed |
| CANCELLED | Red | Manually cancelled |

---

## Usage Calculation

For each item in package:
- **Total Available:** Quantity included in package
- **Total Used:** Sum of consumed quantities
- **Usage %:** (Used / Available) × 100

---

## Timeline View

Expanded timeline shows:
- Each charge using package items
- Date of usage
- Items and quantities used
- Charge details

---

## Empty State

If no purchases yet:
- Shows empty state message
- "No usage yet"
- Indicates package hasn't been sold

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View usage | ✓ | ✓ | ✓ |
| Cancel package | ✓ | ✓ | ✗ |
| Reactivate package | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Package not found | Check package ID |
| No patients showing | Package not sold yet |
| Can't cancel | Check permissions |
| Usage not updating | Refresh page |
