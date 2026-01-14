# Add Member Page - User Actions Guide

## Overview

The Add Member page enrolls patients in membership plans. It supports immediate payment, deferred billing, prorated first payments, and various payment methods including saved cards and new card entry.

---

## Available Actions

### 1. Select Membership

**Purpose:** Choose which membership to enroll patient in.

**Step-by-Step Instructions:**

1. **View available memberships**
   - Card grid display

2. **Click membership to select**
   - Shows pricing, frequency, benefits

3. **Or change selection**
   - Click "Change" button on selected

---

### 2. Select Patient

**Purpose:** Choose which patient to enroll.

**Step-by-Step Instructions:**

1. **Search for patient**
   - Type name or phone

2. **Select from results**
   - Click patient name

3. **Or create new patient**
   - If not found

**Note:** Patient already enrolled shows warning.

---

### 3. Select Sold By Provider

**Purpose:** Track which provider made the sale.

**Step-by-Step Instructions:**

1. **Locate "Sold By Provider" section**

2. **Select provider from dropdown**
   - Optional field

3. **Used for commission tracking**

---

### 4. Set Start Date

**Purpose:** When membership benefits begin.

**Step-by-Step Instructions:**

1. **Locate "Start Date" section**

2. **Enter date**
   - Natural language: "today", "tomorrow", "next week"
   - Or select from calendar

3. **Future dates show warning**
   - Benefits start on selected date
   - Billing may differ

---

### 5. Configure Billing (Immediate vs Deferred)

**Purpose:** Choose when to charge patient.

**Step-by-Step Instructions:**

1. **Locate "Billing & Payment" section**

2. **Toggle "Defer Billing"**
   - **Off:** Charge immediately today
   - **On:** Charge on future date

3. **If deferred:**
   - Set first billing date
   - Must be in future

---

### 6. Enable Proration

**Purpose:** Adjust first payment for partial period.

**Step-by-Step Instructions:**

1. **Toggle "Prorate First Payment"**
   - Appears when start date differs from today
   - Or when using deferred billing

2. **View calculated amount**
   - Shows prorated vs full price

3. **Explanation shows calculation**

---

### 7. Select Payment Method (Immediate Billing)

**Purpose:** Choose how to pay today.

**Step-by-Step Instructions:**

1. **View saved payment methods**
   - Patient's cards on file

2. **Click to select**
   - Card is highlighted

3. **Or enter new card**
   - Use Rainforest terminal
   - Fill card details

4. **Toggle "Save Payment Method"**
   - Saves for future charges

---

### 8. Select Payment Method (Deferred Billing)

**Purpose:** Choose card for future charges.

**Step-by-Step Instructions:**

1. **View saved payment methods**
   - Patient's cards on file

2. **Select card for billing**

3. **Or add new card**
   - Click "Add Card"
   - Enter card details in modal

---

### 9. Complete Enrollment

**Purpose:** Finalize membership enrollment.

**Step-by-Step Instructions:**

1. **Review all selections**
   - Membership, patient, dates, payment

2. **Click enrollment button:**
   - "Charge $X.XX today" (immediate)
   - "Enroll with Deferred Billing" (deferred)
   - "Enroll Patient" (free membership)

3. **Wait for processing**

4. **Success message appears**
   - Redirected back

---

### 10. Cancel Enrollment

**Purpose:** Discard and return.

**Step-by-Step Instructions:**

1. **Click "Cancel" button**

2. **Return to previous page**

---

## Billing Options

| Option | Description |
|--------|-------------|
| Immediate | Charge full amount today |
| Deferred | Save card, charge later |
| Prorated | Adjust for partial period |

---

## Proration Calculation

Proration adjusts the first payment based on:
- Start date vs billing cycle
- Billing frequency (monthly, annual)
- Days remaining in period

---

## Setup Fee Handling

| Setup Fee | Effect |
|-----------|--------|
| Positive | Added to first payment |
| Negative | Discount on first payment |
| Zero Total | Auto-enables deferred billing |

---

## Free Memberships

If membership price is $0:
- No payment required
- No payment method needed
- Immediate enrollment
- Shows "Enroll Patient" button

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Enroll members | ✓ | ✓ | ✓ |
| Process payments | ✓ | ✓ | ✓ |
| Set deferred billing | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Already enrolled | Patient has active membership |
| Payment failed | Check card details |
| Can't select patient | Search again or create |
| No memberships | None available or all archived |
| Button disabled | Complete required fields |
