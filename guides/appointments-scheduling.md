# Appointments & Scheduling Guide

This guide covers day-to-day scheduling tasks: viewing the calendar, booking appointments, managing shifts and blocks, patient self-scheduling, and tracking patients through their visit.

## Calendar Views

The calendar is accessed from the **Check-In** section in the main navigation. There are three views:

- **Day View** -- Shows a single day with each provider in their own column. Appointments appear as blocks on a time grid. This is the default view and is best for managing a busy clinic day.
- **Week View** -- Displays a seven-column grid (or five if weekends are hidden). Useful for seeing the full week at a glance.
- **Schedule View** -- A list of appointments in chronological order showing patient name, provider, service, location, time, and duration. This view supports exporting to PDF or CSV.

There is no month view.

## Creating Appointments

1. Click **Create Event** in the sidebar, or click any empty time slot on the calendar grid.
2. Select **Appointment**.
3. Search for an existing patient by name, phone, or email. You can also create a new patient record from the search.
4. Select one or more services. Each service can have its own provider, start time, and duration.
5. Choose the provider and location. Only providers qualified for the selected service appear in the list.
6. Set the date and start time. The end time auto-calculates based on the service duration. If the service has prep time, a prep segment is added before the main appointment. If the service has cleanup time, a cleanup segment is added after.
7. Optionally set recurrence (daily, weekly, weekdays, monthly, annually, or custom).
8. Add notes or memos if needed.
9. Click **Save**. The system sends notifications to the patient based on the service's configuration.

You can also drag appointments to a new time slot on the calendar in Day or Week view to quickly move them.

## Appointment Statuses

| Status | Meaning |
|--------|---------|
| **Pending** | The patient has not yet confirmed the appointment. |
| **Reserved** | The patient has reserved the slot but has not paid a required booking fee. |
| **Confirmed** | The patient has confirmed and the appointment is locked in. |
| **Overridable** | The patient has not confirmed and another patient can book over this slot. |
| **Completed** | The appointment is finished. |
| **No Show** | The patient did not arrive. |
| **Cancelled** | The appointment was cancelled by staff or the patient. |

Customize the colors and visual style for each status in **Settings > Calendar Appearance**.

## Editing and Canceling Appointments

### Editing

Click the edit icon on an appointment (visible on hover) or open the appointment form. From the form you can:

- Change the date, time, or duration
- Change the provider (select a different one from the provider list in the form)
- Change the location
- Add or remove services
- Modify recurrence settings
- Add bookable resources (rooms, equipment)

For recurring appointments, you choose the scope: this event only, this and following events, or all events.

### Rescheduling

To reschedule, edit the appointment and change the date or time. You can also drag the appointment to a new time slot on the calendar grid. The system can send an update notification to the patient.

### Canceling

Open the appointment form and click **Cancel**. You can optionally provide a reason, choose whether to send an SMS to the patient, and customize the cancellation message. If the service has a cancellation fee configured and the appointment is within the fee window, the charge can be applied.

## Blocks and Shifts

Blocks and shifts are best managed from the **Shift Management** page (under **Check-In > Shift Management**), which shows all providers across all locations in a graphical timeline.

### Shifts

Shifts define when a provider is available to see patients. When the "Show Working Hours" on/off switch is enabled on the calendar, time outside of shifts is marked with diagonal stripes.

To create a shift:

1. In Shift Management, click **Add > Create new Shift**.
2. Set the start and end times.
3. Select the provider.
4. Select the location.
5. Optionally set capacity (max concurrent appointments) and recurrence.
6. Click **Create**.

### Shift Conflicts

When providers have overlapping shifts, Shift Management shows a warning banner listing the conflicts. Expand the banner to see the specific shift times and locations, then click on an overlapping shift bar to edit or delete it.

### Blocks

Blocks prevent appointments from being booked during specific times. Use them for lunch breaks, meetings, training, or any unavailable period.

To create a block:

1. In Shift Management, click **Add > Create new Block**.
2. Enter a title (e.g., "Lunch", "Staff Meeting").
3. Set the start and end times.
4. Select one or more providers.
5. Optionally restrict to specific services and set recurrence.
6. Click **Create**.

## Self-Scheduling

Self-scheduling lets patients book appointments online without calling the clinic. The patient-facing booking page guides them through:

1. **Patient type** -- "Yes, I'm an existing patient", "No, I'm a new patient", or "I'm not sure". Existing patients verify their identity through phone-based MFA.
2. **Location type** -- In-Person, Telehealth, or "Skip, I'll decide later".
3. **Service selection** -- Browse available services, filtered by category. Popular services appear first.
4. **Location** -- For in-person visits, select a clinic location.
5. **Provider** -- If individual provider booking is enabled, the patient can choose a specific provider. Otherwise, one is auto-assigned.
6. **Time** -- Select from available time slots based on provider shifts, existing appointments, and service duration.
7. **Confirmation and payment** -- Review details, provide a credit card if required, reserve the slot, and pay any booking fee.
8. **Booking complete** -- A confirmation SMS is sent and any required forms are shown.

The system checks for existing future appointments and lets returning patients reschedule or cancel existing bookings before making new ones. Booking progress is saved automatically, so if a patient leaves and returns, they see a "Welcome back!" prompt to continue or start over.

Configure self-scheduling per service in **Settings > Services** under the **Visibility & Discovery**, **Pricing & Payments**, and **Scheduling & Booking** tabs.

## Appointment Checklist

The **Patient Status** panel tracks patients through their visit in real time. Each appointment has a configurable checklist defined per service in **Settings > Services > Checklists**. Available checklist steps:

| Step | Description |
|------|-------------|
| **Filled Form** | Patient has completed required intake forms. |
| **Checked In** | Patient has arrived and been checked in. |
| **With MA** | Patient is with the medical assistant. |
| **Measurement Taken** | Vitals or measurements recorded. |
| **Dose Taken** | Medication or treatment dose administered. |
| **With Provider** | Patient is with the provider. |
| **Note Taken** | Clinical note has been created. |
| **Payment Made** | Patient has completed checkout and payment. |
| **Picture Taken** | Before/after photos documented. |
| **Request GFE** | Good Faith Exam has been requested. |

Staff mark each step complete from the Patient Status panel or the patient sidebar. Each completed step shows who completed it and when. An overdue indicator appears when a patient has been waiting too long at a stage.

Use the filter icon in the Patient Status panel to show only patients at specific stages.

## Google Calendar Sync

Sync your Decoda calendar with Google Calendar so appointments automatically appear on your Google Calendar.

- **Organization-level:** Go to **Settings > General** and find the Google Calendar Integration section. Connect a centralized Google account to sync all appointments.
- **Individual provider:** Each provider can connect their own Google Calendar from **Settings > Preferences > Calendar**. When enabled, the "Send Google Calendar Invites" switch adds calendar invites for each appointment.

Individual provider calendars take precedence over the organization-level calendar.

## Tips for Daily Use

### Before Your Day
- Review the morning schedule and confirm high-priority appointments.
- Verify provider availability in Shift Management.
- Ensure all required forms are ready.

### During Your Day
- Check in patients promptly when they arrive and mark checklist steps as they progress.
- Use quick notes (memos) to attach short reminders to appointments.
- Update appointment status as it progresses.

### After Your Day
- Review no-shows and cancellations.
- Follow up with patients who missed appointments.
- Verify all notes, forms, and payments are completed.

## Related Features

- [Appointments](/modules/scheduling/appointments) -- Full details on booking, editing, and appointment statuses.
- [Blocks, Shifts & Patient Status](/modules/scheduling/blocks-and-shifts) -- Managing provider availability and patient check-in progress.
- [Self-Scheduling](/modules/scheduling/self-scheduling) -- Configuring the patient-facing online booking page.
