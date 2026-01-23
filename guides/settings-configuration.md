# Settings Configuration Guide

Configure how your clinic operates. Settings control everything from locations and services to payment processing and notifications.

## Getting Started

Access settings by clicking **Settings** from the main menu. You'll see 20+ configuration areas organized by function.

**Key principle:** Most settings take effect immediately. Some require a page refresh to apply.

## Essential Settings (Do First)

These foundational settings must be configured before your clinic can operate.

### 1. Locations

Your clinic physical locations/facilities.

**Access:** Settings > Locations

**What to configure:**
- **Name** - Location name (e.g., "Downtown Clinic", "North Location")
- **Address** - Full address where patients visit
- **Phone** - Main clinic phone number
- **Hours** - When clinic is open (affects appointment scheduling)
- **Time Zone** - Important for scheduling (affects all times)
- **Services Offered** - Which services available at this location
- **Staff Assigned** - Which providers/staff work here
- **Payment Methods** - Which payment options available (card, cash, etc.)
- **SpaKinect Location ID** - If using GFE exams

**Why it matters:**
- Patients book at specific locations
- Staff assigned to locations
- Affects availability for scheduling
- Multiple locations = multiple schedules

**Example Configuration:**
```
Name: "Downtown Aesthetic Clinic"
Address: "123 Main St, New York, NY 10001"
Phone: "(212) 555-0100"
Hours: Mon-Fri 9am-6pm, Sat 10am-4pm, Sun Closed
Time Zone: "Eastern Time"
Services: Botox, Fillers, Facials, Consultations
Staff: Dr. Smith, Nurse Jane, Receptionist Mike
```

### 2. Services

What you offer to patients.

**Access:** Settings > Services

**What to configure:**
- **Service Name** - What you call it (e.g., "Botox Injection", "Facial Treatment")
- **Category** - Group services (e.g., "Injectables", "Facials", "Consultations")
- **Description** - What patient sees when booking
- **Default Duration** - How long appointment takes (15 min, 30 min, 60 min, etc.)
- **Price/Rate** - What you charge (can be per hour or fixed)
- **Required Forms** - Forms patient must fill before appointment
- **Checklist Items** - Tasks before/after appointment (e.g., "Request GFE")
- **Services Conflict** - Services that can't be booked same day
- **Provider Restriction** - Only certain providers can offer

**Why it matters:**
- Defines what patients can book
- Controls appointment duration
- Drives charges (service = item on invoice)
- Patient sees this when scheduling

**Example Configuration:**
```
Service: "Botox Treatment"
Category: "Injectables"
Duration: 30 minutes
Price: $12 per unit (variable)
Required Forms: Consent Form, Intake
Checklist: Request GFE, Before Photo
Conflicts: Other injectables (don't double-book)
Providers: Dr. Smith, Dr. Jones (not Dr. Brown)
```

### 3. Categories

Organize services into logical groups.

**Access:** Settings > Categories

**What to configure:**
- **Category Name** - Group name (e.g., "Injectables", "Skincare", "Wellness")
- **Display Order** - Order shown to patients when booking
- **Color** - Visual identifier in calendar and lists (optional)

**Why it matters:**
- Better organization for patient booking
- Revenue reporting by category
- Helps patients find services

**Example:**
- Injectables (Botox, Fillers)
- Laser (Hair Removal, Skin Resurfacing)
- Skincare (Facials, Chemical Peels)
- Consultations (Free Consultation, Follow-up)

### 4. Bookables

Services available for patient self-booking (patient portal).

**Access:** Settings > Bookables

**What to configure:**
- **Which Services Available** - Checkmark services patients can self-book
- **Availability Rules** - How far ahead they can book
- **Duration Flexibility** - Can patient choose duration or locked time
- **Price Display** - Show price to patient during booking

**Why it matters:**
- Reduces staff scheduling burden
- 24/7 booking availability
- Patients book directly

**Example Configuration:**
- Allow self-booking: Consultations, Follow-ups, Haircut
- Prevent self-booking: Complex procedures, Injectables (need approval)
- Min advance: 24 hours
- Max advance: 90 days

## Core Configuration

### Providers

Staff who deliver services.

**Access:** Settings > Providers (or Users with Provider role)

**What to configure:**
- **Name & Credentials** - Full name and credentials (MD, RN, etc.)
- **Specialties** - What they specialize in
- **Bio/Photo** - Patient-facing information
- **Services Offered** - Which services they provide
- **Hours/Availability** - When they work (days and times)
- **Break Times** - Lunch, meetings, etc.
- **Location Assignment** - Which clinic location(s)

**Why it matters:**
- Patients see who they're booking with
- Availability affects scheduling
- Revenue/commission calculated per provider
- Quality reputation tied to provider

### Users & Roles

Staff member access and permissions.

**Access:** Settings > Users and Settings > Roles

**What to configure:**
- **Staff Accounts** - Create login for each staff member
- **Role Assignment** - What permissions each person has
- **Location Access** - Which clinics they can access
- **Permissions** - Read, Create, Edit, Delete permissions per feature

**Why it matters:**
- Controls who sees what information
- Prevents unauthorized access
- Tracks who made changes (audit trail)
- Allows role-based workflows

**Common Roles:**
- Owner/Admin - Full access
- Manager - Manage scheduling, view billing
- Provider - View own patients, create notes
- Front Desk - Check in patients, scheduling
- Billing - View charges and payments only

### Scheduling Rules

Control how appointments work.

**Access:** Settings > Scheduling

**What to configure:**
- **Default Duration** - How long appointments are (if not set per service)
- **Buffer Time** - Minutes between appointments
- **Advance Booking** - How far ahead patients can book (e.g., 90 days)
- **Late Booking** - How close to appointment before can't book (e.g., 24 hours)
- **Max Per Day** - Most appointments per provider per day
- **Cancellation Policy** - Notice required to cancel (e.g., 24 hours)
- **Rescheduling** - Can patients reschedule or only staff?

**Why it matters:**
- Ensures realistic scheduling
- Prevents double-booking
- Protects no-show rates
- Prevents last-minute chaos

## Payment Configuration

### Payment Methods

What ways patients can pay.

**Access:** Settings > Payment Management > Payment Mediums

**What to configure:**
- **Credit/Debit Card** - Process card payments (Rainforest)
- **Cash** - Accept cash payments
- **Check** - Accept checks
- **Bank Transfer** - ACH payments
- **Patient Credit** - Apply prepaid credits

**Why it matters:**
- Customers need options to pay
- Each method affects processing
- Revenue depends on collections

### Merchant Account

Credit card processing setup.

**Access:** Settings > Payment Management > Merchant Accounts

**What to configure:**
- **Processor** - Rainforest Payments (default)
- **Credentials** - API keys from processor
- **Settlement Account** - Bank account for deposits
- **Transaction Fees** - Track fees per transaction
- **Approved Cards** - Which card types to accept

**Why it matters:**
- Actually processes card payments
- Affects transaction fees (impacts profit)
- Controls payment settlement timing

### Billing Rules

How charges are created and processed.

**Access:** Settings > Rules

**What to configure:**
- **Auto-Charge** - Services auto-bill on completion (yes/no)
- **Deposit Requirements** - Require upfront payment
- **Invoice Due Dates** - Default net terms (Net 15, Net 30, etc.)
- **Grace Period** - Days before late notice
- **Write-Off Threshold** - Write off small balances automatically
- **Tax Rate** - Sales tax applied to charges

**Why it matters:**
- Controls financial workflow
- Reduces bad debt
- Ensures consistent billing practice

## Notifications & Communication

### Notifications

What messages patients/staff receive and when.

**Access:** Settings > Notifications

**What to configure:**
- **Appointment Reminder** - When to send (24 hours before, etc.)
- **Invoice Sent** - Notify patient when invoice created
- **Payment Received** - Confirm payment
- **Appointment Confirmation** - When patient books
- **Membership Renewal** - Remind before auto-renew
- **Message Recipients** - Who gets notifications (patient, staff, both)

**Enable/Disable by event:**
- Appointment scheduled
- Appointment reminder
- Appointment cancelled
- Payment received
- Invoice sent
- Form submitted
- Message received

**Customize by:**
- When sent (immediately, delay, scheduled time)
- Who receives (patient, provider, admin, location)
- How sent (SMS, email, both)

**Why it matters:**
- Keeps patients informed
- Reminds of appointments (reduces no-shows)
- Improves communication
- Reduces questions/calls

### Message Templates

Pre-written messages used for notifications.

**Access:** Settings > Message Templates (or Notifications)

**What to configure:**
- **Template Name** - What it's for
- **Message Text** - What patient receives
- **Variables** - {{PATIENT_NAME}}, {{APPOINTMENT_DATE}}, {{PROVIDER_NAME}}
- **When Used** - Which events trigger it

**Example Templates:**
```
Appointment Reminder:
"Hi {{PATIENT_NAME}}, reminder that you have an appointment
tomorrow at {{APPOINTMENT_TIME}} with {{PROVIDER_NAME}}.
Reply STOP to opt out."

Invoice Sent:
"Hello {{PATIENT_NAME}}, your invoice for ${{AMOUNT}} is ready.
Click here to pay: {{PAYMENT_LINK}}"
```

**Why it matters:**
- Consistent messaging to patients
- Professional tone
- Easy to update across all messages

### Email Domain

Send emails from your clinic domain.

**Access:** Settings > Email Domain

**What to configure:**
- **Domain Name** - Your clinic domain (e.g., "clinic@myhealth.com")
- **Email Provider** - Mailgun or similar
- **Verification** - Add DNS records to verify ownership
- **Sender Name** - What shows in "From" (e.g., "My Clinic")
- **Reply Address** - Where replies go

**Why it matters:**
- Branded emails (professional)
- Improves email deliverability
- Customer support/reply emails

## AI & Automation

### Assistants

Configure AI features for your clinic.

**Access:** Settings > Assistants

**What to configure:**
- **Call Handling** - AI answers phone calls (yes/no)
- **Voicemail Transcription** - AI transcribes voicemails
- **SMS Responses** - AI responds to patient SMS
- **Training Data** - Customize AI behavior for your clinic
- **Escalation Rules** - When to pass to human

**Why it matters:**
- 24/7 patient support without staff
- Faster response times
- Reduces workload on team

## Advanced Configurations

<AccordionGroup>
  <Accordion title="Regional & Compliance Settings">
    Configure for different regions and compliance requirements:
    - **HIPAA compliance** - Enable audit logging, data encryption
    - **GDPR compliance** - Data residency, right to be forgotten
    - **Regional regulations** - Medical board requirements, licensing
    - **State-specific rules** - Telehealth regulations, licensing requirements
    - **Data retention policies** - How long to keep patient records
    - **Accessibility standards** - WCAG compliance for platform

    For: Healthcare practices, international operations, regulated industries
  </Accordion>

  <Accordion title="Timezone & Localization Settings">
    Handle multi-timezone and multi-language:
    - **Timezone configuration** - Set primary timezone and support multiple
    - **Display language** - Support multiple UI languages
    - **Date/time formatting** - MM/DD/YYYY vs DD/MM/YYYY
    - **Currency display** - Symbol, decimal places, thousands separator
    - **Locale-specific rules** - Phone formats, address fields, etc.

    For: Remote teams, international patient bases, distributed clinics
  </Accordion>

  <Accordion title="API & Webhook Configuration">
    Enable external integrations:
    - **API key management** - Create/revoke API access
    - **Webhook URLs** - Register external systems to receive events
    - **Event subscriptions** - Choose which events trigger webhooks
    - **Rate limiting** - Control API usage limits per key
    - **IP whitelisting** - Restrict API access to specific IPs
    - **OAuth integration** - Third-party app authentication

    For: Custom integrations, accounting software sync, external BI tools
  </Accordion>

  <Accordion title="Custom Branding & White-Label">
    Brand the platform for your clinic:
    - **Logo customization** - Multiple logos for different areas
    - **Color scheme** - Custom primary and accent colors
    - **Font selection** - Custom fonts for branded look
    - **Favicon** - Browser tab icon
    - **Custom domain** - Patient portal on your domain
    - **White-label option** - Remove Decoda branding entirely

    For: Enterprise customers, multi-location branded operations, resellers
  </Accordion>

  <Accordion title="Audit & Compliance Logging">
    Track all system activity for compliance:
    - **Audit trail** - Log all user actions with timestamps
    - **Data access logs** - Track who accessed patient records
    - **Change logs** - Track configuration changes and who made them
    - **Export audit logs** - Generate compliance reports
    - **Retention settings** - How long to retain audit logs

    Important for: HIPAA compliance, security investigations, compliance audits
  </Accordion>

  <Accordion title="Custom Fields & Dynamic Configuration">
    Extend the system for your specific needs:
    - **Custom patient fields** - Add fields beyond defaults
    - **Custom appointment fields** - Track additional appointment data
    - **Custom provider fields** - Extend provider profiles
    - **Field visibility** - Hide/show fields by role
    - **Field requirements** - Make fields required or optional
    - **Conditional visibility** - Show fields based on other values

    For: Specialized practices, unique data collection needs
  </Accordion>

  <Accordion title="Advanced Integration Settings">
    Configure third-party service integrations:
    - **Google Calendar sync** - Two-way calendar synchronization
    - **Insurance verification** - PVerify or similar setup
    - **EHR integrations** - Connect to external electronic health records
    - **Accounting software** - QuickBooks, FreshBooks, etc. sync
    - **Marketing tool integration** - MailChimp, HubSpot connections
    - **Telehealth platform** - Zoom, Teladoc, LiveKit configuration

    For: Complex workflows, legacy system integration, multi-platform operations
  </Accordion>

  <Accordion title="Performance & Feature Flags">
    Fine-tune system performance and features:
    - **Feature flags** - Enable/disable beta or experimental features
    - **Performance tuning** - Optimize for specific workflows
    - **Batch processing** - Configure batch job scheduling
    - **Cache settings** - Control data caching for performance
    - **API timeout settings** - Adjust external service timeouts

    For: Performance optimization, testing new features, managing system load
  </Accordion>
</AccordionGroup>

## Content & Branding

### General

Clinic-wide settings.

**Access:** Settings > General

**What to configure:**
- **Clinic Name** - Legal name of clinic
- **Logo** - Upload clinic logo
- **Website** - Clinic website URL
- **Phone** - Main phone number
- **Email** - Main email
- **Support Email** - Where patients contact support
- **Address** - Clinic address
- **Timezone** - For all times in system
- **Currency** - USD, EUR, etc.

**Why it matters:**
- Branding (appears to patients)
- Contact information for customer support

### Profile

Your personal user settings.

**Access:** Settings > Profile

**What to configure:**
- **Name & Email** - Your user info
- **Phone** - Your contact number
- **Preferences** - Language, timezone, notification preferences
- **Security** - Change password, enable 2FA

## Security Settings

### Security

Protect patient data and access.

**Access:** Settings > Security

**What to configure:**
- **Two-Factor Authentication** - Require 2FA for staff
- **Session Timeout** - Auto-logout after inactivity (e.g., 30 min)
- **Password Policy** - Complexity requirements
- **IP Restrictions** - Allow only certain IP addresses (optional)
- **Audit Logs** - View who accessed what when
- **API Keys** - For integrations

**Why it matters:**
- HIPAA compliance
- Prevent unauthorized access
- Detect suspicious activity
- Data security

## Advanced Settings

### Preferences

User-level preferences.

**Access:** Settings > Preferences

**What to configure:**
- **Time Format** - 12-hour or 24-hour
- **Date Format** - MM/DD/YYYY, DD/MM/YYYY, etc.
- **Calendar View** - Default view (day, week, month)
- **Notifications** - Which alerts you receive
- **Do Not Disturb** - Quiet hours
- **Theme** - Light or dark mode

### Developers

For API integrations.

**Access:** Settings > Developers

**What to configure:**
- **API Keys** - Create keys for external apps
- **Webhooks** - URLs to call when events happen
- **Integrations** - Connected third-party apps

## Configuration Checklist

Before going live, ensure these are configured:

**Essential (Week 1):**
- [ ] Location(s) created with address, phone, hours
- [ ] Services created with names and durations
- [ ] Providers/staff added with credentials
- [ ] User accounts created with roles
- [ ] Payment method(s) configured (at minimum: cash or card)
- [ ] Notification templates customized

**Important (Week 2):**
- [ ] Scheduling rules set
- [ ] Categories created
- [ ] Bookables configured (if using patient portal)
- [ ] Email domain verified
- [ ] Billing rules set (auto-charge, tax, etc.)
- [ ] Availability/hours for all providers

**Nice to Have (Week 3+):**
- [ ] Assistants configured (AI features)
- [ ] Custom message templates
- [ ] Security settings optimized
- [ ] Preferences customized per staff
- [ ] API integrations (if needed)

## Settings Best Practices

### Documentation
- Document your settings in a spreadsheet
- Keep notes on why each setting was chosen
- Update when settings change

### Testing
- Test before going live
- Try booking as patient
- Send test messages
- Verify charges create correctly

### Regular Review
- Monthly: Check scheduling is working smoothly
- Quarterly: Review notification settings
- Annually: Audit security and access controls

### Keep Updated
- Update staff phone numbers when changed
- Update hours if seasonal changes
- Keep provider info current
- Update billing rules if pricing changes

## Troubleshooting

**"Appointments not booking"**
- Check location hours are set
- Check services have duration
- Verify provider availability
- Check scheduling rules aren't too restrictive

**"Notifications not sending"**
- Verify email domain is verified
- Check notification is enabled
- Verify phone number format for SMS
- Check template text isn't empty

**"Can't access feature"**
- Verify user role has permission
- Check location assignment matches
- Verify feature is enabled for your plan
- Contact support if persists

**"Charges not auto-creating"**
- Check auto-charge is enabled
- Verify service has price
- Check billing rules setting
- Review charge history for errors

## Related Features

- **Users & Roles** - Control staff access
- **Appointments** - Uses Scheduling rules
- **Billing** - Uses Billing rules
- **Communications** - Uses Notification settings
- **Inventory** - Configure products here too

For help with specific settings or complex configurations, contact Decoda support at support@decodahealth.com.
