# Usage & Billing Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/usage/page.tsx`
**Route:** `/[tenant]/usage`

---

## Overview

The Usage page provides transparency into your Decoda platform usage and billing. It displays usage metrics, costs, historical statements, and payment management options.

---

## Available Actions

### 1. View Current Month Usage

**Purpose:** See your platform usage for the current billing period.

**Step-by-Step Instructions:**

1. **Navigate to Usage page**
   - Click "Usage" in navigation

2. **View usage summary**
   - Total estimated charges displayed
   - Broken down by category

3. **Review usage chart**
   - Visual representation of usage
   - Shows trends over the month

---

### 2. Select Different Billing Month

**Purpose:** View usage for a previous billing period.

**Step-by-Step Instructions:**

1. **Locate month selector**
   - Dropdown in page header
   - Shows current month by default

2. **Click to open dropdown**
   - List of available months appears
   - Format: "January 2024", etc.

3. **Select month**
   - Click desired month
   - Usage data updates
   - Chart and table refresh

4. **Available months:**
   - Current month
   - Previous months with statements
   - Historical data available

---

### 3. View Usage Breakdown Table

**Purpose:** See itemized usage by feature/service.

**Step-by-Step Instructions:**

1. **Locate the usage table**
   - Below the usage chart
   - Lists all usage categories

2. **Review columns:**
   - **Description:** Feature/service name
   - **Quantity:** Usage amount
   - **Rate:** Cost per unit
   - **Amount:** Total cost

3. **Understand line items:**
   - Appointments scheduled
   - SMS messages sent
   - Phone minutes used
   - AI features usage
   - Storage used
   - etc.

4. **View totals:**
   - Subtotal at bottom
   - Any discounts applied
   - Final estimated total

---

### 4. View Usage Chart

**Purpose:** Visualize usage trends over the billing period.

**Step-by-Step Instructions:**

1. **Locate the chart**
   - Above the usage table
   - Shows usage over time

2. **Interpret the chart:**
   - X-axis: Days of the month
   - Y-axis: Usage amount or cost
   - Lines/bars show daily usage

3. **Hover for details**
   - Move mouse over data points
   - Tooltip shows exact values

4. **Loading state:**
   - Chart shows skeleton while loading
   - Wait for data to appear

---

### 5. View Historical Statements

**Purpose:** Access past billing statements.

**Step-by-Step Instructions:**

1. **Locate statements table**
   - "Statements" section on page
   - Lists all historical statements

2. **Review statement information:**
   - Invoice date
   - Period covered
   - Total amount
   - Status (Paid, Pending)

3. **Click on statement**
   - May set date range to that period
   - View detailed breakdown

4. **Download statement (if available)**
   - Click download icon
   - PDF statement downloads

---

### 6. Manage Payment Methods

**Purpose:** View, add, or update payment methods for billing.

**Step-by-Step Instructions:**

1. **Click "Manage Payments" button**
   - In page header area
   - Opens payment method modal

2. **View current payment methods:**
   - Cards on file listed
   - Shows last 4 digits
   - Expiration date
   - Default indicator

3. **Add new payment method:**
   - Click "Add Payment Method"
   - Enter card details:
     - Card number
     - Expiration date (MM/YY)
     - CVV
     - Billing ZIP code
   - Click "Save"

4. **Set default payment method:**
   - Click "Set as Default" on a card
   - This card used for automatic billing

5. **Remove payment method:**
   - Click remove icon on card
   - Confirm removal
   - Cannot remove if it's the only method

6. **Close modal:**
   - Click X or outside modal
   - Returns to usage page

---

### 7. View Free Usage Allocation

**Purpose:** See included usage that doesn't incur additional charges.

**Step-by-Step Instructions:**

1. **Look for "included monthly usage" note**
   - Below usage table
   - Explains what's included

2. **Hover for details**
   - Tooltip shows free allocations:
     - Number of free SMS
     - Included AI minutes
     - Included storage
     - etc.

3. **Understand billing:**
   - Usage within allocation: No charge
   - Usage over allocation: Charged at rate

---

### 8. Understand Usage Disclaimers

**Purpose:** Know the limitations of usage estimates.

**What You'll See:**

The page displays a note explaining:
- "The chart and table above are subject to rounding errors"
- "Additional taxes may apply"
- "Does not account for included monthly usage"
- "Your final bill may differ"

**Why This Matters:**
- Estimates are for planning purposes
- Final invoice is the authoritative amount
- Taxes calculated at billing time

---

## Usage Categories Explained

| Category | What's Measured |
|----------|-----------------|
| Platform Access | Base platform fee |
| Appointments | Number of appointments |
| SMS Messages | Outbound text messages |
| Phone Calls | Call minutes |
| AI Scribe | Transcription minutes |
| AI Phone | AI call handling |
| Storage | Document/image storage |
| API Calls | Integration usage |

---

## Billing Cycle

- **Monthly billing:** Invoiced at end of month
- **Payment timing:** Charged to default payment method
- **Statement available:** Within first week of new month
- **Questions:** Contact support or billing

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View usage | ✓ | ✓ | ✗ |
| View statements | ✓ | ✓ | ✗ |
| Manage payments | ✓ | ✗ | ✗ |
| Download statements | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Usage not loading | Refresh page, check connection |
| Statement missing | May take a few days after period ends |
| Payment failed | Update payment method, check card |
| Usage seems high | Review itemized breakdown |
| Can't add card | Verify card details are correct |
