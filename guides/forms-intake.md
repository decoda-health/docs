# Forms & Intake Guide

Collect patient information digitally with custom forms. Automate intake, consent, and assessment processes to save time and improve data quality.

## Getting Started

Access forms by clicking **Check-In > Forms** or **Inventory > Forms & Documents**.

Two main areas:
- **Form Templates** - Pre-built forms you can customize
- **Form Submissions** - Responses from patients

## Form Basics

### What Forms Can Do

- **Intake** - New patient information (address, insurance, medical history)
- **Consent** - Medical consent, release forms, waivers
- **Assessments** - Health questionnaires, symptom checkers
- **Custom** - Any information your clinic needs to collect

### Form Flow

1. You create form with questions
2. Patient receives link via email or fills at check-in
3. Patient answers questions on mobile or desktop
4. Answers saved to patient's record
5. You can view, download, or print responses

## Creating a Form

### Starting a Form

1. Go to **Settings > Form Templates** (or Check-In > Forms)
2. Click **Create Form**
3. Enter form name (e.g., "New Patient Intake")
4. Select form type:
   - Intake
   - Consent
   - Assessment
   - Custom
5. Click **Create**

Form builder opens and ready for questions.

### Adding Questions

Add different question types to your form.

**Text Input**
- Short text response
- Example: "What is your name?"
- Good for: Names, addresses, phone numbers

**Text Area**
- Longer text response
- Example: "Describe your symptoms"
- Good for: Detailed information, comments

**Multiple Choice**
- Choose one option
- Example: "Gender: Male / Female / Other"
- Good for: Categorical data

**Checkboxes**
- Choose multiple options
- Example: "Check any that apply: Headaches, Nausea, Fatigue"
- Good for: Multiple selections allowed

**Dropdown**
- Select from list (saves space)
- Example: State selection
- Good for: Long lists of options

**Date Picker**
- Calendar date selection
- Example: "Date of Birth"
- Good for: Dates, easy to use

**File Upload**
- Patient uploads document or photo
- Example: "Upload insurance card"
- Good for: Documents, images

**Rating Scale**
- 1-5 star or numeric rating
- Example: "Rate your pain: 1-10"
- Good for: Surveys, assessments

### Building Your Form

Best practices:

1. **Start with identification**
   - Name, DOB, contact info
   - Gets basics filled first

2. **Group related questions**
   - Medical history together
   - Insurance questions together
   - Prevents patient confusion

3. **Keep it short**
   - 10-15 questions max
   - Long forms = incomplete submissions
   - Patients more likely to finish

4. **Be specific**
   - Clear question wording
   - Provide examples
   - Avoid jargon

5. **Use conditional logic** (see section below)
   - Only show relevant questions
   - Reduces form length
   - Better completion rates

### Conditional Logic

Show/hide questions based on answers.

Example:
- Question: "Have you been to our clinic before?"
- If "No" → Show new patient intake questions
- If "Yes" → Show returning patient update form

### Setting Up Conditional Logic

1. Click question you want to make conditional
2. Click **Add Condition**
3. Set trigger:
   - When [previous question]
   - [equals/contains/is not]
   - [specific answer]
4. This question shows only when condition met
5. Save

Use cases:
- "Any surgeries?" If yes → ask details
- "Insurance?" If yes → ask plan details
- "Medications?" If yes → ask which ones

### Required vs. Optional

Mark which fields are required:

1. Click question
2. Toggle **Required**
3. Patient must answer before submitting

Example required fields:
- Name
- Contact info
- Consent signature
- Medical allergies

Optional fields:
- Comments
- Middle name
- Preferred pronouns
- Additional notes

## Assigning Forms to Appointments

Link forms to appointments so patients fill them.

### During Scheduling

1. Create appointment
2. Click **Add Forms**
3. Select forms patient should complete
4. Patient receives form link via email
5. Can complete before arrival
6. Staff sees when complete

### At Check-In

1. Patient checks in
2. Staff hands tablet/computer
3. Patient fills form on-site
4. Answers save immediately
5. Provider sees answers before visit

### Multiple Forms

Assign multiple forms per appointment:
- Intake form
- Health history form
- Consent form
- Specific assessment

Patient completes in order or can skip around.

## Form Templates

Pre-built templates save time.

### Built-In Templates

**New Patient Intake**
- Name, contact, address
- Insurance information
- Medical history
- Current medications
- Emergency contact

**Health History**
- Previous surgeries
- Allergies
- Family medical history
- Lifestyle habits
- Current health conditions

**Consent & Release**
- Medical consent
- Release of information
- Photo consent
- Treatment consent

**Pain Assessment**
- Pain level (scale 1-10)
- Pain location
- Duration
- Treatments tried
- Severity description

**Cosmetic Assessment**
- Goals
- Previous treatments
- Product sensitivities
- Before photos
- Expectations

### Customizing Templates

1. Select template
2. Click **Edit**
3. Add/remove questions
4. Change wording to fit your clinic
5. Reorder questions
6. Set required fields
7. Save as custom form

All templates can be modified to match your process.

## Form Responses

View and manage patient answers.

### Viewing Responses

1. Go to **Forms > Submissions** (or patient record)
2. Select form
3. View all responses for that form
4. Click response to see patient's answers
5. View:
   - Full answers
   - Time submitted
   - Device used (mobile/desktop)
   - Patient name and date

### Patient Response Status

Forms show completion status:
- **Not Sent** - Form not yet assigned
- **Pending** - Sent but not completed
- **Completed** - Patient submitted
- **Overdue** - Not completed by appointment

### Taking Action on Responses

**View in Patient Record**
1. Open form response
2. Click **View Patient Record**
3. Answers appear in patient profile
4. Visible to all providers

**Requesting Signatures**
1. Create digital signature field
2. Patient signs on device or prints/signs
3. Signature stored with form
4. Legally binding

**Exporting Responses**
1. Go to **Forms > Submissions**
2. Select form(s) and date range
3. Click **Export**
4. Download as CSV or PDF
5. Use for records, analysis, or import

**Printing Forms**
1. Click response
2. Click **Print**
3. Send to printer
4. Patient can sign paper copy
5. File in medical record

## Advanced Form Features

<AccordionGroup>
  <Accordion title="Form Versioning & Change Management">
    Manage form updates safely:
    - **Form versions** - Keep versions of forms over time
    - **Version comparison** - See what changed between versions
    - **Rollback capability** - Revert to previous form version
    - **Legacy form access** - Access old forms for historical records
    - **Change tracking** - See who changed what and when

    Use for: Compliance, audit trails, managing updates
  </Accordion>

  <Accordion title="Complex Conditional Logic">
    Advanced branching and dependencies:
    - **Multi-level conditions** - IF/THEN chains
    - **AND/OR logic** - Combine multiple conditions
    - **Skip entire sections** - Hide sections based on conditions
    - **Dynamic field values** - Populate fields based on answers
    - **Calculated fields** - Auto-calculate based on other answers
    - **Regular expression validation** - Complex field validation

    Example: If patient answers "Yes" to surgery, show detailed surgery questionnaire. If "No", skip it entirely.
  </Accordion>

  <Accordion title="HIPAA & Privacy Compliance">
    Ensure patient data security:
    - **Encrypted transmission** - Forms sent/received securely
    - **Access controls** - Only authorized staff can view responses
    - **Audit logging** - Track who accessed form responses
    - **Data residency** - Ensure data stored in compliant locations
    - **Right to be forgotten** - Delete patient responses on request
    - **PHI redaction** - Hide sensitive data in exports

    Critical for: HIPAA compliance, regulatory requirements
  </Accordion>

  <Accordion title="Digital Signatures & Legal Compliance">
    Legally binding consent and signatures:
    - **E-signature** - Patient signs on tablet/device
    - **Signature validation** - Verify signature authenticity
    - **Timestamp** - When signature was made
    - **Legal compliance** - E-signatures legally binding
    - **Consent audit trail** - Prove patient gave consent
    - **Multi-signatory** - Multiple people sign (patient + guardian)

    For: Medical consent, liability protection, legal defensibility
  </Accordion>

  <Accordion title="Form Pre-Population & Smart Defaults">
    Reduce patient typing:
    - **Auto-fill from patient record** - Use existing data
    - **Smart defaults** - Common answers pre-selected
    - **API population** - Pull data from external systems
    - **Cross-form data** - Carry answers from previous forms
    - **Provider defaults** - Different defaults based on provider
    - **Location defaults** - Different defaults by clinic location

    Example: Patient's address auto-fills from record, they just confirm it
  </Accordion>

  <Accordion title="Form Branching & Custom Flows">
    Create personalized form experiences:
    - **Adaptive forms** - Different paths based on answers
    - **Single question per screen** - Interview-style forms
    - **Progress tracking** - Show completion percentage
    - **Estimated time** - Show how long form takes
    - **Save & resume** - Patient can complete later
    - **Skipping sections** - Don't show irrelevant questions

    Example: Spanish-speaking patient sees form in Spanish, medical history patient sees longer history section
  </Accordion>

  <Accordion title="Third-Party Form Integrations">
    Connect to external form systems:
    - **Typeform/JotForm integration** - Use external form builders
    - **Document upload** - Collect files/scans
    - **External API webhooks** - Send form data to other systems
    - **CMS integration** - Embed forms on your website
    - **Data mapping** - Map external form fields to Decoda

    For: Specialized forms, legacy system integration
  </Accordion>
</AccordionGroup>

## Advanced Features

### Sections

Organize long forms into sections:

1. Click **Add Section**
2. Name section (e.g., "Medical History", "Insurance")
3. Add questions under section
4. Patient sees progress (1 of 3 sections)
5. Sections can be conditional

### Calculations

Auto-calculate values from answers:

Example: BMI calculator
- Ask height and weight
- System calculates BMI
- Displays result

Example: Insurance deductible
- Ask insurance plan
- System looks up deductible
- Shows remaining deductible

### Integrations

Link form responses to other systems:
- Insurance verification
- Patient contact databases
- Analytics platforms

## Form Settings

Configure how forms work.

**General Settings:**
- Form name and description
- Instructions for patients
- Confirmation message after submission
- Email notification when submitted

**Access Settings:**
- Who can fill form (only assigned patients)
- Public vs. private forms
- Expiration date
- Response limits

**Data Settings:**
- Save responses to patient record
- Export responses to external system
- Data retention period
- Backup and archive

## Best Practices

### Intake Form Tips

**Keep It Relevant**
- Only ask what you actually need
- Clinic needs vary
- Review annually

**Make It Clear**
- Use patient-friendly language
- Avoid medical jargon
- Provide examples where helpful
- Use conditional logic to reduce confusion

**Collect Critical Data**
- Allergies (critical for safety)
- Insurance
- Emergency contact
- Consent to treat
- Known drug interactions

**Be Specific with Allergies**
- Drug allergies
- Material allergies (latex, tape)
- Environmental allergies
- Food allergies
- Reaction severity

### Consent Form Tips

**Include Key Elements:**
- Name of procedures/treatments
- Risks and benefits explained
- Consent to proceed
- Release of liability (where applicable)
- Signature and date
- Witness if required

**Make It Understandable**
- Use simple language
- Avoid legalese where possible
- Explain procedures in detail
- Ask if patient has questions

**Get All Needed Consents**
- Medical consent to treat
- Photo consent (if taking before/afters)
- Release of records (if referring)
- Payment responsibility

### Health Assessment Tips

**Group Related Items**
- Medical history questions together
- Medication questions together
- Symptom questions together

**Use Scales Appropriately**
- Pain scales for pain
- Severity scales for symptoms
- Rating scales for satisfaction

**Make Conditional Logic**
- If "yes" to surgery → ask which
- If "yes" to medication → ask which ones
- If "yes" to condition → ask when diagnosed

### Collecting Accurate Data

**Clear Instructions**
- At top: "Please answer all questions"
- Before medical questions: "For medical safety"
- Before financial questions: "For insurance purposes"

**Validation**
- Require all necessary fields
- Check format (email, phone)
- Validate dates (DOB must be in past)

**Follow-Up**
- Review incomplete responses
- Follow up with patient
- Complete critical info before appointment

## Troubleshooting

**"Form won't send to patient"**
- Verify patient email is correct
- Check email not in spam
- Resend form link
- Try SMS if available

**"Patient says they answered but form is blank"**
- Check internet connection when they filled it
- Patient may not have clicked submit
- May need to fill again
- Check if browser cookies blocked

**"Conditional logic not working"**
- Verify condition is on correct question
- Check trigger question and answer
- May need to refresh page
- Contact support if persists

**"Can't see patient's answers"**
- Check form was submitted (not pending)
- Verify correct patient selected
- Check form response date range
- Patient answers visible in history

## Related Features

- **Appointments** - Assign forms to appointments
- **Patient Records** - Form responses appear in profile
- **Check-In** - Complete forms at check-in
- **Consent** - Legal consent and signature storage
- **Data Export** - Export form data for analysis

For advanced form features, API integrations, or HIPAA compliance certification, contact your account manager.
