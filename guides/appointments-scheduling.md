# Appointments & Scheduling Guide

The Appointments system is the backbone of your clinic's operations. It lets you schedule, manage, and track all patient appointments with an intuitive calendar interface.

## Getting Started

Access appointments by clicking **Check-In** from the main menu, then select the **Calendar** tab.

## Understanding the Calendar View

The calendar displays all appointments for your selected date range and location. Each appointment shows:
- **Patient name**
- **Time slot**
- **Status** (Scheduled, Checked In, Completed, Cancelled)
- **Service type**
- **Provider assigned**

You can view appointments by **day**, **week**, or **month** depending on your preference.

## Scheduling a New Appointment

### Quick Schedule
1. Click an empty time slot on the calendar
2. Select **New Appointment**
3. Enter patient information:
   - Search for existing patient or create new
   - Select service/appointment type
   - Choose provider
   - Set time and date
4. Add optional details (notes, forms to complete)
5. Click **Save**

### From Patient Profile
1. Open any patient's profile
2. Click **Appointments** tab
3. Click **Schedule Appointment**
4. Fill in details and save

### Patient Self-Booking
Patients can book their own appointments through your patient portal:
- They see available time slots based on your scheduling rules
- They select service type and preferred provider
- Appointments appear in your calendar for approval (if required)

### Recurring Appointments (Series)

Create a pattern of appointments that repeats:

1. Click **New Appointment**
2. Fill in appointment details
3. Click **Repeat/Series**
4. Select pattern:
   - Daily (every day, every X days)
   - Weekly (specific days of week)
   - Monthly (specific date or relative day)
   - Custom interval
5. Set end date (or number of occurrences)
6. Click **Create Series**

Series appointments:
- Create multiple appointments at once
- All linked to the same service/provider
- Can modify individual appointments without affecting series
- Cancel entire series or individual appointments

Example: Weekly therapy sessions every Monday for 12 weeks

## Appointment Status Types

| Status | Meaning | Action |
|--------|---------|--------|
| **Scheduled** | Appointment is booked but patient hasn't arrived | Check in when they arrive |
| **Checked In** | Patient has checked in at reception | Proceed with appointment |
| **Completed** | Appointment finished | Charges and notes auto-save |
| **Cancelled** | Appointment was cancelled | No-shows impact metrics |
| **Pending** | Awaiting patient confirmation | Send reminder |

## Managing Appointments

### Rescheduling
1. Click the appointment on the calendar
2. Select **Reschedule**
3. Choose new date/time
4. Save - patient is automatically notified

### Cancelling
1. Click the appointment
2. Select **Cancel**
3. Note the reason (optional)
4. Confirm - patient receives cancellation notice

### Adding Notes
1. Click the appointment
2. Add notes in the **Notes** field
3. These appear in patient timeline and medical records

### Linking Forms
Before appointment:
1. Click the appointment
2. Select **Add Forms**
3. Choose intake, consent, or assessment forms
4. Patient completes before arrival

## The Check-In Process

When patients arrive:

1. **Step 1: Clock In** - Patient or staff records arrival time
2. **Step 2: Update Information** - Verify address, insurance, emergency contacts
3. **Step 3: Complete Forms** - Patient fills required forms
4. **Step 4: Provider Review** - Provider reviews patient info and forms
5. **Step 5: Appointment** - Service is delivered
6. **Step 6: Check Out** - Process payment and confirm completion

## Appointment Analytics

View metrics on the **Dashboard** tab:
- Total appointments (today, this week, this month)
- No-show rate
- Average appointment duration
- Busiest time slots
- Provider utilization
- Cancellation trends

Use this data to optimize scheduling and identify staffing needs.

## Scheduling Rules & Availability

Configure how appointments work in **Settings > Scheduling**:

### Basic Rules

**Appointment Rules:**
- Default appointment duration
- Buffer time between appointments
- Earliest booking (how far in advance)
- Latest booking (how far in the past)
- Days/hours clinic operates
- Provider availability by day

**Service-Specific Rules:**
- Different duration per service type
- Required forms per service
- Specific provider requirements
- Location restrictions

**Advance Bookings:**
- Control how far ahead patients can book
- Prevent last-minute changes
- Require cancellation notice period

### Advanced Scheduling Scenarios

<AccordionGroup>
  <Accordion title="Buffer Time & Appointment Spacing">
    Fine-tune spacing between appointments:
    - **Default buffer** - Minutes between all appointments
    - **Service-specific buffer** - Different buffer for specific services
    - **Provider buffer** - Personalized spacing per provider
    - **Location buffer** - Vary by location

    Example: Botox needs 15-min buffer for cleanup, but consultations only need 5 min.
  </Accordion>

  <Accordion title="Timezone Handling for Remote/Telehealth">
    If offering virtual appointments across time zones:
    - Set appointment time zone during booking
    - System shows availability in patient's local time
    - Reminders sent in patient's timezone
    - Providers see appointments in their timezone

    Example: Virtual consultation at 2pm PT shows as 5pm ET for East Coast patient.
  </Accordion>

  <Accordion title="Waiting Lists & Cancellation Lists">
    When appointments are fully booked:
    - Patient joins waiting list for that appointment slot
    - Automatic notification if cancellation opens slot
    - Patient can accept or decline the newly available time
    - Tracking of how often patients actually book from waitlist

    Use for: Peak times, popular providers, high-demand services
  </Accordion>

  <Accordion title="Recurring Appointment Exceptions">
    Modify series appointments without breaking the series:
    - Skip a single occurrence
    - Move one appointment to different time/date
    - Change provider for one appointment
    - Cancel just that occurrence
    - Original series continues unaffected

    Useful for: Holidays, provider absences, patient requests for specific dates
  </Accordion>

  <Accordion title="Complex Availability Rules">
    Advanced scheduling rules per provider:
    - **Capacity limits** - Max appointments per day/week/month
    - **Rotation scheduling** - Alternate between providers
    - **Lunch/break times** - Automatic unavailable periods
    - **Vacation blocks** - Multi-day unavailability
    - **Meeting time blocks** - Staff meetings, training, etc.
    - **Min consecutive time** - Require X minutes free between appointments

    Example: Dr. Smith available Mon-Wed, limit to 8 patients/day, lunch 12-1pm, vacation July 10-20
  </Accordion>

  <Accordion title="Double-Booking & Overbooking">
    In some scenarios you may want to allow exceptions:
    - Allow double-booking with admin approval
    - Waiting room overflow capacity
    - Emergency appointment slots (override rules)
    - Virtual + in-person same time (different locations)

    Requires: Manual override each time, not automatic
  </Accordion>
</AccordionGroup>

## Shift Management

Manage staff schedules alongside appointments:

1. Go to **Shifts** in the Check-In section
2. Create shift for each provider
3. Set hours and break times
4. System prevents overbooking
5. Staff can clock in/out

View all staff time entries in **Clock-In History**.

## Best Practices

### Before Your Day
- Review morning schedule and confirm high-priority appointments
- Send reminder notifications to patients the day before
- Ensure all required forms are ready
- Verify provider availability

### During Your Day
- Check in patients promptly when they arrive
- Update appointment status as it progresses
- Flag any changes (running late, extended time needed)
- Document notes immediately after appointment

### After Your Day
- Review no-shows and cancellations
- Follow up with patients who missed appointments
- Process all payments before closing
- Verify all notes and forms are completed

## Common Tasks

### Handling No-Shows
1. Mark appointment as no-show
2. Flag patient in system
3. Follow up with phone call or message
4. Reschedule if appropriate
5. Track no-show trend for patient

### Moving an Appointment Across Providers
1. Open appointment
2. Click **Reassign Provider**
3. Select new provider
4. Check availability
5. Save and notify both providers

### Blocking Time Off
1. Go to **Scheduling**
2. Click **Add Block** on desired dates
3. Select provider(s)
4. Add note (vacation, training, etc.)
5. Time automatically unavailable for booking

### Bulk Importing Appointments
From **Calendar**:
1. Click **Import**
2. Upload CSV or Excel file
3. Map columns (date, time, patient, service, provider)
4. Review and confirm
5. Appointments auto-create

## Patient Communications

Patients receive automatic notifications:
- **Confirmation** - When appointment is booked
- **Reminder** - 24 hours before appointment
- **Changes** - If you reschedule or rescind appointment
- **Thank You** - After appointment completion with request for review

Customize these messages in **Settings > Notifications**.

## Integrations

### Google Calendar Sync
Your appointments can sync with Google Calendar:
1. Go to **Settings > Integrations**
2. Enable **Google Calendar**
3. Select which calendars to sync
4. Appointments appear in Google Calendar (read-only)

### Patient Portal
Patients see their appointments in their online portal and can:
- View upcoming appointments
- Reschedule available slots
- Fill forms before arrival
- Receive reminders

## Troubleshooting

**"No available time slots"**
- Check provider availability rules
- Verify location hours are set correctly
- Check for blocked time

**"Patient not showing in search"**
- New patient may need to be created first
- Check spelling of name
- Try searching by phone number

**"Can't reschedule appointment"**
- Check provider availability on new date
- Verify scheduling rules allow changes
- Confirm patient hasn't already checked in

## Related Features

- **Patient Management** - Link appointments to patient records
- **Billing** - Create charges from appointment services
- **Communications** - Send reminders and notifications
- **Forms** - Collect intake information before appointments
- **Medical Notes** - Document what happened during appointment

For advanced scheduling rules and multi-location management, contact your account manager.
