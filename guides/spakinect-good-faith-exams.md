---
title: "SpaKinect Good Faith Exams"
description: "Set up and use SpaKinect for virtual medical assessments"
---

# SpaKinect Good Faith Exams Guide

SpaKinect is a telehealth platform that provides virtual medical assessments for aesthetic treatments, ensuring compliance with medical board standards for medical spas. Integrate with SpaKinect to request Good Faith Exams (GFE) directly from patient appointments.

## What is a Good Faith Exam?

A Good Faith Exam (GFE) is a virtual medical assessment required for aesthetic treatments. SpaKinect provides licensed medical professionals who conduct these exams to ensure patient safety and regulatory compliance before treatments like Botox, dermal fillers, and other aesthetic procedures.

This requirement protects both patients and your clinic by ensuring appropriate medical oversight.

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

1. Contact Decoda support at founders@decodahealth.com
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

### From Appointment Checklist

1. Open a patient's appointment
2. Expand the **Checklist** section
3. Find the **Request GFE** checklist item
4. Click **Request New GFE**
5. Fill in the required information:
   - **Location** - Select a location with SpaKinect configured
   - **Treatments** - Select one or more treatments (e.g., "Botox Injection", "Dermal Filler")
   - **Appointment Date & Time** - When the GFE should be scheduled
   - **Patient Email & Phone** - Pre-filled from patient record (can edit)
6. Click **Submit**

### From Appointments Tab

Alternatively:

1. Navigate to patient's **Appointments** tab
2. Click **Request GFE** button
3. Follow the same steps as checklist method

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

When you request a GFE:

1. An appointment is created in SpaKinect
2. Patient receives notifications via email and SMS
3. Patient completes the virtual exam through SpaKinect's platform
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

## Best Practices

### Before Requesting a GFE

1. **Verify Patient Info** - Ensure patient email and phone number are accurate
2. **Schedule with Lead Time** - Request GFEs with enough time for patient to complete before treatment appointment (typically 24-48 hours minimum)
3. **Configure Locations** - Set up SpaKinect Location IDs for all relevant locations after module enablement

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

## Related Features

- **Appointments** - Where GFE requests originate
- **Patient Records** - GFE history linked to patient
- **Forms & Intake** - Collect patient information before GFE
- **Communications** - Patient receives notifications automatically
- **Compliance** - Ensures regulatory compliance for aesthetic treatments

## Support

For questions about SpaKinect integration:

**Decoda Support:** founders@decodahealth.com
**SpaKinect Support:** Contact your SpaKinect account representative

When contacting support, provide:
- Tenant subdomain
- Location ID
- Patient ID (if applicable)
- Error messages or screenshots
- What you were trying to do
