# Payment Management Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/payment-management/page.tsx`
**Route:** `/[tenant]/settings/payment-management`

---

## Overview

The Payment Management page centralizes payment processing configuration including merchant accounts (Rainforest), POS devices (terminals), tax rates, and payment mediums. Requires PAYMENTS module.

---

## Available Actions

### 1. Manage Merchant Accounts

**Purpose:** Configure Rainforest payment processing.

**Step-by-Step Instructions:**

1. **Navigate to Payment Management**
   - Settings → Payment Management

2. **View Merchant Accounts section**

3. **Actions:**
   - View connected accounts
   - Configure per-location
   - Check connection status

---

### 2. Manage POS Devices

**Purpose:** Configure payment terminals.

**Step-by-Step Instructions:**

1. **Find POS Devices section**

2. **Add new device:**
   - Select location
   - Select merchant account
   - Enter device details

3. **View existing devices**

4. **Test device connection**

---

### 3. Configure Tax Rates

**Purpose:** Set up tax rates by location.

**Step-by-Step Instructions:**

1. **Find Tax Rates section**

2. **Add tax rate:**
   - Name
   - Percentage
   - Location(s)

3. **Edit existing rates**

4. **Delete unused rates**

---

### 4. Configure Payment Mediums

**Purpose:** Manage settlement types.

**Step-by-Step Instructions:**

1. **Find Payment Mediums section**

2. **View available mediums**

3. **Add custom mediums**

4. **Edit/archive as needed**

---

## Sections

| Section | Purpose |
|---------|---------|
| Merchant Accounts | Rainforest payment processing |
| POS Devices | Physical terminals |
| Tax Rates | Location-based taxes |
| Payment Mediums | Settlement types |

---

## Module Requirement

Requires **PAYMENTS** module enabled.

If not enabled:
- Shows "Payments not enabled" message
- Contact admin to enable

---

## Merchant Account Setup

1. Connect Rainforest account
2. Complete verification
3. Assign to locations
4. Configure POS devices

---

## POS Device Types

| Device | Description |
|--------|-------------|
| Lane Terminal | Physical card reader |
| Virtual Terminal | Online payment entry |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View settings | ✓ | ✓ | ✗ |
| Manage merchant accounts | ✓ | ✗ | ✗ |
| Manage POS devices | ✓ | ✓ | ✗ |
| Manage tax rates | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page not loading | Check PAYMENTS module |
| Device not connecting | Check merchant account |
| Tax not applying | Verify location assignment |
