# Payment Link Page - User Actions Guide

## Overview

The Payment Link page allows patients to view their outstanding balance and make payments online. It supports full payments, payment plans, and multiple payment methods including credit cards, debit cards, and digital wallets.

---

## Available Actions

### 1. View Outstanding Balance

**Purpose:** See how much you owe and the breakdown of charges.

**Step-by-Step Instructions:**

1. **Locate the balance summary card**
   - Found prominently on the page
   - Shows "Outstanding Balance of $X.XX"
   - Displays your name below the amount

2. **Expand the balance details**
   - Click on the balance card to expand
   - The accordion reveals detailed breakdown

3. **Review individual charges**
   - Each charge shows:
     - Amount (e.g., "$250.00")
     - Due date (e.g., "due on Dec 15, 2024")
     - Description (service details)

4. **View totals breakdown**
   - Subtotal (before discounts/fees)
   - Discount (if applicable, shown in green)
   - Processing fee (for credit cards)
   - **Total Due** (final amount)

5. **Collapse the details**
   - Click the card again to collapse
   - Or it collapses automatically on scroll

---

### 2. Navigate Between Multiple Invoices

**Purpose:** Switch between different patient invoices if paying for multiple people.

**When This Appears:**
- Multiple patients linked to your account
- Family members with separate invoices

**Step-by-Step Instructions:**

1. **Locate the navigation bar**
   - Appears below the balance card
   - Shows "Payment 1 of X"
   - Displays current patient name

2. **Navigate to previous invoice**
   - Click the "< Previous" button on the left
   - The page updates with previous patient's invoice
   - Balance and details refresh

3. **Navigate to next invoice**
   - Click the "Next >" button on the right
   - The page updates with next patient's invoice

4. **Track your position**
   - Current position shows (e.g., "Payment 2 of 3")
   - Patient name updates with each invoice

---

### 3. Choose Between Debit and Credit Payment

**Purpose:** Select your card type to see accurate fees.

**Why This Matters:**
- Credit cards may incur a processing fee
- Debit cards typically have no additional fee
- Fee is disclosed before payment

**Step-by-Step Instructions:**

1. **Locate the payment type selector**
   - Two pill-shaped buttons: "Debit" and "Credit"
   - Located above the payment form

2. **Select Debit**
   - Click the "Debit" button
   - The total updates to show no processing fee
   - Payment form adjusts accordingly

3. **Select Credit**
   - Click the "Credit" button
   - Processing fee is added to total (if applicable)
   - Fee amount is displayed in the breakdown

4. **View updated total**
   - The balance card updates automatically
   - Processing fee line appears/disappears
   - Total Due reflects current selection

**Note:** This selection affects the amount charged. Choose accurately.

---

### 4. Make a Full Payment

**Purpose:** Pay your entire outstanding balance at once.

**Step-by-Step Instructions:**

1. **Verify your total**
   - Check the "Total Due" amount
   - Ensure debit/credit selection is correct

2. **Locate the payment form**
   - Rainforest payment widget on the right side (desktop)
   - Below the balance card on mobile

3. **Enter card information:**

   **Card Number:**
   - Click the card number field
   - Enter your 16-digit card number
   - Spaces are added automatically

   **Expiration Date:**
   - Click the MM/YY field
   - Enter month and year (e.g., 12/25)

   **CVV/Security Code:**
   - Click the CVV field
   - Enter 3 or 4 digit code from back of card

   **Billing ZIP Code:**
   - Enter the ZIP code associated with your card

4. **Use Apple Pay / Google Pay (if available)**
   - Click the Apple Pay or Google Pay button
   - Authenticate with Face ID, Touch ID, or password
   - Payment completes through your digital wallet

5. **Submit payment**
   - Click "Pay $X.XX" button
   - Wait for processing (do not refresh)
   - Loading indicator shows progress

6. **View confirmation**
   - Success message appears
   - "Payment Successful" toast notification
   - Receipt information displayed

**Possible Outcomes:**

| Outcome | What Happens | What to Do |
|---------|--------------|------------|
| Payment successful | Success toast, page updates | Done - receipt available |
| Card declined | Error message displayed | Try different card |
| Invalid card info | Field-level error shown | Correct the information |
| Network error | Error toast appears | Wait and retry |

---

### 5. Set Up a Payment Plan

**Purpose:** Divide your balance into multiple scheduled payments.

**Prerequisites:**
- Practice must allow payment plans
- Minimum balance may be required

**Step-by-Step Instructions:**

1. **Click "Setup Payment Plan" button**
   - Located below the payment form
   - Only visible if payment plans are enabled

2. **Configure initial payment:**

   a. **Enter initial payment amount**
      - Slide the slider or type amount
      - Minimum may be required
      - Shows what remains after initial payment

3. **Configure installment details:**

   a. **Number of installments**
      - Select from dropdown or slider
      - Shows calculated amount per installment

   b. **Payment frequency**
      - Choose: Weekly, Bi-weekly, Monthly
      - First installment date is calculated

4. **Review payment schedule**
   - Preview shows each payment date
   - Amount for each installment displayed
   - Total equals original balance

5. **Submit payment plan**
   - Click "Confirm Payment Plan"
   - You'll be returned to payment form

6. **Make initial payment**
   - Enter card information
   - This card will be used for all installments
   - Complete payment to activate plan

7. **Confirm activation**
   - Success message confirms plan creation
   - First installment date confirmed
   - You'll receive email/SMS confirmations

---

### 6. View Payment Plan Preview

**Purpose:** Review payment plan details before entering payment.

**When This Appears:**
- After creating a payment plan
- Before making the initial payment

**What You'll See:**

1. **Plan summary**
   - Initial payment amount
   - Number of remaining installments
   - Amount per installment
   - Payment frequency

2. **Schedule preview**
   - List of upcoming payment dates
   - Amount for each payment
   - Total amount over time

---

### 7. Cancel Payment Plan Setup

**Purpose:** Return to regular payment if you change your mind.

**Step-by-Step Instructions:**

1. **Locate the cancel option**
   - During payment plan setup
   - "Cancel" or "Go Back" button

2. **Click to cancel**
   - Returns to regular payment view
   - No payment plan is created

3. **Continue with full payment**
   - The regular payment form is available
   - Pay full balance or exit

---

### 8. Handle No Balance Due

**Purpose:** Understand when there's nothing to pay.

**When This Appears:**
- Balance has been paid in full
- Credits cover the balance
- No charges on account

**What You'll See:**

1. **"No Balance Due" message**
   - Displayed prominently on page
   - Confirms nothing is owed

2. **Contact information**
   - Practice phone number provided
   - For questions about billing

**What to Do:**
- If you expected a balance, contact the practice
- You can close the page

---

### 9. View Terms and Conditions

**Purpose:** Read the legal terms for payment processing.

**Step-by-Step Instructions:**

1. **Locate the footer links**
   - "Terms and Conditions" link at bottom
   - May be near payment button

2. **Click to view terms**
   - Opens terms in new tab/modal
   - Read payment processing terms
   - Understand refund policy

---

## Page Layout

### Desktop View
- Left side: Balance card, clinic info, value propositions
- Right side: Payment form

### Mobile View
- Top: Clinic logo, balance card
- Bottom: Payment form
- Sticky footer with support info

---

## Security Features

- All payments processed securely via Rainforest Payments
- Card data encrypted and tokenized
- PCI DSS compliant payment processing
- SSL/TLS encryption for all data transmission

---

## Accessibility Features

- Full keyboard navigation support
- Screen reader compatible labels
- Clear error messaging
- High contrast support
- Focus management during payment flow

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Card keeps declining | Verify card details, check with bank |
| Page won't load | Check internet, try different browser |
| Payment stuck processing | Wait 60 seconds, then refresh |
| Wrong balance showing | Contact practice for verification |
| Payment plan not available | May not be enabled for this practice |
| Apple Pay not showing | Ensure you're on Safari with Apple Pay set up |
| Fee seems incorrect | Verify debit/credit selection matches your card |

---

## After Payment

1. **Confirmation email/SMS**
   - Sent to your registered contact info
   - Contains payment receipt
   - Keep for your records

2. **Updated balance**
   - Page updates to show new balance
   - If paid in full, shows "No Balance Due"

3. **Payment plan confirmations**
   - Each scheduled payment sends a reminder
   - Receipts sent after each payment
   - Notifications if payment fails
