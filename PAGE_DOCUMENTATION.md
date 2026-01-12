# Decoda Healthcare Platform - Page Documentation

This document provides comprehensive documentation for all pages in the Decoda healthcare platform Console application (provider-facing).

---

## Table of Contents

1. [Console Application](#console-application)
   - [Root & Authentication](#root--authentication)
   - [Public Patient-Facing Pages](#public-patient-facing-pages)
   - [Check-In Module](#check-in-module)
   - [Billing Module](#billing-module)
   - [Inventory Module](#inventory-module)
   - [Patient Management](#patient-management)
   - [Communications & Alerts](#communications--alerts)
   - [Scribe Module](#scribe-module)
   - [Analytics & Usage](#analytics--usage)
   - [Settings](#settings)

---

## Console Application

### Root & Authentication

#### `/` - Root Redirect Page
**Path:** `console/src/app/page.tsx`

**Purpose:** Entry point that redirects users to the appropriate tenant-scoped dashboard.

**Usage:**
- Displays welcome message and loading indicator
- Automatically redirects authenticated users to their tenant's home page
- Shows different content based on auth state

**Key Details:**
- Uses `TenantSelectProvider` for tenant context
- Implements redirect logic to tenant-specific routes

---

#### `/login` - Login Page
**Path:** `console/src/app/(auth)/login/page.tsx`

**Purpose:** Firebase authentication login interface.

**Usage:**
1. Enter email address
2. Enter password
3. Click "Sign In" or use SSO options

**Features:**
- Email/password authentication
- Social sign-in options (Google, etc.)
- Password reset flow
- Remember me functionality
- MFA support

**Hidden Details:**
- Firebase Auth handles token management
- JWT tokens are automatically refreshed
- Session persistence options available

---

### Public Patient-Facing Pages

These pages are accessible without provider authentication.

#### `/[tenant]/forms` - Multi-Form Page
**Path:** `console/src/app/[tenant]/forms/page.tsx`

**Purpose:** Display multiple forms to patients in a single session.

**Usage:**
- Access via URL with `?forms=form1,form2,form3` parameter
- Complete forms in sequence
- Progress indicator shows completion status

**Key Details:**
- Forms are loaded dynamically based on URL parameters
- Completion triggers redirect or thank you page
- Patient data can be pre-filled if authenticated

---

#### `/[tenant]/invoice` - Invoice Payment Page
**Path:** `console/src/app/[tenant]/invoice/page.tsx`

**Purpose:** Allow patients to view and pay invoices.

**Usage:**
1. Access via invoice link sent by provider
2. Review invoice details
3. Enter payment information
4. Submit payment

**Features:**
- Invoice itemization display
- Multiple payment method support
- Payment confirmation receipts

---

#### `/[tenant]/reschedule` - Appointment Reschedule
**Path:** `console/src/app/[tenant]/reschedule/page.tsx`

**Purpose:** Self-service appointment rescheduling for patients.

**Usage:**
1. Access via reschedule link
2. View current appointment details
3. Select new date/time from available slots
4. Confirm rescheduling

**Hidden Details:**
- Respects provider availability rules
- Blocks scheduling during blocked times
- May require minimum notice period

---

#### `/[tenant]/self-schedule` - Patient Self-Scheduling
**Path:** `console/src/app/[tenant]/self-schedule/page.tsx`

**Purpose:** Allow patients to book their own appointments.

**Usage:**
1. Select service type
2. Choose provider (if applicable)
3. Pick available date/time
4. Enter patient information
5. Confirm booking

**Key Details:**
- Shows only bookable services
- Filters by provider availability
- May require patient account creation
- Sends confirmation notifications

---

#### `/[tenant]/receipt/[paymentId]` - Payment Receipt
**Path:** `console/src/app/[tenant]/receipt/[paymentId]/page.tsx`

**Purpose:** Display payment receipt for completed transactions.

**Usage:**
- Access via direct link after payment
- View payment details, items, and totals
- Print or download receipt

---

#### `/[tenant]/appointment/[appointmentId]/forms` - Appointment Forms
**Path:** `console/src/app/[tenant]/appointment/[appointmentId]/forms/page.tsx`

**Purpose:** Pre-appointment form completion linked to specific appointment.

**Usage:**
1. Access via appointment reminder link
2. Complete required forms
3. Submit before appointment

**Hidden Details:**
- Forms are linked to appointment record
- Submission status visible to providers
- May include consent, intake, and history forms

---

#### `/[tenant]/receipts/[paymentId]` - Receipt View
**Path:** `console/src/app/[tenant]/receipts/[paymentId]/page.tsx`

**Purpose:** Alternative receipt display page.

**Features:**
- Detailed payment breakdown
- Practice branding
- Printable format

---

#### `/[tenant]/contact-us` - Contact Form
**Path:** `console/src/app/[tenant]/contact-us/page.tsx`

**Purpose:** General contact form for patient inquiries.

**Usage:**
- Fill out contact information
- Enter message/inquiry
- Submit to practice

---

#### `/[tenant]/form/[formPath]` - Single Form Page
**Path:** `console/src/app/[tenant]/form/(form-page)/[formPath]/page.tsx`

**Purpose:** Display and collect submission for a single form.

**Usage:**
1. Access via form link (QR code, SMS, email)
2. Complete form fields
3. Sign if required
4. Submit

**Key Details:**
- Supports conditional logic (show/hide fields)
- Electronic signature capture
- File upload support
- Progress save (for long forms)

---

#### `/[tenant]/pay/[patientId]` - Patient Payment Link
**Path:** `console/src/app/[tenant]/pay/(payment-link)/[patientId]/page.tsx`

**Purpose:** Allow patients to pay outstanding balances.

**Usage:**
1. Access personalized payment link
2. View outstanding balance
3. Enter payment amount (full or partial)
4. Complete payment

**Features:**
- Shows all outstanding invoices
- Supports partial payments
- Saves payment methods (optional)

---

#### `/[tenant]/pay` - General Payment Page
**Path:** `console/src/app/[tenant]/pay/(pay-now)/page.tsx`

**Purpose:** General payment collection page.

**Usage:**
- Enter patient identifier
- View and pay balances
- Process payments

---

#### `/[tenant]/quote/[quoteId]` - Quote View
**Path:** `console/src/app/[tenant]/quote/[quoteId]/page.tsx`

**Purpose:** Display treatment quotes to patients.

**Usage:**
- View itemized quote
- See pricing breakdown
- Option to accept/proceed

---

#### `/[tenant]/review/[eventId]` - Appointment Review
**Path:** `console/src/app/[tenant]/review/[eventId]/page.tsx`

**Purpose:** Post-appointment review collection.

**Usage:**
1. Access via post-visit link
2. Rate experience
3. Leave feedback
4. Submit review

---

### Check-In Module

Provider-facing pages for managing appointments and patient check-ins.

#### `/[tenant]/(console)/check-in/calendar` - Appointment Calendar
**Path:** `console/src/app/[tenant]/(console)/check-in/calendar/page.tsx`

**Purpose:** Visual calendar interface for appointment management.

**Usage:**
- View daily/weekly/monthly appointments
- Click to view appointment details
- Drag to reschedule (if enabled)
- Color-coded by status/provider

**Key Features:**
- Filter by provider/location
- Resource scheduling view
- Waitlist management
- Quick appointment creation

**Hidden Details:**
- Respects user's calendar preferences (show weekends, etc.)
- Provider availability overlays
- Conflict detection

---

#### `/[tenant]/(console)/check-in/dashboard` - Check-In Dashboard
**Path:** `console/src/app/[tenant]/(console)/check-in/dashboard/page.tsx`

**Purpose:** Real-time patient check-in status board.

**Usage:**
- View today's appointments
- Check in patients
- Track patient flow status
- Monitor wait times

**Features:**
- Status indicators (waiting, in-room, complete)
- Quick actions (check-in, checkout)
- Form completion status

---

#### `/[tenant]/(console)/check-in/shift-management` - Shift Management
**Path:** `console/src/app/[tenant]/(console)/check-in/shift-management/page.tsx`

**Purpose:** Manage provider schedules and shifts.

**Usage:**
1. Navigate weeks using arrows
2. View provider shifts by day
3. Add/edit shifts and blocks
4. Manage recurring schedules

**Key Features:**
- Weekly calendar view
- Shift creation with recurring options
- Block scheduling (lunch, meetings, etc.)
- Holiday management
- AI assistant scheduling

**Hidden Details:**
- Toggle to show blocks-only providers
- Jump to specific date functionality
- Location and provider filtering

---

#### `/[tenant]/(console)/check-in/clock-in-history` - Clock-In History
**Path:** `console/src/app/[tenant]/(console)/check-in/clock-in-history/page.tsx`

**Purpose:** Track staff clock-in/out records.

**Usage:**
- View historical time entries
- Filter by staff member
- Export for payroll

**Requirements:**
- Requires CLOCK_IN module enabled

---

#### `/[tenant]/(console)/check-in/forms/list` - Forms Management
**Path:** `console/src/app/[tenant]/(console)/check-in/forms/list/page.tsx`

**Purpose:** Manage patient intake and consent forms.

**Usage:**
1. View all active forms
2. Search forms by name
3. Create new forms
4. Edit existing forms
5. View submissions

**Key Features:**
- Bulk form selection for group sending
- QR code generation for forms
- PDF export for printing
- Send to patient (SMS/email)
- Submission drawer view

**Hidden Details:**
- Archive confirmation for forms with submissions
- Default message editing per form
- Multi-select for bulk operations

---

#### `/[tenant]/(console)/check-in/forms/create-consent` - Create Consent Form
**Path:** `console/src/app/[tenant]/(console)/check-in/forms/create-consent/page.tsx`

**Purpose:** Form builder for creating new consent/intake forms.

**Usage:**
1. Add form title and description
2. Add question blocks
3. Configure conditional logic
4. Add signature requirements
5. Save and publish

---

#### `/[tenant]/(console)/check-in/forms/edit-consent/[formId]` - Edit Form
**Path:** `console/src/app/[tenant]/(console)/check-in/forms/edit-consent/[formId]/page.tsx`

**Purpose:** Edit existing forms.

**Features:**
- All creation features
- Version tracking
- Preserve existing submissions

---

#### `/[tenant]/(console)/check-in/forms/submissions` - Form Submissions
**Path:** `console/src/app/[tenant]/(console)/check-in/forms/submissions/page.tsx`

**Purpose:** View and manage form submissions.

**Usage:**
- Filter by form type
- Search submissions
- View submission details
- Export data

---

#### `/[tenant]/(console)/check-in/appointment-form/[id]` - Appointment Form
**Path:** `console/src/app/[tenant]/(console)/check-in/appointment-form/[id]/page.tsx`

**Purpose:** View forms associated with specific appointment.

---

### Billing Module

Comprehensive billing and payment management.

#### `/[tenant]/(console)/billing/dashboard` - Billing Dashboard
**Path:** `console/src/app/[tenant]/(console)/billing/dashboard/page.tsx`

**Purpose:** Overview of billing metrics and quick actions.

**Features:**
- Revenue summaries
- Outstanding balance totals
- Recent transactions
- Quick payment collection

---

#### `/[tenant]/(console)/billing/charges` - Charges List
**Path:** `console/src/app/[tenant]/(console)/billing/charges/page.tsx`

**Purpose:** View and manage patient charges.

**Usage:**
- Search/filter charges
- View charge details
- Process payments
- Issue refunds

**Key Features:**
- Status filtering (paid, pending, partial)
- Date range selection
- Bulk operations
- Export capabilities

---

#### `/[tenant]/(console)/billing/charges/[chargeId]/detailed-receipt` - Detailed Receipt
**Path:** `console/src/app/[tenant]/(console)/billing/charges/[chargeId]/detailed-receipt/page.tsx`

**Purpose:** Generate detailed receipts for specific charges.

---

#### `/[tenant]/(console)/billing/check-out` - Checkout
**Path:** `console/src/app/[tenant]/(console)/billing/check-out/page.tsx`

**Purpose:** Patient checkout and payment collection.

**Usage:**
1. Search patient
2. Review charges
3. Apply discounts/packages
4. Collect payment
5. Print receipt

**Features:**
- Multiple payment methods
- Split payments
- Tip collection
- Package/membership application

---

#### `/[tenant]/(console)/billing/carts` - Shopping Carts
**Path:** `console/src/app/[tenant]/(console)/billing/carts/page.tsx`

**Purpose:** Manage patient shopping carts.

**Usage:**
- View active carts
- Edit cart contents
- Convert to charges
- Delete abandoned carts

---

#### `/[tenant]/(console)/billing/carts/create` - Create Cart
**Path:** `console/src/app/[tenant]/(console)/billing/carts/create/page.tsx`

**Purpose:** Create new shopping cart for patient.

---

#### `/[tenant]/(console)/billing/invoices` - Invoices
**Path:** `console/src/app/[tenant]/(console)/billing/invoices/page.tsx`

**Purpose:** Manage patient invoices.

**Features:**
- Invoice generation
- Send via SMS/email
- Track payment status
- Batch invoicing

---

#### `/[tenant]/(console)/billing/payments` - Payments
**Path:** `console/src/app/[tenant]/(console)/billing/payments/page.tsx`

**Purpose:** View payment transactions.

**Usage:**
- Filter by date range
- Search by patient
- View payment details
- Process refunds

---

#### `/[tenant]/(console)/billing/deposits` - Deposits
**Path:** `console/src/app/[tenant]/(console)/billing/deposits/page.tsx`

**Purpose:** Manage patient deposits/credits.

**Features:**
- View deposit balances
- Apply deposits to charges
- Refund deposits

---

#### `/[tenant]/(console)/billing/cash-balances` - Cash Register
**Path:** `console/src/app/[tenant]/(console)/billing/cash-balances/page.tsx`

**Purpose:** Track cash register balances.

**Usage:**
- View current drawer balance
- Add/remove cash
- Reconcile discrepancies

---

#### `/[tenant]/(console)/billing/cash-balances/close-register` - Close Register
**Path:** `console/src/app/[tenant]/(console)/billing/cash-balances/close-register/page.tsx`

**Purpose:** End-of-day register closing procedure.

---

#### `/[tenant]/(console)/billing/commissions` - Commissions
**Path:** `console/src/app/[tenant]/(console)/billing/commissions/page.tsx`

**Purpose:** View and manage provider commissions.

**Features:**
- Commission calculations
- Provider breakdown
- Date range filtering
- Export reports

---

#### `/[tenant]/(console)/billing/commissions/edit` - Edit Commissions
**Path:** `console/src/app/[tenant]/(console)/billing/commissions/edit/page.tsx`

**Purpose:** Configure commission rules.

---

#### `/[tenant]/(console)/billing/quote/[quoteId]` - Quote Management
**Path:** `console/src/app/[tenant]/(console)/billing/quote/[quoteId]/page.tsx`

**Purpose:** View and manage treatment quotes.

---

### Inventory Module

Product, membership, and package management.

#### `/[tenant]/(console)/inventory/products` - Products
**Path:** `console/src/app/[tenant]/(console)/inventory/products/page.tsx`

**Purpose:** Manage product catalog.

**Usage:**
- Add/edit products
- Set pricing
- Manage categories
- Track inventory levels

**Features:**
- SKU management
- Variant support
- Cost tracking
- Reorder alerts

---

#### `/[tenant]/(console)/inventory/stock` - Stock Management
**Path:** `console/src/app/[tenant]/(console)/inventory/stock/page.tsx`

**Purpose:** Track and adjust inventory levels.

**Usage:**
- View current stock
- Adjust quantities
- Transfer between locations
- Audit history

---

#### `/[tenant]/(console)/inventory/stock/add` - Add Stock
**Path:** `console/src/app/[tenant]/(console)/inventory/stock/add/page.tsx`

**Purpose:** Add new stock to inventory.

---

#### `/[tenant]/(console)/inventory/memberships` - Memberships
**Path:** `console/src/app/[tenant]/(console)/inventory/memberships/page.tsx`

**Purpose:** Manage membership plans.

**Features:**
- Create membership tiers
- Set benefits and pricing
- Recurring billing setup
- Member management

---

#### `/[tenant]/(console)/inventory/memberships/add-member` - Add Member
**Path:** `console/src/app/[tenant]/(console)/inventory/memberships/add-member/page.tsx`

**Purpose:** Enroll patient in membership.

---

#### `/[tenant]/(console)/inventory/memberships/edit/[membershipId]` - Edit Membership
**Path:** `console/src/app/[tenant]/(console)/inventory/memberships/edit/[membershipId]/page.tsx`

**Purpose:** Edit membership plan details.

---

#### `/[tenant]/(console)/inventory/members/[membershipId]` - Member Details
**Path:** `console/src/app/[tenant]/(console)/inventory/members/[membershipId]/page.tsx`

**Purpose:** View membership details and members.

---

#### `/[tenant]/(console)/inventory/packages` - Packages
**Path:** `console/src/app/[tenant]/(console)/inventory/packages/page.tsx`

**Purpose:** Manage treatment packages.

**Features:**
- Create package offerings
- Set included services
- Track package usage
- Manage expirations

---

#### `/[tenant]/(console)/inventory/packages/package-usage/[packageId]` - Package Usage
**Path:** `console/src/app/[tenant]/(console)/inventory/packages/package-usage/[packageId]/page.tsx`

**Purpose:** View package utilization details.

---

#### `/[tenant]/(console)/inventory/purchase-orders` - Purchase Orders
**Path:** `console/src/app/[tenant]/(console)/inventory/purchase-orders/page.tsx`

**Purpose:** Manage vendor purchase orders.

**Usage:**
- Create POs
- Track order status
- Receive inventory
- Manage vendors

---

### Patient Management

#### `/[tenant]/(console)/patient` - Patient List
**Path:** `console/src/app/[tenant]/(console)/patient/page.tsx`

**Purpose:** Search and manage patients.

**Usage:**
- Search by name/phone/email
- Filter by tags/status
- Quick actions (call, message)
- Add new patients

**Features:**
- Recent patients list
- Advanced filtering
- Bulk operations
- Export capabilities

---

#### `/[tenant]/(console)/patient/[id]` - Patient Detail
**Path:** `console/src/app/[tenant]/(console)/patient/(patient-page)/[id]/page.tsx`

**Purpose:** Comprehensive patient profile.

**Tabs:**
1. **Overview** - Summary of patient info, recent activity
2. **Timeline** - Chronological activity feed
3. **Appointments** - Past and upcoming appointments
4. **Medical Notes** - Clinical notes, measurements, medications
5. **Billing** - Charges, payments, payment methods
6. **Forms & Documents** - Submissions and uploads
7. **Gallery** - Photos and attachments
8. **Memberships** - Active memberships
9. **Packages** - Purchased packages and usage
10. **Settings** - Patient preferences and account

**Key Features:**
- Duplicate patient detection with merge prompt
- Tab persistence via URL parameters
- Real-time data updates
- Quick notes functionality

**Hidden Details:**
- Scribe recording integration
- Recent patient tracking for quick access
- Tab counts for at-a-glance status

---

#### `/[tenant]/(console)/patient/merge` - Merge Patients
**Path:** `console/src/app/[tenant]/(console)/patient/merge/page.tsx`

**Purpose:** Merge duplicate patient records.

**Usage:**
1. Select patients to merge (via URL or search)
2. Review data from each record
3. Choose primary record
4. Confirm merge

**Important:** Merge is irreversible. All data consolidates to primary record.

---

#### `/[tenant]/(console)/patient/upload` - Patient Upload
**Path:** `console/src/app/[tenant]/(console)/patient/(patient-upload-page)/upload/page.tsx`

**Purpose:** Bulk patient import.

**Usage:**
1. Download template
2. Fill patient data
3. Upload CSV/Excel
4. Review and confirm

---

#### `/[tenant]/(console)/patient/upload-history` - Upload History
**Path:** `console/src/app/[tenant]/(console)/patient/upload-history/page.tsx`

**Purpose:** View past patient uploads.

---

### Communications & Alerts

#### `/[tenant]/(console)/comms/chat` - Chat/Messaging
**Path:** `console/src/app/[tenant]/(console)/comms/chat/page.tsx`

**Purpose:** Patient messaging interface.

**Features:**
- SMS conversations
- Message templates
- Bulk messaging
- Media attachments

---

#### `/[tenant]/(console)/comms/call` - Call Management
**Path:** `console/src/app/[tenant]/(console)/comms/call/page.tsx`

**Purpose:** Phone call management and history.

**Features:**
- Call logs
- Voicemail access
- Call recordings
- AI call summaries

---

#### `/[tenant]/(console)/alerts` - System Alerts
**Path:** `console/src/app/[tenant]/(console)/alerts/page.tsx`

**Purpose:** View system notifications and alerts.

**Features:**
- Unread notifications
- Action items
- System announcements
- Alert management

---

### Scribe Module

AI-powered medical documentation.

#### `/[tenant]/(console)/scribe` - Scribe List
**Path:** `console/src/app/[tenant]/(console)/scribe/(list)/page.tsx`

**Purpose:** View and manage scribe recordings/notes.

**Usage:**
- Browse recordings
- View transcriptions
- Generate notes
- Edit and finalize

---

#### `/[tenant]/(console)/scribe/gallery` - Scribe Gallery
**Path:** `console/src/app/[tenant]/(console)/scribe/gallery/page.tsx`

**Purpose:** Visual gallery of scribe recordings.

---

#### `/[tenant]/(console)/scribe/playground/[id]` - Scribe Playground
**Path:** `console/src/app/[tenant]/(console)/scribe/playground/[id]/page.tsx`

**Purpose:** Interactive scribe editing and generation.

**Features:**
- Transcription playback
- Note generation
- Template application
- Manual editing

---

### Analytics & Usage

#### `/[tenant]/(console)/analytics` - Analytics Dashboard
**Path:** `console/src/app/[tenant]/(console)/analytics/page.tsx`

**Purpose:** Business intelligence dashboard.

**Features:**
- Custom widgets
- Data visualization
- Dashboard management
- Export capabilities

---

#### `/[tenant]/(console)/analytics/create` - Create Widget
**Path:** `console/src/app/[tenant]/(console)/analytics/create/page.tsx`

**Purpose:** Create custom analytics widgets.

**Steps:**
1. **Widget Details** - Title and description
2. **Query & Visualization** - Select data source, configure query, choose chart type
3. **Chart Configuration** - Set chart-specific options

**Chart Types:**
- Table - Tabular data display
- Area - Area chart for trends
- Bar - Bar charts (stacked, grouped)
- Donut - Pie/donut charts
- Progress - Progress circles with targets
- Number - Single metric display

**Key Features:**
- Live preview while building
- Query builder interface
- Auto chart type suggestions
- Stacking support for multi-series

---

#### `/[tenant]/(console)/usage` - Usage & Billing
**Path:** `console/src/app/[tenant]/(console)/usage/page.tsx`

**Purpose:** Track platform usage and billing.

**Features:**
- Monthly usage metrics
- Usage breakdown by feature
- Historical statements
- Payment method management

**Key Details:**
- Month selector for historical data
- Usage chart visualization
- Statement table with drill-down
- Free usage credits display

---

### Settings

Comprehensive practice configuration.

#### `/[tenant]/(console)/settings/general` - General Settings
**Path:** `console/src/app/[tenant]/(console)/settings/general/page.tsx`

**Purpose:** Core practice settings.

**Sections:**
- Practice name and contact
- Logo and branding
- Operating hours
- Default configurations

---

#### `/[tenant]/(console)/settings/profile` - User Profile
**Path:** `console/src/app/[tenant]/(console)/settings/profile/page.tsx`

**Purpose:** Current user profile settings.

**Features:**
- Personal information
- Password change
- Notification preferences
- Calendar preferences

---

#### `/[tenant]/(console)/settings/users` - User Management
**Path:** `console/src/app/[tenant]/(console)/settings/users/page.tsx`

**Purpose:** Manage staff accounts.

**Features:**
- Add/edit users
- Role assignment
- Permission management
- Deactivation

---

#### `/[tenant]/(console)/settings/roles` - Roles & Permissions
**Path:** `console/src/app/[tenant]/(console)/settings/roles/page.tsx`

**Purpose:** Define custom roles.

**Features:**
- Create roles
- Assign permissions
- Copy existing roles

---

#### `/[tenant]/(console)/settings/locations` - Locations
**Path:** `console/src/app/[tenant]/(console)/settings/locations/page.tsx`

**Purpose:** Manage practice locations.

**Features:**
- Add locations
- Set addresses
- Configure hours
- Assign providers

---

#### `/[tenant]/(console)/settings/services` - Services
**Path:** `console/src/app/[tenant]/(console)/settings/services/page.tsx`

**Purpose:** Manage service catalog.

**Features:**
- Add/edit services
- Set pricing
- Configure duration
- Assign to providers

---

#### `/[tenant]/(console)/settings/categories` - Categories
**Path:** `console/src/app/[tenant]/(console)/settings/categories/page.tsx`

**Purpose:** Organize services/products.

**Features:**
- Create categories
- Drag-and-drop ordering
- Color coding

---

#### `/[tenant]/(console)/settings/bookables` - Bookable Resources
**Path:** `console/src/app/[tenant]/(console)/settings/bookables/page.tsx`

**Purpose:** Manage rooms/equipment.

**Features:**
- Add resources
- Set availability
- Link to services

---

#### `/[tenant]/(console)/settings/scheduling` - Scheduling Settings
**Path:** `console/src/app/[tenant]/(console)/settings/scheduling/page.tsx`

**Purpose:** Configure appointment settings.

**Options:**
- Buffer times
- Overbooking rules
- Cancellation policies
- Reminder settings

---

#### `/[tenant]/(console)/settings/calendar-appearance` - Calendar Appearance
**Path:** `console/src/app/[tenant]/(console)/settings/calendar-appearance/page.tsx`

**Purpose:** Customize calendar display.

**Options:**
- Color schemes
- View defaults
- Display options

---

#### `/[tenant]/(console)/settings/notifications` - Notifications
**Path:** `console/src/app/[tenant]/(console)/settings/notifications/page.tsx`

**Purpose:** Configure notification settings.

**Features:**
- Appointment reminders
- SMS/email templates
- Trigger conditions

---

#### `/[tenant]/(console)/settings/note-templates` - Note Templates
**Path:** `console/src/app/[tenant]/(console)/settings/note-templates/page.tsx`

**Purpose:** Manage clinical note templates.

**Features:**
- Create templates
- Define structure
- Set default values

---

#### `/[tenant]/(console)/settings/medications` - Medications
**Path:** `console/src/app/[tenant]/(console)/settings/medications/page.tsx`

**Purpose:** Manage medication catalog.

---

#### `/[tenant]/(console)/settings/suggestions` - Suggestion Rules
**Path:** `console/src/app/[tenant]/(console)/settings/suggestions/page.tsx`

**Purpose:** Configure AI suggestions.

---

#### `/[tenant]/(console)/settings/rules` - Automation Rules
**Path:** `console/src/app/[tenant]/(console)/settings/rules/page.tsx`

**Purpose:** Set up workflow automations.

**Features:**
- Trigger conditions
- Action sequences
- Rule testing

---

#### `/[tenant]/(console)/settings/payment-mediums` - Payment Methods
**Path:** `console/src/app/[tenant]/(console)/settings/payment-mediums/page.tsx`

**Purpose:** Configure accepted payment methods.

---

#### `/[tenant]/(console)/settings/payment-management` - Payment Processing
**Path:** `console/src/app/[tenant]/(console)/settings/payment-management/page.tsx`

**Purpose:** Payment processor configuration.

**Features:**
- Processor integration
- Fee settings
- Terminal management

---

#### `/[tenant]/(console)/settings/security` - Security
**Path:** `console/src/app/[tenant]/(console)/settings/security/page.tsx`

**Purpose:** Security and access settings.

**Features:**
- Password policies
- MFA requirements
- Session management
- Audit logs

---

#### `/[tenant]/(console)/settings/developers` - Developer Settings
**Path:** `console/src/app/[tenant]/(console)/settings/developers/page.tsx`

**Purpose:** API and integration settings.

**Features:**
- API keys
- Webhooks
- Integration logs

---

#### `/[tenant]/(console)/settings/email-domain` - Email Domain
**Path:** `console/src/app/[tenant]/(console)/settings/email-domain/page.tsx`

**Purpose:** Configure custom email domain.

---

#### `/[tenant]/(console)/settings/preferences` - Preferences
**Path:** `console/src/app/[tenant]/(console)/settings/preferences/page.tsx`

**Purpose:** System preferences.

---

### AI Assistants Settings

#### `/[tenant]/(console)/settings/assistants/inbound` - Inbound Call Assistant
**Path:** `console/src/app/[tenant]/(console)/settings/assistants/inbound/page.tsx`

**Purpose:** Configure AI phone answering.

**Features:**
- Greeting customization
- Call routing rules
- Business hours handling
- Voicemail settings

---

#### `/[tenant]/(console)/settings/assistants/outbound` - Outbound Call Assistant
**Path:** `console/src/app/[tenant]/(console)/settings/assistants/outbound/page.tsx`

**Purpose:** Configure outbound AI calling.

**Features:**
- Script templates
- Campaign management
- Call scheduling

---

#### `/[tenant]/(console)/settings/assistants/inbound-texting` - Texting Assistant
**Path:** `console/src/app/[tenant]/(console)/settings/assistants/inbound-texting/page.tsx`

**Purpose:** Configure AI text responses.

---

#### `/[tenant]/(console)/settings/assistants/scribe` - Scribe Assistant
**Path:** `console/src/app/[tenant]/(console)/settings/assistants/scribe/page.tsx`

**Purpose:** Configure AI medical scribe.

**Features:**
- Note format preferences
- Specialty customization
- Terminology settings

---

#### `/[tenant]/(console)/settings/assistants/call-summarizer` - Call Summarizer
**Path:** `console/src/app/[tenant]/(console)/settings/assistants/call-summarizer/page.tsx`

**Purpose:** Configure call summary generation.

---

## Design Patterns & Best Practices

### Navigation
- Use `ProgressBarLink` for internal navigation (shows loading progress)
- Tab state persisted in URL parameters
- Breadcrumb navigation where applicable

### Data Loading
- React Query for server state
- Loading skeletons during fetches
- Error boundaries for failures

### Forms
- Form validation with real-time feedback
- Confirmation modals for destructive actions
- Auto-save for long forms

### Theming
- Dark mode support via CSS variables
- Use theme-aware utilities (`bg-background`, `text-foreground`)
- Status colors for semantic meaning (`text-status-success-text`)

### Multi-Tenancy
- Tenant context from URL path
- All API calls include tenant header
- Data isolation enforced at API level

---

*Last Updated: January 2026*
