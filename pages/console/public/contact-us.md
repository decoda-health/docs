# Contact Us Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/contact-us/page.tsx`
**Route:** `/[tenant]/contact-us`

---

## Overview

The Contact Us page provides a simple form for patients and prospective patients to reach out to the healthcare practice. It collects basic contact information and an optional message.

---

## Available Actions

### 1. View Practice Information

**Purpose:** Identify which practice you're contacting.

**Step-by-Step Instructions:**

1. **Locate the practice logo**
   - Displayed at the top of the page
   - Confirms the practice identity

2. **Read the welcome message**
   - Heading: "Contact Us"
   - Subtext includes the practice name
   - Message: "Thank you for your interest in [Practice Name]. We will be in touch shortly!"

---

### 2. Enter Your First Name

**Purpose:** Provide your first name so the practice knows who is contacting them.

**Step-by-Step Instructions:**

1. **Locate the First Name field**
   - Located in the top-left of the form grid
   - Placeholder text: "First Name"

2. **Click inside the field**
   - The cursor appears in the input
   - Field border may change to indicate focus

3. **Type your first name**
   - Enter your given name (e.g., "John")
   - No special characters required
   - Field accepts standard text input

4. **Verify your entry**
   - Text appears as you type
   - Check for typos before moving on

**Validation:**
- This field is required
- Cannot be empty on submission

---

### 3. Enter Your Last Name

**Purpose:** Provide your last name for identification.

**Step-by-Step Instructions:**

1. **Locate the Last Name field**
   - Located in the top-right of the form grid
   - Placeholder text: "Last Name"

2. **Click inside the field**
   - Or press Tab from the First Name field
   - Cursor appears in the input

3. **Type your last name**
   - Enter your family name (e.g., "Smith")
   - Standard text input accepted

4. **Verify your entry**
   - Review for accuracy
   - Common names may have multiple spellings

**Validation:**
- This field is required
- Cannot be empty on submission

---

### 4. Enter Your Phone Number

**Purpose:** Provide a phone number where the practice can reach you.

**Step-by-Step Instructions:**

1. **Locate the Phone Number field**
   - Full-width field below the name fields
   - Placeholder text: "Phone Number"
   - May show phone icon

2. **Click inside the field**
   - Or press Tab from the Last Name field
   - Phone keyboard may appear on mobile devices

3. **Enter your phone number**
   - Type your 10-digit phone number
   - The field auto-formats as you type (e.g., (555) 123-4567)
   - Include area code

4. **Verify the number**
   - Double-check each digit
   - This is how the practice will contact you

**Phone Number Formatting:**
- Accepted formats:
  - 5551234567
  - 555-123-4567
  - (555) 123-4567
  - 555.123.4567
- The system normalizes the format

**Validation:**
- This field is required
- Must be a valid phone number format
- Invalid numbers show an error

---

### 5. Enter Your Message (Optional)

**Purpose:** Provide additional context or questions for the practice.

**Step-by-Step Instructions:**

1. **Locate the Message field**
   - Large text area below the phone number
   - Placeholder text: "Your message (Optional)"
   - Labeled as optional

2. **Click inside the field**
   - Or press Tab from the Phone Number field
   - Cursor appears in the text area

3. **Type your message**
   - Explain why you're reaching out
   - Include any questions you have
   - Provide relevant details

**Example Messages:**
- "I'd like to schedule a consultation for back pain."
- "What insurance plans do you accept?"
- "I'm interested in becoming a new patient."

4. **Review your message**
   - Check for completeness and clarity
   - Fix any typos

**Validation:**
- This field is optional
- Can be left empty
- No character limit displayed (but may exist server-side)

---

### 6. Submit the Contact Form

**Purpose:** Send your information and message to the practice.

**Step-by-Step Instructions:**

1. **Review all entered information**
   - First Name: Verify spelling
   - Last Name: Verify spelling
   - Phone Number: Verify all digits
   - Message: Verify content (if entered)

2. **Locate the Send Message button**
   - Blue button at the bottom of the form
   - Text: "Send Message" with paper airplane icon
   - Spans full width of the form

3. **Click the Send Message button**
   - Button shows loading state: "Sending..."
   - Button becomes disabled during submission
   - Wait for the process to complete

4. **View submission result**

   **On Success:**
   - Green success toast appears
   - Title: "Success"
   - Message: "Thank you for contacting us. We'll be in touch shortly!"
   - Form fields are cleared

   **On Failure:**
   - Red error toast appears
   - Title: "Error"
   - Message: "Something went wrong. Please try again." or "Failed to submit form. Please try again."
   - Form fields remain filled

5. **Handle validation errors**
   - If required fields are empty, form won't submit
   - Fill in missing fields
   - Retry submission

---

### 7. Handle Submission Errors

**Purpose:** Recover from failed form submissions.

**Step-by-Step Instructions:**

1. **Read the error message**
   - Toast notification explains the issue
   - Common errors:
     - Network failure
     - Server error
     - Invalid phone number

2. **Check your connection**
   - Ensure you have internet access
   - Try refreshing the page

3. **Verify your information**
   - Ensure phone number is valid
   - Check that required fields are filled

4. **Retry submission**
   - Click "Send Message" again
   - Wait for response

5. **Contact practice directly**
   - If errors persist, call the practice
   - Practice phone number may be displayed elsewhere

---

### 8. View Terms and Conditions

**Purpose:** Understand the legal terms for submitting contact information.

**Step-by-Step Instructions:**

1. **Locate the terms footer**
   - Below the Send Message button
   - Small text with clickable links

2. **Read the terms text**
   - "By contacting us you agree to our..."
   - Links to Terms of Service and Privacy Policy

3. **Click to view full terms**
   - Opens in new tab or modal
   - Read the complete terms

---

## Form Field Summary

| Field | Required | Type | Placeholder |
|-------|----------|------|-------------|
| First Name | Yes | Text | "First Name" |
| Last Name | Yes | Text | "Last Name" |
| Phone Number | Yes | Phone | "Phone Number" |
| Message | No | Textarea | "Your message (Optional)" |

---

## Form Layout

### Desktop
- Centered card with max width
- Name fields side-by-side
- Phone number full width
- Message textarea full width
- Button centered

### Mobile
- Full-width card
- Name fields stack vertically on smaller screens
- All fields full width
- Touch-optimized inputs

---

## Loading States

1. **Page Loading:**
   - Skeleton loader displays
   - Shows form placeholder shapes
   - Appears while tenant data loads

2. **Form Submitting:**
   - Button text changes to "Sending..."
   - Button is disabled
   - All fields remain visible but interaction blocked

---

## Accessibility Features

- All form fields have proper labels
- Required fields indicated semantically
- Error messages announced to screen readers
- Keyboard navigation fully supported
- Focus management on form submission
- Clear visual feedback for all interactions

---

## What Happens After Submission

1. **Practice Receives Notification**
   - Email sent to practice staff
   - Contains your submitted information
   - Includes your message

2. **Follow-Up**
   - Practice will call you at the number provided
   - Response time varies by practice
   - Typically within 1-2 business days

3. **No Confirmation Email**
   - You may not receive an email confirmation
   - Keep a note of your submission for reference

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page won't load | Check internet connection, refresh |
| Button doesn't work | Fill in all required fields |
| Phone number error | Enter valid 10-digit US number |
| Form submission fails | Check connection, retry |
| No response from practice | Call the practice directly |
| Practice logo missing | May still be loading, or not configured |
