# Communications Guide

Stay connected with your patients through SMS messaging, chat, and phone calls. This guide covers how to manage patient communications effectively.

## Getting Started

Access communications by clicking **Communications** from the main menu. You'll see three main sections: **Chat**, **Calls**, and **Email**.

## SMS & Chat Messaging

Text message your patients directly from Decoda. Messages are logged in patient records for continuity of care.

### Sending a Message

**To a specific patient:**
1. Go to **Communications > Chat**
2. Select patient from list (or search)
3. Type message in chat box
4. Click **Send**

Patient receives SMS immediately and can reply.

**To multiple patients:**
1. Click **Bulk Message**
2. Select patients (manually or by filter)
3. Type message
4. Schedule or send immediately
5. Click **Send**

Useful for appointment reminders, closures, or announcements.

### Message Types

**One-to-One Chat**
- Direct conversation with one patient
- Full message history
- Can share attachments
- Patient can reply anytime

**Broadcast Message**
- Send to many patients at once
- No replies (one-way)
- Good for announcements
- Track delivery status

**Automated Reminders**
- Appointment reminders (24 hours before)
- Follow-up messages after visits
- Medication reminders
- Membership renewals

### Chat History

Every message is saved:
1. Open patient profile
2. Go to **Communications** tab
3. View complete message history with patient
4. Search specific conversations
5. Export messages if needed

Patient can see message history in their patient portal.

## Phone Calls

Record and manage all patient phone interactions.

### Making a Call

If integrated with Vonage/Signalwire:

1. Go to **Communications > Calls**
2. Search patient
3. Click **Call** button
4. Phone calls patient using your clinic number
5. Call records automatically

### Call Recording

Calls are automatically recorded (if enabled) for:
- Training and quality assurance
- Record keeping
- Transcription services

Access recordings:
1. Go to **Calls** history
2. Find the call
3. Click **Play** to listen
4. Click **Transcript** to read
5. Download if needed

### Call Transcription

AI automatically transcribes calls:
- Full word-for-word transcript
- Timestamps for each section
- Speaker identification
- Searchable content

Use transcripts to:
- Create medical notes without manual typing
- Verify what was discussed
- Include in patient record
- Share with team

## Advanced Communication Features

<AccordionGroup>
  <Accordion title="Advanced Message Scheduling & Quiet Hours">
    Control when messages are sent:
    - **Quiet hours** - Don't send between certain times (e.g., 9pm-7am)
    - **Timezone-aware scheduling** - Send at local time for patient
    - **Batch scheduling** - Stagger messages over time window
    - **Conditional scheduling** - Send only if patient not recently messaged
    - **Day-of-week rules** - Different schedule for weekdays vs weekends

    Example: Send appointment reminders at 8am local time, never after 8pm
  </Accordion>

  <Accordion title="Message Archival & Retention Compliance">
    Handle long-term message retention:
    - **Archive old conversations** - Move inactive chats to archive
    - **Compliance export** - Generate audit-trail exports for regulators
    - **Message retention policies** - Auto-delete after X years
    - **Legal hold** - Prevent deletion for litigation
    - **HIPAA compliance** - Ensure secure storage and encryption
    - **Searchable archive** - Access historical messages when needed

    For: HIPAA compliance, legal requirements, data governance
  </Accordion>

  <Accordion title="Granular Opt-Out & Consent Management">
    Sophisticated patient consent tracking:
    - **Message-type opt-out** - Patients opt out of specific types only
    - **Temporary opt-out** - Pause messages for X days/weeks
    - **Consent audit trail** - Document when patient gave/revoked consent
    - **Multi-channel preferences** - Different for SMS vs email vs calls
    - **Revocation tracking** - Document every opt-out request
    - **Consent reminders** - Ask to confirm consent periodically

    Critical for: TCPA compliance, patient rights, legal protection
  </Accordion>

  <Accordion title="Multi-Language Communication">
    Support different languages:
    - **Language detection** - Auto-detect patient preferred language
    - **Template translation** - Auto-translate message templates
    - **Provider language** - Notes on which languages staff speak
    - **Translation APIs** - Connect to translation services
    - **Community resources** - Links and info in patient's language

    For: Diverse patient populations, international clinics
  </Accordion>

  <Accordion title="Message Analytics & A/B Testing">
    Understand communication effectiveness:
    - **Delivery success rate** - % of messages successfully delivered
    - **Response rate** - % of patients who respond
    - **Message sentiment analysis** - Detect tone of responses
    - **Engagement metrics** - Track which message types work best
    - **A/B testing** - Test message variations
    - **Optimal send time** - AI recommends best time to send

    For: Optimizing messaging, improving patient engagement
  </Accordion>

  <Accordion title="Do-Not-Contact Lists & Regulatory Compliance">
    Manage contact restrictions:
    - **Do-not-call registry** - Respect federal/state lists
    - **Do-not-text registry** - Comply with text regulations
    - **Patient request honors** - Document and enforce patient requests
    - **Caller ID spoofing prevention** - Ensure legitimate caller ID
    - **Compliance reporting** - Export records for audits
    - **Emergency override** - Allow critical messages despite opt-out

    For: Regulatory compliance, avoiding fines, protecting practice
  </Accordion>

  <Accordion title="Spam Detection & Abuse Prevention">
    Protect against communication issues:
    - **Spam filtering** - Detect and filter spam messages from patients
    - **Rate limiting** - Prevent patient message spam/flooding
    - **Unusual pattern detection** - Flag suspicious messaging
    - **Fraud detection** - Identify phishing or scam attempts
    - **Blocklist management** - Manual blocking of abusive numbers
    - **Harassment alerts** - Alert staff to concerning patterns

    For: Security, protecting staff, managing difficult patients
  </Accordion>
</AccordionGroup>

## AI-Powered Features

### Smart Responses
Get AI suggestions for patient messages:

1. Open chat with patient
2. AI shows 2-3 suggested responses
3. Click a suggestion to send
4. Or edit before sending

Suggestions learn from your message patterns over time.

### Auto-Reply Messages
Set automatic responses when unavailable:

1. Go **Settings > Notifications > Auto-Reply**
2. Enable auto-replies
3. Set response message
4. Set hours when active (e.g., after 5pm)

Example: "Thanks for reaching out! We're closed but will respond first thing tomorrow."

### Sentiment Analysis
System flags messages needing attention:
- Angry or frustrated messages highlighted
- Urgent/medical keywords flagged
- Messages requiring immediate response marked

## Managing Communications

### Setting Preferences

**SMS Settings for Patients:**
1. Go **Settings > Patient Preferences**
2. Control which messages they receive
3. Allow opt-out for non-urgent messages
4. Set quiet hours (no messages after 8pm)

**Staff Preferences:**
1. Go **Settings > User Preferences**
2. Choose which notifications to receive
3. Set do-not-disturb hours

### Message Templates

Save common messages as templates:

1. Go **Settings > Message Templates**
2. Click **Create Template**
3. Name it (e.g., "Appointment Reminder")
4. Write template text with variables:
   - {{PATIENT_NAME}}
   - {{APPOINTMENT_DATE}}
   - {{APPOINTMENT_TIME}}
5. Save

Use template when sending:
1. Click **Templates**
2. Select template
3. Variables auto-populate
4. Review and send

### Notification Rules

Set which events trigger automatic messages:

1. Go **Settings > Notifications**
2. Select event (e.g., "Appointment Scheduled")
3. Enable/disable notification
4. Choose recipients (patient, staff, both)
5. Select message template

Common triggers:
- Appointment scheduled
- Appointment reminder (24 hours before)
- Check-in confirmation
- Payment received
- Invoice sent
- Membership expiring soon

## Best Practices

### Respect Patient Preferences
- Honor opt-out requests immediately
- Don't message outside preferred hours
- Ask before sending non-appointment messages
- Honor "do not text" preferences

### Keep Messages Professional
- Maintain HIPAA compliance
- No personal information in messages (use portal instead)
- Keep tone professional yet warm
- Use patient preferred name

### Respond Promptly
- Aim to respond within 2 hours during business hours
- Set clear expectations about response times
- Use auto-reply when unavailable
- Don't leave patients hanging

### Document Everything
- All conversations are in patient record
- Use messages to document advice given
- Note decisions discussed via text
- Include in medical notes if clinically relevant

### Verify Patient Phone Numbers
- Confirm correct number before sending bulk messages
- If messages bounce back, verify number
- Let patient update number in portal
- Test with new numbers

## Common Tasks

### Replying to Multiple Messages
When many patients message at once:
1. Click **Inbox** to see all unread messages
2. Filter by urgent (flagged only)
3. Reply to each systematically
4. Use templates to speed up responses

### Sending Appointment Reminders Manually
1. Go to **Check-In > Appointments**
2. Select date to see all appointments
3. Click **Send Reminders**
4. Choose which patients (new, all, specific)
5. Customize message if desired
6. Send

### Scheduling Messages
Schedule a message to send at specific time:
1. Compose message to patient
2. Click **Schedule** instead of **Send**
3. Choose date and time
4. Confirm
5. Message sends automatically

### Blocking a Patient Number
If patient asks not to be contacted:
1. Open patient profile
2. Go to **Settings**
3. Check **Block Text Messages**
4. Patient added to opt-out list
5. No automated or manual messages sent

## Compliance & Privacy

### HIPAA Compliance
Keep communications secure:
- Don't send PHI over SMS (use secure portal)
- No insurance details via text
- Keep all messages professional
- Messages are logged and encrypted

### Consent Management
- Maintain records of patient consent to text
- New patients consent during intake
- Respect withdrawal of consent
- Document all consent changes

### Data Retention
- All messages kept for minimum 3 years
- Accessible for audits and inquiries
- Can be exported for compliance
- Deletion only per legal requirement

### Message Audit
System maintains audit trail:
- Who sent message
- When sent
- To whom
- Content
- Delivery status

## Settings Reference

**Chat Settings:**
- Default response time
- Message character limits
- Attachment types allowed
- Archive old messages

**Call Settings:**
- Recording enabled/disabled
- Transcription enabled/disabled
- Call forwarding numbers
- Voicemail greeting

**Notification Settings:**
- What triggers messages
- Who receives notifications
- Scheduling rules
- Message templates

**Privacy Settings:**
- Patient SMS consent
- Message retention period
- Opt-out management
- HIPAA compliance

## Troubleshooting

**"Message not delivered"**
- Verify patient phone number is correct
- Check if patient opted out
- Verify phone number format
- Try resending

**"Patient says they didn't get reminder"**
- Check message history
- Verify number in system
- Send test message
- Update number if changed

**"Call not recording"**
- Verify recording is enabled in settings
- Check Vonage/Signalwire account active
- Ensure HIPAA consent obtained
- Contact support if persistent

**"Can't find old conversation"**
- Use search to find messages
- Check if patient record still exists
- Messages may have been archived
- Contact support for retrieval

## Related Features

- **Patient Profile** - View all communications in patient record
- **Appointments** - Auto-send appointment reminders
- **Billing** - Send invoice and payment reminders
- **Notifications** - Configure all communication triggers
- **Patient Portal** - Secure messaging when patient logs in

For advanced call center features or custom workflows, contact your account manager.
