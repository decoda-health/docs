# Pay Now Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/pay/(pay-now)/page.tsx`
**Route:** `/[tenant]/pay`

---

## Overview

The Pay Now page is an entry point for patients to access their payment portal. It requires phone verification to identify the patient, then redirects to their personalized payment page.

---

## Available Actions

### 1. Verify Your Identity

**Purpose:** Confirm your identity to access your payment information.

**Step-by-Step Instructions:**

1. **View the verification screen**
   - MFA (Multi-Factor Authentication) dialog appears
   - Practice branding displayed

2. **Enter your phone number**
   - Click in the phone number field
   - Enter your 10-digit mobile number
   - The number should match what's on file with the practice

3. **Request verification code**
   - Click "Send Code" or "Continue"
   - Wait for SMS to arrive

4. **Enter the verification code**
   - Check your text messages
   - Type the 6-digit code
   - Code is valid for a limited time

5. **Complete verification**
   - Click "Verify" or "Submit"
   - System validates your identity

---

### 2. Automatic Redirect to Payment Page

**Purpose:** Navigate to your personalized payment page.

**What Happens After Verification:**

1. **System identifies your account**
   - Phone number matched to patient record
   - Patient ID retrieved

2. **Automatic redirect**
   - Page redirects to `/[tenant]/pay/[patientId]`
   - Your personalized payment page loads

3. **View your balance**
   - Outstanding balance displayed
   - Payment options available

---

### 3. Handle Verification Errors

**Purpose:** Resolve issues with phone verification.

**Common Scenarios:**

**Phone Number Not Found:**
- Message: "We couldn't find an account with this number"
- Solution: Contact the practice to verify your phone number on file

**Invalid Verification Code:**
- Message: "Invalid code" or similar
- Solution: Request a new code, check for typos

**Code Expired:**
- Message: "Code expired"
- Solution: Click "Resend Code" for a new one

**Too Many Attempts:**
- Message: "Too many attempts"
- Solution: Wait 15-30 minutes and try again

---

## Terms and Conditions

By completing verification, you agree to:
- Terms of Service
- Privacy Policy
- Payment processing terms

Footer text: "By paying your balance, you agree to our Terms of Service and Privacy Policy"

---

## After Redirect

Once redirected to your payment page, you can:
1. View your outstanding balance
2. See charge details
3. Make a full or partial payment
4. Set up a payment plan (if available)
5. Save payment method for future use

See the Payment Link page documentation for complete payment actions.

---

## Mobile Considerations

- Optimized for mobile devices
- Phone keyboard appears for number entry
- Touch-friendly buttons
- SMS opens automatically on some devices

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page won't load | Check internet connection |
| SMS not received | Check SMS spam, wait 30 seconds |
| Wrong phone number | Contact practice to update records |
| Can't complete verification | Call practice for assistance |
| Page stuck loading | Refresh and try again |
