# Services Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/services/page.tsx`
**Route:** `/[tenant]/settings/services`

---

## Overview

The Services page manages the practice's service catalog. Staff can create, edit, price, and configure services that patients can book and purchase.

---

## Available Actions

### 1. View All Services

**Purpose:** Browse the complete service catalog.

**Step-by-Step Instructions:**

1. **Navigate to Services**
   - Settings → Services

2. **View service list**
   - Service name
   - Duration
   - Price
   - Category
   - Status (active/inactive)

---

### 2. Add New Service

**Purpose:** Create a new bookable service.

**Step-by-Step Instructions:**

1. **Click "Add Service"**

2. **Enter service details:**
   - **Name:** Service display name
   - **Description:** What's included
   - **Duration:** Time required (minutes)
   - **Category:** Service category
   - **Price:** Standard price
   - **Color:** Calendar display color

3. **Configure booking settings:**
   - Buffer time before/after
   - Online booking enabled
   - New patient eligible
   - Resources required

4. **Assign providers:**
   - Select who can perform
   - All or specific providers

5. **Save service**

---

### 3. Edit Service

**Purpose:** Modify existing service.

**Step-by-Step Instructions:**

1. **Find service in list**

2. **Click service or edit icon**

3. **Modify details**
   - Update any fields

4. **Save changes**

---

### 4. Set Service Price

**Purpose:** Configure pricing.

**Step-by-Step Instructions:**

1. **Edit service**

2. **Set price fields:**
   - **Regular Price:** Standard rate
   - **Member Price:** For members
   - **Cost:** Your cost (for tracking)

3. **Configure pricing options:**
   - Variable pricing enabled
   - Price range (min/max)
   - Insurance billable

4. **Save changes**

---

### 5. Set Duration

**Purpose:** Configure service time.

**Step-by-Step Instructions:**

1. **Edit service**

2. **Enter duration**
   - In minutes
   - E.g., 30, 45, 60

3. **Set buffer times:**
   - Before service (setup)
   - After service (cleanup)

4. **Save changes**

---

### 6. Assign Providers

**Purpose:** Set who can perform service.

**Step-by-Step Instructions:**

1. **Edit service**

2. **Find provider assignment**

3. **Select providers:**
   - All providers
   - Specific providers only

4. **Save changes**
   - Service appears on their schedule

---

### 7. Assign to Category

**Purpose:** Organize services.

**Step-by-Step Instructions:**

1. **Edit service**

2. **Select category**
   - From dropdown
   - Or create new

3. **Save changes**

---

### 8. Enable Online Booking

**Purpose:** Allow patients to self-schedule.

**Step-by-Step Instructions:**

1. **Edit service**

2. **Toggle "Online Booking"**
   - Enable for self-schedule

3. **Configure options:**
   - New patients allowed
   - Returning patients only
   - Requires deposit

4. **Save changes**

---

### 9. Require Resources

**Purpose:** Link service to room/equipment.

**Step-by-Step Instructions:**

1. **Edit service**

2. **Find resources section**

3. **Select required resources:**
   - Specific room
   - Equipment needed

4. **Save changes**
   - Booking checks availability

---

### 10. Deactivate Service

**Purpose:** Remove from active catalog.

**Step-by-Step Instructions:**

1. **Find service**

2. **Toggle active status**
   - Or click "Deactivate"

3. **Confirm**
   - Service hidden from booking
   - Historical data preserved

---

### 11. Delete Service

**Purpose:** Permanently remove service.

**Step-by-Step Instructions:**

1. **Find service**

2. **Click "Delete"**

3. **Confirm deletion**
   - Warning if has history
   - Permanently removed

---

### 12. Reorder Services

**Purpose:** Change display order.

**Step-by-Step Instructions:**

1. **Enable drag mode**
   - If available

2. **Drag service**
   - To new position

3. **Drop to place**
   - Order saved

---

### 13. Duplicate Service

**Purpose:** Copy existing service.

**Step-by-Step Instructions:**

1. **Find service**

2. **Click "Duplicate"**
   - Copy created

3. **Edit copy**
   - Change name, details

4. **Save new service**

---

## Service Settings

| Setting | Description |
|---------|-------------|
| Duration | Time required |
| Buffer | Time before/after |
| Price | Standard rate |
| Online Booking | Self-schedule enabled |
| Providers | Who can perform |
| Resources | Required rooms/equipment |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View services | ✓ | ✓ | ✓ |
| Add services | ✓ | ✓ | ✗ |
| Edit services | ✓ | ✓ | ✗ |
| Delete services | ✓ | ✗ | ✗ |
| Set prices | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Service not in booking | Check if active, online enabled |
| Provider can't see | Check provider assignment |
| Duration conflicts | Adjust buffer times |
| Can't delete | May have historical bookings |
