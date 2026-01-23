---
title: "SpaKinect Good Faith Exams"
description: "Set up and use SpaKinect for virtual medical assessments"
---

# SpaKinect Good Faith Exams Guide

SpaKinect is a telehealth platform that provides virtual medical assessments for aesthetic treatments, ensuring compliance with medical board standards for medical spas. Integrate with SpaKinect to request Good Faith Exams (GFE) directly from patient appointments.

## What is a Good Faith Exam?

A Good Faith Exam (GFE) is a medical assessment required for aesthetic treatments. SpaKinect provides licensed medical professionals who conduct these exams to ensure patient safety and regulatory compliance before treatments like Botox, dermal fillers, and other aesthetic procedures.

This requirement protects both patients and your clinic by ensuring appropriate medical oversight.

### Assessment Types

SpaKinect supports two types of GFE assessments:

- **On Demand** - Immediate in-person exams for patients at your clinic. The patient scans a QR code or opens a link to complete the exam right away. Best for walk-in patients or same-day treatment needs.
- **At Home** - Scheduled virtual exams that the patient completes remotely before their appointment. The patient receives email and SMS notifications with instructions. Best when there's advance notice before treatment.

## Getting Started

### Prerequisites

- Request SpaKinect module enablement from Decoda support
- You must have a SpaKinect account with location IDs

When you request SpaKinect module enablement, Decoda will:
- Enable the SpaKinect module for your tenant
- Set up the "Request GFE" checklist items on your services

You only need to configure your locations after the module is enabled.

### Step 1: Request Module Enablement

To get started with SpaKinect integration:

1. Contact Decoda support at support@decodahealth.com
2. Request SpaKinect module enablement
3. Provide your SpaKinect account information and location IDs
4. Decoda will enable the module and configure checklist items for your services

### Step 2: Configure Your Location

Enable SpaKinect for each location:

1. Go to **Settings > Locations**
2. Click on the location you want to configure
3. Find the **SpaKinect Location ID** field
4. Enter your SpaKinect location ID (e.g., `jkA6SQCtwZhRNpOFj0ZN`)
5. Click **Save**

The system automatically subscribes your location to SpaKinect. You'll see a green "SpaKinect Enabled" badge on configured locations.

**Important:** Only locations with a SpaKinect Location ID configured will be available when requesting GFEs.

## Requesting a Good Faith Exam

When requesting a GFE, you'll choose between **On Demand** and **At Home** assessment types.

### On Demand GFE (In-Person)

Use this when the patient is at your clinic and needs an immediate exam:

1. Open the patient's record or appointment
2. Click **Request GFE**
3. Select the **On Demand** tab
4. Fill in the required information:
   - **Location** - Select a location with SpaKinect configured
   - **Treatments** - Select one or more treatments
5. Click **Start On Demand GFE**
6. A QR code and link will be generated - show the QR code to the patient or open the link on a tablet for them to complete the exam immediately

### At Home GFE (Scheduled)

Use this when the patient will complete the exam remotely before their appointment:

#### From Appointment Checklist

1. Open a patient's appointment
2. Expand the **Checklist** section
3. Find the **Request GFE** checklist item
4. Click **Request New GFE**
5. Select the **At Home** tab
6. Fill in the required information:
   - **Location** - Select a location with SpaKinect configured
   - **Treatments** - Select one or more treatments (e.g., "Botox Injection", "Dermal Filler")
   - **Appointment/Event** - The appointment date/time (auto-filled from checklist context)
   - **Patient Email & Phone** - Required for notifications (pre-filled from patient record)
7. Click **Request GFE**

#### From Patient Page

1. Navigate to patient's **Appointments** tab
2. Click **Request GFE** button
3. Select the **At Home** tab
4. Search and select an existing appointment
5. Complete the remaining fields (e.g., Location, Treatments) and click **Request GFE**

## Tracking GFE Status

Once a GFE is requested, track its progress:

**Status Indicators:**
- 🟡 **Processing** / **Pending Review** - GFE is being reviewed
- 🟢 **Approved** / **Completed** - GFE is approved and ready to proceed
- 🔴 **Rejected** - GFE was not approved
- ⚪ **Cancelled** - GFE was cancelled

**Where to View:**
- **In Checklist** - Recent GFEs appear with status badges
- **In Appointments Tab** - All patient GFEs listed with current status
- **In Patient History** - Complete record of all GFE requests

## Patient Experience

### On Demand (In-Person)

1. Staff shows the patient a QR code or opens the visit link on a clinic device
2. Patient completes the exam immediately through SpaKinect's platform
3. Status updates automatically sync back to Decoda
4. You see approval status once the exam is complete

No email or SMS notifications are sent - the exam happens on the spot.

### At Home (Scheduled)

1. An appointment is created in SpaKinect
2. Patient receives notifications via email and SMS
3. Patient completes the virtual exam through SpaKinect's platform before their treatment appointment
4. Status updates automatically sync back to Decoda
5. You see approval status in appointment

Patient receives all communications from SpaKinect - no action needed from you.

## How It Works

### Automatic Features

**Location Subscription**
- When you add a SpaKinect Location ID, the system automatically subscribes that location
- Seamless integration without manual API setup

**Treatment Selection**
- System fetches available treatments from SpaKinect's API
- Always have latest treatment options available

**Status Synchronization**
- GFE statuses automatically sync from SpaKinect
- Always see current status in Decoda
- Refresh page to see latest updates

**Patient Integration**
- GFE requests linked to patient records
- Easy to track exam history across appointments
- Available in patient timeline and medical records

## Importing Existing GFEs

If you have GFEs in SpaKinect that were created outside of Decoda, you can import them to link them with your patient records.

### Sync GFEs from SpaKinect

1. Go to **Settings > Locations**
2. Find a location with SpaKinect configured
3. Open the location menu (three dots) and click **Sync GFEs**
4. The system fetches all GFEs from SpaKinect for that location
5. Review the preview showing:
   - **Ready to Import** - GFEs matched to existing patients by name and date of birth
   - **Already Imported** - GFEs already in your system (collapsed by default)
   - **Cannot Import** - GFEs with no matching patient in Decoda
6. Select which GFEs to import (all matched GFEs are selected by default)
7. Click **Import** to create the GFE records in Decoda

### How Matching Works

GFEs are matched to patients using:
- Exact match on first name (case-insensitive)
- Exact match on last name (case-insensitive)
- Exact match on date of birth

GFEs that cannot be automatically matched will appear in the "Cannot Import" section. To import these, first create the patient in Decoda with matching name and date of birth, then sync again.

### What Gets Imported

When you import a GFE:
- A GFE record is created linking the patient to the SpaKinect GFE
- If the GFE has a PDF document, it's downloaded and attached
- The GFE appears in the patient's history and appointments tab

## Best Practices

### Before Requesting a GFE

1. **Verify Patient Info** - For At Home GFEs, ensure patient email and phone number are accurate
2. **Schedule with Lead Time** - For At Home GFEs, request with enough time for patient to complete before treatment (typically 24-48 hours minimum)
3. **Configure Locations** - Set up SpaKinect Location IDs for all relevant locations after module enablement
4. **Choose the Right Type** - Use On Demand for walk-ins and same-day needs; use At Home when there's advance notice

### During Treatment

1. **Monitor GFE Status** - Regularly check status to ensure patient completes exam on time
2. **Schedule Appropriately** - Don't schedule treatment until GFE is approved
3. **Document Approval** - Note GFE approval in appointment notes

### For Your Clinic

1. **Use Consistent Locations** - Use same SpaKinect location ID for locations sharing same SpaKinect account
2. **Communicate Clearly** - Inform patients GFE may be required for certain treatments during booking
3. **Review Rejections** - If GFE rejected, understand reason and address before re-requesting

## Troubleshooting

### No Locations Available

If you don't see any locations when requesting a GFE:

1. Verify the SpaKinect module has been enabled by Decoda support
2. Check that at least one location has a SpaKinect Location ID configured
3. Verify the location ID is correct and active in your SpaKinect account
4. Refresh the page and try again
5. Contact Decoda support if issue persists

### Patient Contact Information Missing

GFE requests require patient email and phone number:

1. Open patient record
2. Go to **Settings** or contact section
3. Add/update email and phone
4. You can override these values when requesting GFE if needed

### GFE Status Not Updating

If GFE statuses aren't updating:

1. Statuses are fetched from SpaKinect when viewing GFEs
2. Refresh the page or navigate away and back to see latest
3. Check SpaKinect account directly to verify status
4. Contact support if statuses remain stale

### Patient Says They Didn't Receive Email

If patient missed the GFE notification:

1. Verify patient email address is correct
2. Check patient's spam folder
3. You can resend request in SpaKinect or through Decoda
4. Provide patient with direct link if available
5. Contact SpaKinect support for delivery issues

### On Demand GFE - No Visit Link Generated

If the On Demand GFE is created but no QR code appears:

1. The GFE was still created in SpaKinect
2. Click the link to open SpaKinect portal directly
3. Find the GFE in the portal and share the link with the patient
4. Contact support if this happens repeatedly

### Sync Shows "Cannot Import" for Known Patients

If GFEs show as unmatched but you have those patients:

1. Check that patient name spelling matches exactly (including middle names)
2. Verify the date of birth matches exactly
3. SpaKinect uses MM/DD/YYYY format - ensure the DOB was entered correctly there
4. If needed, update the patient record in Decoda to match, then sync again

### Sync Button Not Appearing

If you don't see the Sync GFEs option for a location:

1. Verify the location has a SpaKinect Location ID configured
2. Ensure the SpaKinect module is enabled for your tenant
3. Refresh the page
4. Contact Decoda support if issue persists

## Common Tasks

### Requesting GFE for Multiple Treatments

1. Click **Request GFE**
2. In Treatments field, select all applicable treatments
3. One GFE covers all selected treatments
4. Patient completes comprehensive exam

### Cancelling a GFE Request

1. Go to appointment or patient's Appointments tab
2. Find GFE with status
3. Click **Cancel GFE**
4. Confirm cancellation
5. Patient notified of cancellation

### Viewing All GFEs for a Patient

1. Open patient record
2. Go to **Appointments** tab
3. Scroll to GFE section
4. See complete history of all GFE requests
5. Click on each to see details and status

### Rescheduling a GFE Appointment

1. GFE appointment is in patient's schedule
2. Patient can reschedule through SpaKinect portal
3. Changes sync back to Decoda automatically
4. Or cancel and request new GFE at different time

### On Demand GFE for Walk-In Patient

1. Open or create the patient record
2. Click **Request GFE**
3. Select **On Demand** tab
4. Select location and treatments
5. Click **Start On Demand GFE**
6. Show QR code to patient or use the visit link

### Importing GFEs After Migration

If you're migrating from another system or used SpaKinect before connecting to Decoda:

1. Go to **Settings > Locations**
2. Click the menu on a SpaKinect-enabled location
3. Click **Sync GFEs**
4. Review and import matched GFEs
5. For unmatched GFEs, create the patients first, then sync again

## Related Features

- **Appointments** - Where GFE requests originate
- **Patient Records** - GFE history linked to patient
- **Forms & Intake** - Collect patient information before GFE
- **Communications** - Patient receives notifications automatically
- **Compliance** - Ensures regulatory compliance for aesthetic treatments

## Support

For questions about SpaKinect integration:

**Decoda Support:** support@decodahealth.com
**SpaKinect Support:** Contact your SpaKinect account representative

When contacting support, provide:
- Tenant subdomain
- Location ID
- Patient ID (if applicable)
- Error messages or screenshots
- What you were trying to do
