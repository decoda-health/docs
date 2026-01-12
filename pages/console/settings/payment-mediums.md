# Payment Mediums Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/payment-mediums/page.tsx`
**Route:** `/[tenant]/settings/payment-mediums`

---

## Overview

The Payment Mediums page manages settlement types for transactions. System payment mediums (Cash, Card, etc.) are built-in, while custom mediums (Venmo, Zelle, HSA) can be added to track alternative payment methods.

---

## Available Actions

### 1. View All Payment Mediums

**Purpose:** Browse available settlement types.

**Step-by-Step Instructions:**

1. **Navigate to Payment Mediums**
   - Settings → Payment Mediums

2. **View table:**
   - Name
   - Type (System/Custom)
   - Actions

---

### 2. Add Custom Settlement Type

**Purpose:** Create new payment method.

**Step-by-Step Instructions:**

1. **Click "Add Custom Settlement Type"**
   - Top right

2. **Enter name**
   - e.g., "Venmo", "Zelle", "HSA Card"

3. **Click "Create"**

4. **New medium appears in table**

---

### 3. Edit Custom Medium

**Purpose:** Rename custom payment type.

**Step-by-Step Instructions:**

1. **Find custom medium**
   - Has "Custom" badge

2. **Click edit icon**

3. **Enter new name**

4. **Click "Update"**

---

### 4. Archive Custom Medium

**Purpose:** Remove custom payment type.

**Step-by-Step Instructions:**

1. **Find custom medium**

2. **Click archive icon**

3. **Confirm archival**

4. **Medium removed from list**

---

## Medium Types

| Type | Description | Editable |
|------|-------------|----------|
| System | Built-in (Cash, Card, etc.) | No |
| Custom | User-created | Yes |

---

## System Payment Mediums

Built-in mediums include:
- Cash
- Credit Card
- Debit Card
- Check
- Account Balance

---

## Custom Medium Examples

| Name | Use Case |
|------|----------|
| Venmo | Mobile payments |
| Zelle | Bank transfers |
| HSA Card | Health savings |
| CareCredit | Healthcare financing |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View mediums | ✓ | ✓ | ✓ |
| Add custom | ✓ | ✓ | ✗ |
| Edit custom | ✓ | ✓ | ✗ |
| Archive custom | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Can't edit | System mediums not editable |
| Name taken | Use unique name |
| Can't delete | Archive instead |
