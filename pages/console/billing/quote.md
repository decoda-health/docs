# Quote View Page - User Actions Guide

## Overview

The Quote View page displays a quote for staff review. This is the internal/tenant view of quotes, allowing staff to see what patients see and track quote status. Patient response actions are disabled in this view.

---

## Available Actions

### 1. View Quote Details

**Purpose:** See complete quote information.

**Step-by-Step Instructions:**

1. **Navigate to quote**
   - Direct link with quote ID
   - Or from quote list

2. **View quote sections:**
   - Practice logo and info
   - Quote number
   - Patient information
   - Line items and prices
   - Total amount
   - Status

---

### 2. Check Quote Status

**Purpose:** See if patient has responded.

**Step-by-Step Instructions:**

1. **Look at status indicator**
   - Pending (awaiting response)
   - Accepted (patient approved)
   - Declined (patient rejected)
   - Expired (past expiration date)

---

### 3. View Line Items

**Purpose:** See what's included in the quote.

**Step-by-Step Instructions:**

1. **Scroll to items section**

2. **Review each item:**
   - Item/service name
   - Description
   - Quantity
   - Unit price
   - Line total

3. **View totals:**
   - Subtotal
   - Any discounts
   - Final total

---

### 4. Review Patient Information

**Purpose:** Verify quote is for correct patient.

**Step-by-Step Instructions:**

1. **Find patient section**

2. **Verify:**
   - Patient name
   - Contact information
   - Any notes

---

## Quote Statuses

| Status | Meaning | Patient Action |
|--------|---------|----------------|
| PENDING | Awaiting response | Can accept/decline |
| ACCEPTED | Patient approved | Converted to charge |
| DECLINED | Patient rejected | Closed |
| EXPIRED | Past expiration | No action possible |

---

## Staff View vs Patient View

| Feature | Staff View | Patient View |
|---------|------------|--------------|
| View details | ✓ | ✓ |
| Accept quote | ✗ (disabled) | ✓ |
| Decline quote | ✗ (disabled) | ✓ |
| See status | ✓ | ✓ |

---

## Quote Components

| Component | Description |
|-----------|-------------|
| Practice Info | Logo, name, contact |
| Quote Number | Unique identifier |
| Patient Info | Who the quote is for |
| Line Items | Products/services quoted |
| Pricing | Amounts and totals |
| Status | Current quote state |

---

## Authorization

This page requires authentication:
- Staff must be logged in
- Unauthenticated users see "Not authorized" message
- Redirect to login if needed

---

## Use Cases

**Staff Uses:**
- Verify quote was sent correctly
- Check patient response status
- Review quote details for follow-up
- Confirm pricing before patient call

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View quotes | ✓ | ✓ | ✓ |
| See status | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| "Not authorized" | Log in first |
| Quote not loading | Check quote ID is valid |
| Status not updating | Refresh the page |
| Empty quote | May have been voided |
