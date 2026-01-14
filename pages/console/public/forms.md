# Multi-Form Page - User Actions Guide

## Overview

The Multi-Form page allows patients to complete multiple forms in a single session. Forms are specified via URL query parameters and presented sequentially with progress tracking.

---

## Available Actions

### 1. Complete MFA Verification (Required First Step)

**Purpose:** Verify your identity before accessing the forms.

**Prerequisites:**
- Valid form URLs in the query parameter
- Access to your phone for SMS verification

**Step-by-Step Instructions:**

1. **Wait for the page to load**
   - The system checks if the specified forms exist
   - If forms are valid, the MFA verification dialog appears

2. **Enter your phone number**
   - Locate the phone number input field
   - Enter your 10-digit mobile phone number (e.g., 555-123-4567)
   - The system will format the number automatically

3. **Click "Send Code" or "Continue"**
   - A verification code will be sent to your phone via SMS
   - Wait for the SMS to arrive (usually within 30 seconds)

4. **Enter the verification code**
   - A new input field appears for the code
   - Enter the 6-digit code from the SMS
   - The code is case-sensitive if alphanumeric

5. **Submit the verification code**
   - Click "Verify" or press Enter
   - If correct, you'll be authenticated and can access the forms
   - If incorrect, you can request a new code

**Possible Outcomes:**

| Outcome | What Happens | What to Do |
|---------|--------------|------------|
| Verification successful | Forms load automatically | Continue to form completion |
| Invalid code | Error message appears | Re-enter code or request new one |
| Code expired | Error message appears | Click "Resend Code" |
| Phone number not found | Error message | Contact the practice |

---

### 2. Fill Out Form Fields

**Purpose:** Complete each form's required and optional fields.

**Step-by-Step Instructions:**

1. **Read the form title and description**
   - Located at the top of the form
   - Provides context about what information is being collected

2. **Complete required fields**
   - Required fields are marked with an asterisk (*)
   - Field types may include:
     - **Text input:** Type your response
     - **Date picker:** Click to open calendar, select date
     - **Dropdown:** Click to see options, select one
     - **Radio buttons:** Click one option from a list
     - **Checkboxes:** Click to select multiple options
     - **File upload:** Click to browse, select file(s)

3. **Interact with different field types:**

   **For Text Fields:**
   - Click inside the field
   - Type your response
   - Tab or click to move to the next field

   **For Date Fields:**
   - Click the calendar icon or input field
   - Navigate months using arrows
   - Click on the desired date
   - For date of birth, use the year/month dropdowns for faster navigation

   **For Dropdown/Select Fields:**
   - Click the dropdown arrow
   - Scroll through options if needed
   - Click to select an option
   - Some dropdowns support type-ahead search

   **For Radio Button Groups:**
   - Click on your preferred option
   - Only one can be selected at a time
   - Clicking a different option deselects the previous

   **For Checkbox Groups:**
   - Click on each option you want to select
   - Multiple selections are allowed
   - Click again to deselect

   **For File Upload Fields:**
   - Click "Choose File" or "Upload"
   - Navigate to the file on your device
   - Select one or multiple files (if allowed)
   - Wait for upload to complete
   - You can remove uploaded files by clicking the X

   **For Signature Fields:**
   - Use your mouse, finger, or stylus to sign
   - Draw your signature in the signature box
   - Click "Clear" to start over if needed
   - Click "Save" or "Accept" to confirm

4. **Handle conditional fields**
   - Some fields appear based on previous answers
   - Answer required questions first
   - New fields may appear automatically below

---

### 3. Navigate Between Form Sections

**Purpose:** Move through different sections of a long form.

**Step-by-Step Instructions:**

1. **Scroll down the page**
   - Use your mouse wheel, trackpad, or swipe gesture
   - The form displays all sections vertically

2. **Use section navigation (if available)**
   - Some forms show a progress indicator or section tabs
   - Click on a section name to jump to it
   - Completed sections may show a checkmark

3. **Use keyboard navigation**
   - Press `Tab` to move to the next field
   - Press `Shift + Tab` to move to the previous field
   - Press `Enter` to submit certain fields or open dropdowns

---

### 4. Submit a Completed Form

**Purpose:** Submit the current form and proceed to the next one.

**Step-by-Step Instructions:**

1. **Ensure all required fields are complete**
   - Required fields have an asterisk (*)
   - Incomplete required fields will be highlighted on submit attempt

2. **Review your answers**
   - Scroll through the form to verify entries
   - Make corrections as needed

3. **Locate the submit button**
   - Usually at the bottom of the form
   - Button text may say "Submit", "Continue", or "Next"

4. **Click the submit button**
   - The form will validate all fields
   - If validation passes, the form is submitted

5. **Wait for confirmation**
   - A loading indicator appears during submission
   - On success, the next form loads automatically
   - If this was the last form, a completion message appears

**Possible Outcomes:**

| Outcome | What Happens | What to Do |
|---------|--------------|------------|
| Validation error | Error messages appear by invalid fields | Correct the highlighted fields |
| Submission successful | Next form loads or completion screen | Continue with next form |
| Network error | Error toast appears | Check connection and retry |

---

### 5. Track Progress Across Multiple Forms

**Purpose:** Monitor your progress when completing multiple forms.

**Step-by-Step Instructions:**

1. **Locate the floating progress widget**
   - Appears in the corner of the screen when multiple forms are assigned
   - Shows current form name and progress (e.g., "2 of 5 completed")

2. **View progress information**
   - Current form name is displayed
   - Completed count shows how many forms you've finished
   - Total count shows how many forms are assigned

3. **Understand the progress indicator**
   - The widget updates automatically after each form submission
   - Green checkmarks indicate completed forms
   - The current form is highlighted

---

### 6. View Completion Confirmation

**Purpose:** See confirmation that all forms have been submitted.

**When This Appears:**
- After the last form is successfully submitted
- All forms in the session are marked as complete

**What You'll See:**

1. **Completion heading**
   - For single form: "Form Completed!"
   - For multiple forms: "All Forms Completed!"
   - Displayed in green text

2. **Thank you message**
   - Confirms the number of forms completed
   - Thanks you for your submission

3. **Progress widget (for multiple forms)**
   - Shows all forms as completed
   - Displays final completion count

**What to Do Next:**
- You can safely close the browser tab
- No further action is required
- The practice will receive your submissions

---

### 7. Handle Form Not Found Error

**Purpose:** Understand and respond to errors when forms cannot be loaded.

**When This Appears:**
- Forms specified in URL don't exist
- Forms have been deleted or deactivated
- Invalid URL format

**Step-by-Step Instructions:**

1. **Read the error message**
   - The page displays a "Forms Not Found" message
   - Additional context may explain the issue

2. **Check the URL**
   - Verify you're using the correct link
   - Check for typos in the URL
   - Ensure the link hasn't been truncated

3. **Contact the practice**
   - If the link came from the practice, notify them
   - Request a new form link
   - Provide the error message if asked

---

## Technical Details

### URL Structure

The forms page uses query parameters to specify which forms to load:

```
https://[tenant].decodahealth.com/[tenant]/forms?forms=intake,consent,hipaa
```

**Parameters:**
- `forms`: Comma-separated list of form path names
- Forms are loaded in the order specified

### Session Recording

- Session recording (via PostHog) starts when valid forms are detected
- Recording stops automatically when all forms are completed
- This helps the practice improve the form experience

### Data Persistence

- Form data is saved as you complete each field (in most cases)
- If you lose connection, some data may be recoverable
- Always complete and submit forms in one session when possible

---

## Accessibility Features

- All form fields have proper labels
- Required fields are announced to screen readers
- Error messages are announced when they appear
- Keyboard navigation is fully supported
- Color contrast meets WCAG 2.1 AA standards
- Form submissions have loading state announcements

---

## Mobile Considerations

- The form layout adapts to mobile screen sizes
- File uploads work with mobile camera access
- Signature fields support touch input
- Keyboards adjust based on field type (numeric, email, etc.)
- Progress widget repositions for mobile viewing

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Form won't load | Check internet connection, refresh page |
| Verification code not received | Check SMS spam, request new code |
| File upload fails | Check file size/type restrictions |
| Form submission stuck | Wait 30 seconds, then refresh and retry |
| Progress lost | Contact practice for form reset |
