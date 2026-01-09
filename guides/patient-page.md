# Patient Page Guide

The Patient Page is the central hub for managing all patient-related information in Decoda. It provides healthcare providers with a comprehensive view of patient demographics, medical history, appointments, billing, and communications.

## Overview

The Patient Page consists of two main sections:

1. **Patient List** - A searchable table of all patients with filtering and bulk operations
2. **Patient Detail** - A comprehensive profile view for individual patients with 10 specialized tabs

## Patient List

Access the patient list by navigating to the **Patients** section from the main menu.

### Features

- **Search & Filter**: Find patients by name, phone number, patient ID, external ID, or date of birth
- **Advanced Filtering**: Filter by location, patient source, tags, date range, and age
- **Sorting**: Sort by name, external ID, creation date, date of birth, appointment count, or total spent
- **Bulk Actions**:
  - Create new patient
  - Merge duplicate patients
  - Upload patients (bulk import)
  - Export patient data to CSV/Excel

### Creating a Patient

1. Click **Create Patient** button
2. Enter required information:
   - First name & last name
   - Phone number
   - Email (optional)
   - Date of birth
   - Address information
3. Click **Save**

The patient will be created with status as manually created and assigned a unique patient ID.

## Patient Detail Page

Click on any patient row to open their detailed profile. The patient detail page has a left sidebar with patient information and a main content area with tabbed navigation.

### Patient Header (Left Sidebar)

The patient header displays key information at a glance:

- **Profile Picture** - Uploadable patient photo
- **Name & Tags** - Patient name with custom tag labels
- **Patient ID** - Unique identifier (if enabled)
- **Demographics** - Date of birth, age, gender
- **Contact Info** - Phone number and email (clickable for calls/messages)
- **Address** - Full mailing address
- **Preferred Provider** - Default provider for scheduling
- **Duplicate Warning** - Alert if duplicate patients are detected
- **Actions** - Create Medical Note button

## Patient Detail Tabs

The main content area contains 10 tabs for managing different aspects of patient care:

### 1. Overview (Default Tab)

The patient dashboard providing a complete summary of patient status.

**Sections:**
- **AI Summary** - AI-generated overview of the patient
- **Demographics** - Contact information and emergency contacts
- **Measurements** - Height, weight, and vital signs history
- **Medications** - Provider-administered doses with dates
- **Patient Health** - Dynamic health fields customizable by your clinic
- **Memos** - Quick notes and internal memos

### 2. Timeline

Chronological activity feed showing all patient interactions and events.

**Displays:**
- Medical notes
- Appointments
- Charges and payments
- Membership changes
- Status updates
- Any other clinic activities

Useful for understanding the complete history of patient engagement.

### 3. Appointments

Manage and view all patient appointments.

**Features:**
- Calendar view of appointments
- Appointment history
- Request Good Faith Exams (GFE)
- View appointment status and notes
- Schedule new appointments
- Reschedule or cancel appointments

### 4. Medical Notes & Data

Store and manage clinical documentation.

**Includes:**
- Provider notes
- Clinical measurements (weight, vital signs, temperature, etc.)
- Provider-administered medications
- Treatment records
- AI transcriptions of calls or consultations

### 5. Billing

Complete financial management for the patient.

**Features:**
- View all charges and balances
- Track payments received
- Manage payment methods
- Apply patient credits
- Create payment plans
- View banked items and package usage
- Payment history timeline

### 6. Forms & Documents

Manage patient intake forms and documentation.

**Content:**
- Patient intake forms
- Submitted questionnaires
- Clinical documents
- Consent forms
- Medical records

### 7. Gallery

Store and organize patient media and attachments.

**Types of Content:**
- Images related to patient care
- Diagnostic photos
- Document scans
- Clinical attachments
- Medical records

### 8. Memberships

Manage patient memberships and subscriptions.

**Features:**
- Active membership view
- Package subscriptions
- Renewal dates and schedules
- Payment methods on file
- Membership status changes
- Membership history and timeline

### 9. Packages

View and manage service packages sold to the patient.

**Information:**
- Package name and description
- Active status
- Usage tracking
- Purchase date
- Expiration information

### 10. Settings

Configure patient-specific preferences and restrictions.

**Settings Include:**

**Tags**
- Assign custom tags to organize patients
- Each tag can have custom color and emoji
- Useful for categorizing high-risk, VIP, follow-up required, etc.

**General Settings**
- **Scheduling Blacklist** - Prevent new appointments from being scheduled
- **Surcharge Disabled** - Disable automatic surcharges for this patient
- **Block Text Messages** - Stop clinic from sending SMS communications
- **Opt Out of Automated Messages** - No appointment reminders or automated notifications

**Preferred Provider**
- Set default provider for scheduling

**Advanced**
- **Delete Patient** - Permanently archive patient record (cannot be undone)

## Common Tasks

### Merging Duplicate Patients

If duplicate patient records are detected:

1. Go to **Patient List**
2. Click **Merge Duplicates**
3. Select the patients to merge
4. Confirm the merge action
5. The records will be combined, consolidating appointments, charges, and medical history

### Adding Measurements

1. Open patient detail
2. Go to **Overview** tab
3. Click **Add Measurement** in the Measurements section
4. Enter measurement type (height, weight, vitals, etc.)
5. Enter value and date
6. Save

### Creating Medical Notes

1. Click **Create Medical Note** button in patient header
2. Enter clinical notes
3. System can auto-transcribe from voice if using call integration
4. Add notes to patient timeline
5. Save

### Managing Patient Credits

1. Open **Billing** tab
2. View current credit balance
3. Click **Apply Credits** to use towards charges
4. Credits are automatically deducted from invoices

### Exporting Patient Data

1. From **Patient List**, select patients to export
2. Click **Export**
3. Choose format (CSV or Excel)
4. Download file with patient data

## Data Privacy & Security

- Patient data is automatically tenant-isolated
- Only users with appropriate permissions can view patient records
- All access is logged for audit purposes
- Patient can opt out of certain communications
- Deleted patient records are archived, not permanently removed

## Tips & Best Practices

1. **Use Tags** - Organize patients with tags for quick filtering (e.g., "High-Risk", "VIP", "Follow-up Required")
2. **Keep Demographics Updated** - Ensure accurate contact information for appointment reminders
3. **Regular Notes** - Add medical notes after each visit for continuity of care
4. **Preferred Provider** - Set preferred provider to streamline scheduling
5. **Blacklist Appropriately** - Use scheduling blacklist only when patient shouldn't receive new appointments
6. **Review Duplicates** - Periodically check for and merge duplicate records

## Related Features

- **Appointments** - Schedule and manage patient appointments
- **Billing & Payments** - Process charges and payments
- **Forms & Intake** - Collect patient information via forms
- **Communications** - Send SMS and notifications to patients
- **Analytics** - View patient metrics and performance data
