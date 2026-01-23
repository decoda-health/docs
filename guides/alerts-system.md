# Alerts & Notifications System Guide

Set up automated alerts to notify you of important events. Customize which events trigger alerts and who gets notified.

## Getting Started

Access alerts by clicking **Alerts** from the main menu or **Settings > Notifications** for configuration.

Two main sections:
- **Alerts Dashboard** - View and manage active alerts
- **Notification Settings** - Configure what triggers alerts

## Understanding Alerts

**What is an alert?**
An alert is an automatic notification sent when something important happens in your clinic. Examples:
- Appointment no-show
- Charge payment failure
- Patient membership renewal today
- High outstanding balance
- Form not completed before appointment

**How it works:**
1. An event happens (e.g., appointment cancelled)
2. System checks if alert is configured for that event
3. If yes, alert is created and sent to assigned person
4. Alert appears in dashboard
5. Recipient can view and mark as handled

## Viewing Alerts

### Alerts Dashboard

See all active alerts:

1. Go to **Alerts**
2. View list of current alerts with:
   - Alert title/type
   - When it occurred
   - Related patient (if applicable)
   - Status (New, Read, Resolved)
   - Action needed (if any)

### Alert Status

**New** - Alert just triggered, not yet seen
**Read** - Alert seen but not resolved
**Resolved** - Alert handled, archived
**Dismissed** - Ignored (not important)

### Sorting & Filtering

Find alerts quickly:

1. **By Type** - Filter by alert type (no-show, payment failure, etc.)
2. **By Date** - This week, month, custom range
3. **By Patient** - Search patient name
4. **By Status** - Show only new, read, or resolved alerts
5. **Priority** - Show critical alerts first

## Common Alert Types

### Appointment Alerts

**No-Show Alert**
- **When:** Patient doesn't show for appointment
- **Triggered:** Appointment time passes without check-in
- **Action:** Contact patient, consider no-show fee
- **Recipient:** Appointment owner/provider

**Cancellation Alert**
- **When:** Patient cancels appointment
- **Triggered:** Patient or staff cancels
- **Action:** Review pattern (repeat canceller?), offer reschedule
- **Recipient:** Front desk, scheduler

**Late Check-In Alert**
- **When:** Patient arrives late (e.g., 15+ minutes)
- **Triggered:** Check-in after scheduled time
- **Action:** Assess if can still fit in schedule
- **Recipient:** Provider, front desk

**Self-Booking Alert**
- **When:** Patient self-books appointment through portal
- **Triggered:** Booking confirmation sent
- **Action:** Verify details, confirm with clinic
- **Recipient:** Scheduler, manager

### Billing Alerts

**Payment Failure Alert**
- **When:** Credit card payment fails
- **Triggered:** Card declined or payment processing failed
- **Action:** Contact patient, try alternate payment, reschedule if needed
- **Recipient:** Billing staff, patient

**Outstanding Balance Alert**
- **When:** Patient balance exceeds threshold
- **Triggered:** Total owed > configured amount (e.g., $500)
- **Action:** Contact patient, set up payment plan
- **Recipient:** Billing staff

**Invoice Overdue Alert**
- **When:** Invoice unpaid past due date
- **Triggered:** At 30 days past due (configurable)
- **Action:** Send payment reminder, follow up
- **Recipient:** Billing staff, manager

**Large Charge Alert**
- **When:** Charge created above threshold
- **Triggered:** Charge > configured amount (e.g., $1000)
- **Action:** Review for accuracy, verify insurance if applicable
- **Recipient:** Manager, billing

### Patient Alerts

**New Patient Alert**
- **When:** New patient registered in system
- **Triggered:** Patient record created
- **Action:** Send welcome email, assign to provider if needed
- **Recipient:** Manager, front desk

**High-Risk Patient Alert**
- **When:** Patient flagged as high-risk
- **Triggered:** Manually flagged or meets criteria
- **Action:** Review history, implement special handling
- **Recipient:** Providers, manager

**Duplicate Patient Alert**
- **When:** Duplicate patient records detected
- **Triggered:** Similar names/phone numbers created
- **Action:** Merge records if actually same person
- **Recipient:** Manager, data admin

**Medication Interaction Alert**
- **When:** Patient on conflicting medications
- **Triggered:** Medication added that conflicts with existing
- **Action:** Review with provider, alert patient
- **Recipient:** Provider, pharmacist

### Form & Documentation Alerts

**Incomplete Form Alert**
- **When:** Patient hasn't completed required form
- **Triggered:** Appointment approaching without form completion
- **Action:** Send reminder to patient, collect form
- **Recipient:** Front desk, appointment owner

**Form Overdue Alert**
- **When:** Form deadline passed
- **Triggered:** Form not submitted by appointment time
- **Action:** Collect form at check-in or delay appointment
- **Recipient:** Front desk

**Consent Not Obtained Alert**
- **When:** Consent form not signed
- **Triggered:** Service scheduled without consent
- **Action:** Get consent before proceeding
- **Recipient:** Provider, front desk

### Membership & Package Alerts

**Membership Expiring Alert**
- **When:** Membership renewal date approaching
- **Triggered:** Within 7 days of renewal (configurable)
- **Action:** Notify patient of renewal, offer to extend
- **Recipient:** Patient, billing staff

**Package Expiring Alert**
- **When:** Package close to expiration date
- **Triggered:** Within 30 days of expiration (configurable)
- **Action:** Notify patient, encourage use
- **Recipient:** Patient, patient's provider

**Membership Cancelled Alert**
- **When:** Patient cancels membership
- **Triggered:** Cancellation processed
- **Action:** Understand why, offer retention incentive
- **Recipient:** Manager, patient's provider

## Configuring Alerts

### Enabling/Disabling Alerts

1. Go to **Settings > Notifications**
2. Scroll to alert types
3. For each alert type, toggle **Enabled** on/off
4. Save changes

### Setting Alert Triggers

Configure when alert activates:

1. Click alert type
2. Set **Trigger Condition:**
   - Event type (e.g., "No-Show")
   - Timeframe (e.g., "Within 24 hours")
   - Threshold (e.g., "Balance > $500")
3. Set **Delay** (immediately, 1 hour, 1 day)
4. Save

### Assigning Alert Recipients

Who gets notified:

1. Click alert type
2. Under **Recipients**, select who receives:
   - Specific person
   - Role (all managers, all providers)
   - Location (all staff at location)
   - Patient (notify them directly)
3. Add multiple recipients for important alerts
4. Save

### Setting Alert Delivery

How alert is sent:

1. Click alert
2. Select delivery method:
   - **In-App** - Appears in alerts dashboard only
   - **Email** - Sent to recipient's email
   - **SMS** - Text message (if phone number configured)
   - **All** - Every method
3. For delays: set time to send (e.g., send at 8am, not 2am)

### Alert Frequency

Prevent alert spam:

1. Click alert type
2. Set **Frequency Limit:**
   - "Only alert once per patient per day"
   - "Only alert if not alerted in last 7 days"
   - "Alert every time"
3. Prevents duplicate alerts

## Managing Alerts

### Viewing Alert Details

1. Click alert in dashboard
2. See full details:
   - What triggered it
   - Related patient/appointment
   - When it occurred
   - Actions taken
   - Messages sent

### Taking Action

1. Read alert details
2. Click **Action** or **Address Alert**
3. Choose action:
   - Contact patient
   - Resolve issue
   - Schedule follow-up
   - Mark resolved
4. Save action note

### Marking as Resolved

Once handled:

1. Click alert
2. Click **Mark Resolved**
3. Add note (optional): "Called patient, rescheduled"
4. Alert archived

### Dismissing Alerts

Not all alerts need action:

1. Click alert
2. Click **Dismiss**
3. Alert hidden but logged
4. View dismissed alerts in filter

### Creating Alert Rules

For recurring situations:

1. Go to **Settings > Alert Rules**
2. Click **Create Rule**
3. Condition: If [event], Then [alert]
4. Example: "If patient no-show > 2 times, then flag for special handling"

## Use Cases

### No-Show Management

**Alerts help identify patterns:**
1. Alert when patient no-shows
2. Track repeat no-shows in alert history
3. After 3rd no-show → high-risk patient alert
4. Implement requires credit card hold or payment upfront

### Billing Collection

**Improve cash flow:**
1. Alert when invoice past due (7, 15, 30 days)
2. Alert when payment fails
3. Alert when balance exceeds threshold
4. Escalate overdue to collections

### Patient Safety

**Prevent mistakes:**
1. Alert if medications conflict
2. Alert if consent not obtained
3. Alert if form missing before appointment
4. Alert if red flag in patient history

### Operational Efficiency

**Reduce friction:**
1. Alert when appointment has issues (late patient)
2. Alert when forms not completed
3. Alert new patient for welcome
4. Alert staff of self-booked appointments

## Best Practices

### Don't Alert on Everything

Too many alerts → staff ignores them. Choose important events:
- Critical: Payment failures, no-shows, safety issues
- Important: Membership renewal, outstanding balance
- Nice to have: New patients, self-booked appointments
- Skip: Minor events (patient read message, viewed appointment)

### Assign to Right Person

**No-Show Alert → Scheduler or Manager**
**Payment Failure → Billing Staff**
**Form Incomplete → Front Desk**
**Medication Issue → Provider**

Wrong recipient = alert ignored.

### Set Appropriate Thresholds

**Outstanding Balance Alert:**
- Too low ($50) → too many alerts
- Too high ($5000) → too late to act
- Right level ($500-1000) → actionable

**Payment Failure Retry:**
- Retry too soon → customer frustrated
- Retry too late → patient moves on
- Right timing (3 days) → increases success

### Regular Review

1. **Weekly:** Review alerts dashboard
2. **Monthly:** Check if alerts are actually helping
3. **Quarterly:** Adjust thresholds/recipients based on experience

### Document Your Alerts

Keep a list of what alerts you have and why:
```
Alert: No-Show
Recipients: Scheduler, Manager
Action: Call patient, assess no-show policy
Purpose: Reduce no-shows, understand patterns

Alert: Payment Failure
Recipients: Billing Staff
Action: Contact patient, update card
Purpose: Reduce bad debt, improve collections
```

## Advanced Alert Features

<AccordionGroup>
  <Accordion title="Complex Trigger Conditions & Logic">
    Sophisticated rule-based alert conditions:
    - **Multi-condition AND/OR logic** - Combine multiple conditions (patient age > 65 AND balance > $1000)
    - **Scheduled triggers** - Alert at specific times (8am daily, Monday mornings, month-end)
    - **Event chains** - Trigger after sequence of events (no-show twice, then email, then flag)
    - **Time-based conditions** - Only alert during business hours, skip weekends
    - **Threshold conditions** - Alert when metric crosses threshold (revenue drops 20% vs. average)
    - **Recurring conditions** - Pattern detection (3+ no-shows in 90 days)
    - **Negative conditions** - Alert when something DOESN'T happen (payment not received in 7 days)

    Example: Alert manager only if patient balance > $1000 AND no payment in 30+ days AND role is Provider
  </Accordion>

  <Accordion title="Alert Integrations & External Systems">
    Send alerts to external platforms:
    - **Webhook integration** - Send alert data to custom apps via HTTP
    - **Slack integration** - Post alerts to specific Slack channels
    - **Microsoft Teams** - Send alerts to Teams channels with actionable cards
    - **Email forwarding** - Forward alerts to team distribution lists
    - **SMS gateway integration** - Send alerts via third-party SMS providers
    - **Zapier/IFTTT** - Trigger automations in external tools
    - **CRM integration** - Auto-create tasks in Salesforce, HubSpot, etc.

    Example: Payment failure alert goes to billing Slack channel AND creates Salesforce task
  </Accordion>

  <Accordion title="AI-Powered Alert Routing & Prioritization">
    Intelligent alert management:
    - **Smart recipient routing** - AI routes alerts to most relevant person based on history
    - **Urgency scoring** - AI calculates alert importance (critical, high, medium, low)
    - **Confidence scoring** - Trust level of alert (some false positives are lower confidence)
    - **On-call routing** - Send to whoever is on-call using schedule
    - **Load-based routing** - Distribute alerts based on current workload
    - **Predictive recipient** - ML learns who handles which alert types
    - **Anomaly detection** - AI flags unusual patterns (different no-show pattern than usual)

    For: Large teams, high-volume alerts, 24/7 operations
  </Accordion>

  <Accordion title="Alert Suppression & Intelligent Batching">
    Reduce alert fatigue:
    - **Suppression rules** - Don't alert if similar alert triggered recently
    - **Deduplication** - Combine multiple identical alerts into one
    - **Batching windows** - Collect similar alerts, send once per day
    - **Smart batching** - Group alerts by type (all payment failures together)
    - **Quiet periods** - Suppress low-priority alerts during peak hours
    - **Patient-level suppression** - Max X alerts per patient per day
    - **Fatigue-aware rules** - Reduce alert frequency if staff ignoring them

    Example: Instead of 10 separate low-balance alerts, send one daily digest at 8am
  </Accordion>

  <Accordion title="Custom Alert Rules & Workflows">
    Define business-specific workflows:
    - **Conditional escalation** - If alert unresolved 24h, escalate to manager
    - **Multi-step workflows** - Alert → wait 3 days → escalate if unresolved
    - **Approval workflows** - Alert requires approval before action taken
    - **Custom status tracking** - Track alert through: New → Acknowledged → In Progress → Resolved
    - **Alert dependencies** - Some alerts suppress if related alert triggered
    - **Time-gated actions** - Action required by deadline or alert escalates
    - **Bulk alert actions** - Resolve multiple similar alerts with one action

    Example: No-show alert → if no response in 24h → escalate to manager → auto-send SMS reminder
  </Accordion>

  <Accordion title="Alert Analytics & Performance Tuning">
    Measure and improve alert system:
    - **Alert effectiveness tracking** - Did alert lead to desired outcome?
    - **Time-to-resolution** - How long between alert and resolution
    - **Alert ignore rate** - % of alerts dismissed without action
    - **False positive rate** - Alerts that didn't need action
    - **Response time by recipient** - Who responds fastest to alerts
    - **Alert volume trends** - Track alerts over time (trending up/down)
    - **ROI calculation** - Quantify business impact of alerts

    Example: Payment failure alerts have 85% resolution rate with 2hr average resolution time
  </Accordion>

  <Accordion title="Rate Limiting & Alert Fatigue Prevention">
    Prevent alert overwhelm:
    - **Per-recipient rate limit** - Max X alerts to one person per hour
    - **Per-patient rate limit** - Max Y alerts about same patient per day
    - **Alert throttling** - Space out alerts over time instead of bursts
    - **Priority-based delivery** - Deliver high-priority alerts first if hitting limits
    - **Escalation of critical alerts** - Critical alerts bypass rate limits
    - **Team capacity management** - Adjust alert volume based on team size
    - **Feedback loop** - Reduce alert frequency if response rate dropping

    Critical for: Preventing alarm fatigue, ensuring alerts stay actionable
  </Accordion>

  <Accordion title="Advanced Alert Templates & Personalization">
    Customizable alert formats:
    - **Template variables** - Personalize alerts with dynamic content (patient name, amounts)
    - **Multi-language support** - Alerts sent in staff's preferred language
    - **Rich formatting** - HTML emails with tables, colors, action buttons
    - **Conditional messaging** - Different message based on alert details
    - **Tone variants** - Urgent tone for critical, casual for informational
    - **Branding & white-label** - Custom logo and colors in alerts
    - **Mobile-optimized** - Alerts format properly on phone screens

    Example: Alert template: "{{PATIENT_NAME}} has ${{BALANCE}} outstanding, last payment {{DAYS_SINCE}} days ago"
  </Accordion>

  <Accordion title="Alert Audit Trail & Compliance">
    Regulatory and security tracking:
    - **Complete alert history** - Every alert ever generated logged
    - **Who took action** - Track which staff member resolved/dismissed alert
    - **Action details** - Document what action was taken and when
    - **Compliance exports** - Generate audit reports for regulators
    - **Immutable logs** - Alert history cannot be modified
    - **Evidence preservation** - Prove alert was triggered and addressed
    - **HIPAA-compliant archiving** - Secure storage meeting regulatory requirements

    Critical for: Compliance, malpractice protection, legal defensibility
  </Accordion>

  <Accordion title="Alert Dashboards & Analytics Views">
    Monitor alert system health:
    - **Alert dashboard** - Real-time view of active/overdue alerts
    - **Alert trends** - Charts showing alert volume over time
    - **Alert heatmaps** - Identify problem areas (high no-shows, payment failures, etc.)
    - **Resolution metrics** - Track how fast alerts get resolved
    - **Staffing impact** - See who alerts are assigned to
    - **Performance benchmarks** - Compare against targets
    - **Predictive insights** - AI forecasts future alert volume

    Example: Dashboard shows payment failure alerts up 40% this month vs. last month
  </Accordion>
</AccordionGroup>

## Troubleshooting

**"Alert didn't trigger"**
- Verify alert is enabled in settings
- Check trigger condition matches event
- Check alert recipient is assigned
- Verify delivery method is configured
- May need to refresh page

**"Getting too many alerts"**
- Reduce frequency (set daily max instead of every time)
- Raise threshold (only alert for big issues)
- Disable non-critical alerts
- Group similar alerts

**"Alert went to wrong person"**
- Check recipient assignment
- Verify person's role has permission to view alert
- Check if location-specific alert is set to right location
- Add correct person as secondary recipient

**"Staff not seeing alerts"**
- Check their role has permission
- Check alert delivery method (maybe email only, not in-app)
- Verify in-app notifications enabled in settings
- Check if they've logged in yet

## Related Features

- **Notifications** - Configure alerts and messages
- **Appointments** - No-show and appointment alerts
- **Billing** - Payment and balance alerts
- **Patient Records** - Patient safety alerts
- **Forms** - Form completion alerts

For advanced alert workflows or custom triggers, contact Decoda support at support@decodahealth.com.
