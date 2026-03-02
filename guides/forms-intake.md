# Forms & Intake Guide

Collect patient information digitally with custom forms. Replace paper intake packets so patients can fill everything out on their phone before they arrive.

## Getting Started

Go to **Check-In > Forms**. You'll see two tabs:
- **Forms List** -- Where you create, edit, and manage all forms.
- **Submissions** -- Where you view patient responses (requires the **Forms Submissions Read** permission).

## How Forms Work

1. You create a form with sections and questions.
2. You send the form link to a patient via text message, or a staff member fills it in person.
3. The patient opens the link on their phone or computer and answers the questions.
4. Answers are saved to the patient's record automatically (for mapped fields like demographics and medical history).
5. Staff can view submissions, export them to PDF, and follow up as needed.

## Creating a Form

### Start a New Form

1. Go to **Check-In > Forms > Forms List**.
2. Click **Create Form** in the top right corner.
3. The form editor opens with a blank form.

### Name Your Form

Click the form name area at the top of the editor and type a name (e.g., "New Patient Intake" or "Telemedicine Consent"). You can also add an optional description below the name.

### Add Sections

Click **Add Section** at the bottom of the editor area. A menu appears with four section types:

- **Custom Section** -- An empty section for any custom questions you define. Use this for intake questions, consent language, screening tools, and anything else.
- **Demographics** -- Collects name, date of birth, contact info. Answers auto-save to the patient's record.
- **Medical History** -- Collects allergies, medications, family history, and other health data. Answers auto-save to the patient's chart.
- **Payment Methods** -- Securely collects a credit card on file from the patient.

You can add multiple sections to a single form. For example, a full intake form might have a Demographics section, a Medical History section, a Custom Section for consent language, and a Payment Methods section.

### Add Questions Using the Field Palette

The left sidebar shows the **field palette** -- a list of all question types organized by category. Click any field to add it to the currently selected section.

**Form Fields** -- Standard question types:
- Short Text, Long Text, Number, Date
- Yes/No (on/off switch)
- Single Choice, Multiple Choice
- Address, Phone, Email
- Signature, File Upload
- Disclaimer (read-only text), Statement (list of points), Document (embedded PDF)

**Demographics** -- Fields that auto-save to the patient record:
- Date of Birth, Gender, Email, Address

**Vitals** -- Patient measurement fields:
- Weight, Height

**Medical History** -- Health data fields:
- Allergies, Medications, Family History, Medical History, Prescriptions
- Surgical History, Social History, Autoimmune Disorders, Skin Conditions, Neurological Conditions

**Marketing** -- Opt-in fields:
- SMS Marketing Opt-In, Email Marketing Opt-In

Mapped fields (Demographics, Vitals, Medical History, Marketing) automatically update the patient's record when they submit the form.

### Reorder Sections and Questions

Drag and drop sections or questions within a section to change their order. Grab the drag handle and move items to the desired position.

### Set Up Conditional Logic

You can make questions appear only when the patient gives a specific answer to another question. This keeps forms shorter and more relevant.

1. Select the question you want to make conditional.
2. Click **Add Condition**.
3. Set the condition:
   - Pick the **dependent question** (the earlier question whose answer controls visibility).
   - Pick an **operator**: Equals, Not Equals, or Contains.
   - Enter the **value** to compare against.
4. The question will only appear when the condition is met.

**Example:** You have a "Do you have any allergies?" yes/no question. Add a condition on the follow-up "List your allergies" question: Dependent = "Do you have any allergies?", Operator = Equals, Value = Yes. The follow-up only appears when the patient says Yes.

### Mark Questions as Required

When editing a question, you can mark it as **Required**. Patients must answer required questions before they can submit the form.

### Set Submission Expiry

Use the expiry setting in the top bar of the editor to set the number of days before a completed submission expires. After expiry, the patient must re-complete the form. Leave it empty if submissions should never expire.

### Use the AI Editor Assistant

Click the chat icon in the bottom-right corner of the form editor to open the AI assistant. Describe what you need -- for example, "Add a section about surgical history" or "Create a PHQ-9 depression screening" -- and the assistant will suggest changes. You can review each suggested change and accept or reject it before saving.

### Save Your Form

Click **Save** in the top bar. The form is now listed in your Forms List and ready to send.

## Creating a Consent Form

Consent forms are built using the same editor as all other forms. There is no separate consent form wizard.

1. Click **Create Form** and name it (e.g., "HIPAA Consent" or "Treatment Consent").
2. Add a **Custom Section**.
3. Add a **Disclaimer** question and enter the full consent text. You can format it:
   - `**text**` for bold red text (key points).
   - `*text*` for bold text.
   - `__text__` for underlined text.
4. Add a **Statement** question if you need a list of consent points.
5. Add a **Signature** question for the patient to sign.
6. Save.

## Sending Forms to Patients

### Send a Single Form

1. From the Forms List, click the form name or click the gear icon and select **Send to Patient**.
2. Search for and select a patient.
3. Choose **Open Chat** to send the form link via text message, or **Fill In Person** to complete it on your screen.

### Send Multiple Forms

1. Check the boxes next to the forms you want to send.
2. Click **Send to Patient** in the toolbar that appears.
3. Search for a patient and click **Send Forms**.

### Send Forms from an Appointment

If forms are linked to a service (set up in **Settings > Services > Forms & Intake**), those forms are automatically tied to appointments for that service. Open the appointment and click **Send Forms to Patient** to text the patient the links.

This is the recommended approach -- link forms to services so they are sent automatically as part of the appointment workflow.

## Filling a Form In Person

When a patient can't complete a form on their phone:

1. Click the gear icon on the form and select **Fill In Person**.
2. Search for and select the patient.
3. Complete each section on your screen.
4. Submit. The submission is recorded under the patient's name.

## Viewing Submissions

Go to **Check-In > Forms > Submissions** to see all patient responses. You can filter by:
- Patient name or ID
- Phone number
- Submission date
- Specific form
- Completion status (complete or partial)
- Follow-up status (upload issues)

### Submission Badges

Each submission may show one or more badges:

- **Partial Submission** -- The patient started the form but did not finish all sections.
- **Requires Follow-up** -- The patient had trouble uploading a file. The file needs to be collected another way.
- **Expired** -- The submission has passed its expiry date and the patient needs to re-complete the form.
- **Expires [date]** -- The submission will expire on the shown date.

Click **View Submission** on any row to see the patient's full answers.

## Patient Data Mapping

When you use mapped fields (from the Demographics, Vitals, Medical History, or Marketing sections of the field palette), the patient's answers automatically update their record in Decoda. This means a single intake form can fill in a patient's demographics, medical history, and more -- no manual data entry required.

## Form URLs and QR Codes

Each form has a unique URL. From the gear menu on any form:

- **Copy URL** -- Copy the link to share via email, text, or your website.
- **Generate QR Code** -- Download a QR code image linking to the form. Print and post it in your lobby, on brochures, or at the front desk.

When you select multiple forms, a combined URL is generated that walks the patient through all selected forms in sequence.

## Converting Forms to Note Templates

Forms can be converted into clinical note templates for use in Scribe. Click the gear icon on any form and select **Convert to Note Template**. You can also bulk-convert multiple forms using the checkbox selection.

## Best Practices

- **Keep forms short** -- Patients are more likely to finish shorter forms. Use conditional logic to hide questions that don't apply.
- **Group related questions** -- Put medical history questions together, insurance questions together, etc.
- **Use mapped fields** -- Mapped fields auto-save to the patient record, saving your staff from manual data entry.
- **Link forms to services** -- Instead of manually sending forms, link them to services so they're automatically part of the appointment workflow.
- **Set expiry dates** -- For consent forms and other time-sensitive documents, set an expiry so patients re-sign periodically.
- **Use clear language** -- Write questions in plain language your patients will understand. Avoid medical jargon where possible.
