# Members Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/inventory/members/[membershipId]/page.tsx`
**Route:** `/[tenant]/inventory/members/[membershipId]`

---

## Overview

The Members page displays all patients enrolled in a specific membership. Staff can view member status, filter by criteria, manage members, and see membership usage details.

---

## Available Actions

### 1. View All Members

**Purpose:** See patients enrolled in this membership.

**Step-by-Step Instructions:**

1. **Navigate to members page**
   - From memberships → Click member count
   - Or direct URL with membership ID

2. **View member list**
   - Patient name and contact
   - Status (Active, Frozen, etc.)
   - Start date
   - Payment method

---

### 2. View Membership Details

**Purpose:** See the membership configuration.

**Step-by-Step Instructions:**

1. **View membership summary**
   - Displayed at top of page
   - Shows benefits, pricing

---

### 3. Filter Members

**Purpose:** Find specific members.

**Step-by-Step Instructions:**

1. **By Status:**
   - Active
   - Frozen
   - Delinquent
   - Cancelled

2. **By Name:**
   - Search patient name

3. **By Start Date:**
   - Filter by enrollment date

---

### 4. Sort Members

**Purpose:** Organize member list.

**Step-by-Step Instructions:**

1. **Click column header**

2. **Toggle sort direction**

---

### 5. Add New Member

**Purpose:** Enroll a patient in this membership.

**Step-by-Step Instructions:**

1. **Click "Add Patient" button**
   - Top right corner

2. **Redirected to enrollment page**
   - Pre-selects current membership

---

### 6. Edit Membership

**Purpose:** Modify the membership plan.

**Step-by-Step Instructions:**

1. **Click "Edit Membership" button**

2. **Redirected to membership editor**

---

### 7. Manage Individual Member

**Purpose:** Take action on a specific member.

**Step-by-Step Instructions:**

1. **Find member in list**

2. **Click menu or action button**

3. **Available actions:**
   - View member details
   - Freeze membership
   - Cancel membership
   - Update payment method

---

### 8. Navigate Pages

**Purpose:** Browse through large member lists.

**Step-by-Step Instructions:**

1. **View pagination at bottom**

2. **Click Next/Previous**
   - Or page number

---

## Member Table Columns

| Column | Description |
|--------|-------------|
| Patient | Name and contact info |
| Status | Current membership status |
| Start Date | When membership began |
| Payment | Payment method on file |
| Actions | Available actions |

---

## Member Statuses

| Status | Meaning |
|--------|---------|
| ACTIVE | Currently enrolled and paying |
| FROZEN | Temporarily paused |
| DELINQUENT | Payment failed |
| CANCELLED | Membership ended |

---

## URL Parameters

| Parameter | Description |
|-----------|-------------|
| page | Current page number |
| perPage | Items per page |
| sortBy | Sort field |
| sortDirection | asc or desc |
| status | Filter by status |
| name | Search by name |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View members | ✓ | ✓ | ✓ |
| Add members | ✓ | ✓ | ✓ |
| Manage members | ✓ | ✓ | Limited |
| Edit membership | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Membership not found | Check membership ID |
| No members showing | Check filters applied |
| Can't add member | Verify membership is active |
| Pagination not working | URL parameters may be invalid |
