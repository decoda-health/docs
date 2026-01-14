# Login Page - User Actions Guide

## Overview

The Login page is the primary authentication entry point for the Decoda Console application. It provides email/password authentication, Google SSO, and password reset functionality.

---

## Available Actions

### 1. Sign In with Email and Password

**Purpose:** Authenticate using your registered email and password credentials.

**Prerequisites:**
- You must have a registered Decoda account
- Your account must be associated with at least one tenant

**Step-by-Step Instructions:**

1. **Navigate to the login page**
   - Open your browser and go to the Decoda Console URL
   - If not already on the login page, you will be automatically redirected

2. **Locate the email input field**
   - Find the input field labeled "Email"
   - The placeholder text shows "user@company.com" as an example format

3. **Enter your email address**
   - Click inside the email input field
   - Type your full email address (e.g., `john.smith@clinic.com`)
   - Ensure there are no leading or trailing spaces

4. **Locate the password input field**
   - Find the input field labeled "Password"
   - The placeholder text shows "••••••••" indicating a password field

5. **Enter your password**
   - Click inside the password input field
   - Type your password (characters will be masked for security)

6. **Click the "Sign in" button**
   - Locate the blue "Sign in" button below the password field
   - Click the button to submit your credentials
   - The button will show "Signing in..." with a loading indicator

7. **Wait for authentication**
   - The system will verify your credentials with Firebase Authentication
   - If successful, you will be redirected to your default tenant's home page
   - If your account has MFA enabled, you will be prompted for verification

**Possible Outcomes:**

| Outcome | What Happens | What to Do |
|---------|--------------|------------|
| Success | Redirect to tenant dashboard | Continue using the application |
| Invalid credentials | Error toast: "invalid email" or "wrong password" | Check and re-enter your credentials |
| No tenant access | Error toast: "You currently don't have access..." | Contact your administrator |
| MFA required | MFA verification prompt appears | Complete MFA verification |

---

### 2. Sign In with Google

**Purpose:** Authenticate using your Google account via Single Sign-On (SSO).

**Prerequisites:**
- You must have a Google account
- Your Google account email must be registered in the Decoda system
- Your organization may require Google Workspace accounts

**Step-by-Step Instructions:**

1. **Navigate to the login page**
   - Open your browser and go to the Decoda Console URL
   - Ensure you see the login form

2. **Locate the Google sign-in button**
   - Below the "Sign in" button, find the divider text "or"
   - Below that, locate the button labeled "Sign in with Google"
   - The button displays the Google icon (multicolored "G")

3. **Click the "Sign in with Google" button**
   - Click the button
   - The button will show "Signing in with Google..." with a loading indicator

4. **Complete Google authentication in popup**
   - A Google authentication popup window will appear
   - If you're not signed into Google:
     a. Enter your Google email address
     b. Click "Next"
     c. Enter your Google password
     d. Click "Next"
   - If you're already signed into Google:
     a. Select the Google account you want to use
     b. Or click "Use another account" to sign in with a different account

5. **Grant permissions (if prompted)**
   - If this is your first time, Google may ask you to grant permissions
   - Review the requested permissions
   - Click "Allow" or "Continue" to proceed

6. **Wait for authentication completion**
   - The popup will close automatically
   - The system will verify your access and fetch tenant information
   - You will be redirected to your default tenant's home page

**Possible Outcomes:**

| Outcome | What Happens | What to Do |
|---------|--------------|------------|
| Success | Redirect to tenant dashboard | Continue using the application |
| Popup blocked | No popup appears | Allow popups for this site in browser settings |
| No tenant access | Error toast appears | Contact your administrator to add your Google account |
| Google auth failed | Error message in popup | Try again or use email/password login |

---

### 3. Reset Password

**Purpose:** Request a password reset email when you've forgotten your password.

**Prerequisites:**
- You must have a registered Decoda account
- Access to the email inbox for your registered email address

**Step-by-Step Instructions:**

1. **Navigate to the login page**
   - Open your browser and go to the Decoda Console URL
   - Ensure you see the login form

2. **Click "Forgot your password?" link**
   - Below the sign-in buttons, locate the blue text link "Forgot your password?"
   - Click on this link
   - The page will transition to the password reset form

3. **Verify you're on the reset password form**
   - The heading should now say "Reset Your Password"
   - The subtext should say "Enter your email to receive password reset instructions."

4. **Enter your email address**
   - Locate the email input field labeled "Email"
   - Click inside the input field
   - Type the email address associated with your Decoda account
   - Ensure the email format is correct (e.g., `user@company.com`)

5. **Click the "Reset Password" button**
   - Click the blue "Reset Password" button
   - The button will show "Sending reset email..." with a loading indicator

6. **Check for confirmation**
   - A success toast will appear: "Password reset email sent"
   - The message will say: "If your account exists, we have sent you an email with instructions to reset your password."

7. **Check your email inbox**
   - Open your email client
   - Look for an email from Decoda (check spam/junk folder if not in inbox)
   - The email will contain a link to reset your password

8. **Follow the reset link**
   - Click the link in the email
   - You will be taken to a password reset page
   - Enter your new password
   - Confirm your new password
   - Submit the form

9. **Return to login**
   - After successfully resetting your password
   - Navigate back to the login page
   - Sign in with your email and new password

**Possible Outcomes:**

| Outcome | What Happens | What to Do |
|---------|--------------|------------|
| Success | Toast confirms email sent | Check your inbox for the reset email |
| Invalid email format | Validation error appears | Correct the email format |
| Email not found | Still shows success (for security) | Verify you're using the correct email |
| Network error | Error toast appears | Check your connection and try again |

---

### 4. Return to Login from Reset Password

**Purpose:** Navigate back to the main login form from the password reset form.

**Step-by-Step Instructions:**

1. **Ensure you're on the reset password form**
   - The heading should say "Reset Your Password"

2. **Locate the "Back to login" link**
   - Below the "Reset Password" button
   - Find the blue text link "Back to login"

3. **Click "Back to login"**
   - Click on the link
   - The page will transition back to the main login form
   - You can now sign in with email/password or Google

---

## Error Messages Reference

| Error Message | Meaning | Solution |
|---------------|---------|----------|
| "invalid email" | Email format is incorrect or email not registered | Check spelling, use correct format |
| "wrong password" | Password doesn't match the account | Re-enter password carefully |
| "too many requests" | Too many failed login attempts | Wait 15-30 minutes before trying again |
| "user disabled" | Account has been deactivated | Contact your administrator |
| "You currently don't have access to the Decoda platform" | No tenant association | Contact administrator to add you to a tenant |

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Tab` | Move to next input field |
| `Shift + Tab` | Move to previous input field |
| `Enter` | Submit the current form (when in a form field) |

---

## Accessibility Features

- All form fields have associated labels
- Error messages are announced to screen readers
- Loading states are indicated both visually and semantically
- Focus management maintains logical tab order
- Color contrast meets WCAG 2.1 AA standards

---

## Security Notes

- Passwords are transmitted securely over HTTPS
- Failed login attempts may trigger rate limiting
- Sessions have configurable timeout periods
- MFA may be required based on tenant settings
- Password reset links expire after a set period
