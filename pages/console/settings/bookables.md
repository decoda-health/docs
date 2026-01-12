# Bookables Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/bookables/page.tsx`
**Route:** `/[tenant]/settings/bookables`

---

## Overview

The Bookables page manages schedulable resources like rooms, equipment, and other assets that can be reserved for appointments. Bookables prevent double-booking of shared resources.

---

## Available Actions

### 1. View All Bookables

**Purpose:** Browse available resources.

**Step-by-Step Instructions:**

1. **Navigate to Bookables**
   - Settings → Bookables

2. **View bookables table**
   - Name
   - Type
   - Location
   - Availability

---

### 2. Create Bookable

**Purpose:** Add new resource.

**Step-by-Step Instructions:**

1. **Click "Create Bookable"**

2. **Select type:**
   - Room
   - Equipment
   - Other resource

3. **Enter details:**
   - Name
   - Location
   - Capacity

4. **Configure availability**

5. **Save**

---

### 3. Edit Bookable

**Purpose:** Modify resource settings.

**Step-by-Step Instructions:**

1. **Find bookable in table**

2. **Click to edit**

3. **Modify settings**

4. **Save changes**

---

### 4. Delete Bookable

**Purpose:** Remove a resource.

**Step-by-Step Instructions:**

1. **Find bookable**

2. **Click delete**

3. **Confirm deletion**

---

## Bookable Types

| Type | Example |
|------|---------|
| Room | Treatment Room 1 |
| Equipment | Laser Machine |
| Resource | Consultation Suite |

---

## Availability

Configure when bookable is available:
- By day of week
- By time range
- By location

---

## Calendar Integration

Bookables appear on calendar:
- Linked to appointments
- Shows conflicts
- Prevents double-booking

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View bookables | ✓ | ✓ | ✓ |
| Create bookable | ✓ | ✓ | ✗ |
| Edit bookable | ✓ | ✓ | ✗ |
| Delete bookable | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Bookable not available | Check availability settings |
| Double-booking | Verify bookable assigned |
| Not on calendar | Check location assignment |
