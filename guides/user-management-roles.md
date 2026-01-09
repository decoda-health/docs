# User Management & Roles Guide

Manage who has access to your clinic and what they can do. This guide covers creating staff accounts, assigning roles, and controlling permissions.

## Getting Started

Access user management in **Settings > Users**.

You'll see:
- **Users** - All staff members and providers
- **Roles** - Permission templates
- **Locations** - Which clinic locations each user accesses

## Adding a New User

### Creating a Staff Account

1. Go to **Settings > Users**
2. Click **Add User**
3. Enter user information:
   - First name & last name
   - Email address
   - Phone number
   - Password (or auto-generate)
4. Select role (see roles section below)
5. Assign locations they can access
6. Click **Create**

User receives email to activate account on first login.

### Inviting via Email

Alternatively:
1. Click **Send Invite**
2. Enter email
3. Select role
4. System sends activation email
5. User clicks link to set password
6. Account activated

This is preferred as it doesn't require sharing passwords.

## Understanding Roles

Roles are permission templates that control what users can see and do.

### Built-In Roles

**Owner/Admin**
- Full access to all features
- Can manage users and roles
- Can access billing and settings
- Can view all patients and records
- Can delete data

**Manager**
- Can view all patient records
- Can create appointments and manage scheduling
- Can process payments
- Can manage staff time tracking
- Cannot delete staff or change roles

**Provider** (Doctor, Therapist, Aesthetician, etc.)
- Can view assigned patients
- Can view/create appointments and medical notes
- Can view own patient records
- Cannot access billing or staff management
- Cannot view other providers' patients (unless shared)

**Front Desk/Receptionist**
- Can check in patients
- Can schedule and reschedule appointments
- Can view patient contact info
- Cannot view medical records or billing
- Cannot delete or modify patient data

**Billing/Admin**
- Can view all patients and billing records
- Can create charges and invoices
- Can process payments
- Can generate billing reports
- Cannot access clinical records or scheduling

**Inventory Manager**
- Can view and manage products/inventory
- Can create orders
- Can track stock
- Cannot access clinical or billing

**AI Assistant Handler**
- Can manage incoming calls
- Can view AI transcriptions
- Cannot access patient records directly
- Limited to assigned tasks

### Viewing Role Permissions

See exactly what each role can do:
1. Go to **Settings > Roles**
2. Click a role name
3. View list of permissions
4. Permissions show feature-by-feature access

Permissions include:
- **Read** - View data
- **Create** - Add new records
- **Edit** - Modify existing records
- **Delete** - Remove records
- **Export** - Download data

## Creating Custom Roles

Make roles tailored to your clinic:

1. Go to **Settings > Roles**
2. Click **Create Custom Role**
3. Name it (e.g., "Lead Therapist")
4. Set permissions for each feature:
   - Patients: Read, Create, Edit
   - Appointments: Read, Create, Edit, Delete
   - Billing: Read (view-only)
   - Notes: Create, Edit (own only)
   - Etc.
5. Click **Save**

Now available when creating users.

## Assigning Locations

Control which clinic locations each user can access:

1. Open user profile
2. Go to **Locations**
3. Check locations they have access to
4. Different roles per location possible
5. Save

Example: Manager can manage Location A but is only Front Desk at Location B

## Managing User Accounts

### Editing User Info

1. Go to **Settings > Users**
2. Click user name
3. Update information:
   - Name, email, phone
   - Role assignment
   - Location access
4. Click **Save**

### Changing Password

Users can change own password:
1. Click profile icon (top right)
2. Go to **Settings > Profile**
3. Click **Change Password**
4. Enter old password
5. Enter new password twice
6. Save

Admins can reset a user's password:
1. Go to **Settings > Users**
2. Click user
3. Click **Reset Password**
4. Send activation link to user
5. User sets new password

### Disabling User Access

Remove a user without deleting their records:

1. Go to **Settings > Users**
2. Click user
3. Click **Disable User**
4. User can no longer log in
5. Their data remains in system
6. Can be re-enabled later

### Deleting User Account

Permanently remove a user (only Owner/Admin):

1. Go to **Settings > Users**
2. Click user
3. Click **Delete**
4. Confirm deletion
5. User account and data removed

Use with caution - this is permanent.

## Provider Profiles

Providers (doctors, therapists, etc.) have additional settings:

### Creating a Provider

1. Go to **Settings > Users**
2. Click **Add User**
3. Select role "Provider"
4. Enter provider information:
   - Name and credentials
   - Specialties
   - License number (if applicable)
   - Bio/description
   - Profile photo
5. Assign locations
6. Click **Save**

### Provider Scheduling

Set each provider's availability:

1. Go to **Settings > Scheduling**
2. Select provider
3. Set hours by day:
   - Monday-Friday: 9am-5pm
   - Saturday: 10am-2pm
   - Sunday: Off
4. Set break times (lunch, etc.)
5. Save

### Provider Performance

View provider metrics:
1. Go to **Analytics > Provider Performance**
2. See for each provider:
   - Appointments booked/completed
   - Revenue generated
   - Average ratings
   - Patient satisfaction scores
   - Commission earned

## Access Control Best Practices

### Principle of Least Privilege
Give users only permissions they need:
- Receptionists don't need billing access
- Billing staff don't need clinical notes
- Providers don't need admin access
- Managers need broad but not full access

### Separation of Duties
Split sensitive tasks:
- One person approves refunds
- Different person processes refund
- One person reconciles billing
- Manager reviews reconciliation

### Document Access
Keep records of who accesses sensitive data:
1. Go to **Settings > Security**
2. View activity log
3. See all user actions
4. Filter by user, date, or action

### Regular Audits
Periodically review access:
1. Go to **Settings > Users**
2. Review each user's role
3. Check active users vs. current staff
4. Disable accounts for departed staff
5. Update roles if responsibilities changed

## Security Features

### Two-Factor Authentication (2FA)

Require additional verification on login:
1. User logs in with password
2. Receives code via email or phone
3. Enters code to access account
4. More secure than password alone

Enable for all staff:
1. Go to **Settings > Security**
2. Enable **Two-Factor Authentication**
3. Notify all users
4. Users set up 2FA on next login

### Session Management

Control how long users stay logged in:
1. Go to **Settings > Security**
2. Set **Session Timeout** (e.g., 30 minutes)
3. After inactive time, user must re-login
4. Prevents unauthorized access on unattended computers

### Password Policies

Set password requirements:
1. Go to **Settings > Security**
2. Set minimum length (8+ characters)
3. Require mixed case (A-z)
4. Require numbers
5. Require special characters (!@#$)

### Audit Logs

View all user activity for compliance:
1. Go to **Settings > Activity Log**
2. Filter by:
   - User
   - Date range
   - Action type
   - Patient record accessed
3. Export logs for audits

## Advanced User Management Features

<AccordionGroup>
  <Accordion title="Enterprise Authentication (SSO/LDAP/OAuth)">
    Integrate with corporate identity providers:
    - **Single Sign-On (SSO)** - Users log in with corporate credentials (Okta, Azure AD, Google Workspace)
    - **LDAP/Active Directory** - Sync staff from company directory, auto-create/disable accounts
    - **OAuth 2.0** - Third-party app authorization without sharing passwords
    - **OpenID Connect** - Secure identity verification with external providers
    - **SAML 2.0** - Enterprise federation for complex org structures
    - **Just-In-Time Provisioning** - Auto-create accounts on first SSO login

    Example: All staff use corporate email to log in, accounts auto-sync from company directory

    For: Large organizations with IT departments, enterprise customers
  </Accordion>

  <Accordion title="Advanced Audit & Compliance Logging">
    Comprehensive activity tracking for regulators:
    - **Detailed action logging** - Every login, permission change, data access logged with timestamp
    - **Data access audit trail** - Who accessed which patient records and when
    - **Compliance exports** - Generate HIPAA/GDPR audit reports automatically
    - **Change history** - Track all modifications to roles, permissions, user settings
    - **Immutable audit logs** - Logs cannot be modified or deleted (tamper-proof)
    - **Real-time alerts** - Suspicious activity triggers alerts (failed logins, bulk data access)
    - **Log retention policies** - Auto-archive logs, meet regulatory retention requirements

    Critical for: HIPAA compliance, audits, legal requirements
  </Accordion>

  <Accordion title="Granular Permission System">
    Ultra-fine-grained access control beyond basic roles:
    - **Feature-level permissions** - Control access to specific buttons, pages, reports
    - **Data-level permissions** - Restrict access to specific patients, locations, or services
    - **Field-level permissions** - Hide sensitive fields (SSN, insurance) from certain roles
    - **Action-level permissions** - Allow "read" but not "delete", or "edit own" vs "edit all"
    - **Time-based permissions** - Access only during business hours or specific dates
    - **Conditional permissions** - "Can approve charges only if < $500"
    - **Permission inheritance** - Custom roles inherit and override parent permissions

    Example: Manager can view all patients but only approve refunds under $200
  </Accordion>

  <Accordion title="Service Accounts & API Key Management">
    Programmatic access for integrations:
    - **Service account creation** - Create non-human accounts for automated workflows
    - **API key generation** - Issue keys for third-party apps or integrations
    - **Key rotation** - Automatic key expiration and renewal
    - **Scoped keys** - Keys limited to specific features (e.g., read-only reports)
    - **Usage analytics** - Track which apps/services use API keys
    - **Key revocation** - Instantly disable compromised keys
    - **Rate limiting per key** - Prevent abuse by limiting API requests

    For: Custom integrations, automation, third-party app connections
  </Accordion>

  <Accordion title="Role Hierarchies & Delegation">
    Advanced organizational structures:
    - **Role inheritance** - Custom roles can inherit permissions from parent roles
    - **Temporary delegation** - "Acting Manager" role for coverage without changing base role
    - **Manager hierarchy** - Manager manages certain staff (approval chains)
    - **Location hierarchy** - Location managers report to regional managers
    - **Approval workflows** - Require multi-level approval (e.g., staff request → manager → admin)
    - **Permission escalation** - Temporarily grant higher permissions for specific tasks
    - **Role templates** - Pre-built hierarchies for different org structures

    Example: Location Manager can manage staff at their location but not system-wide settings
  </Accordion>

  <Accordion title="Temporary & Time-Bound Access">
    Limited-duration permissions:
    - **Temporary user access** - Contractor account active for 3 months only
    - **Expiring roles** - Role automatically revokes on specified date
    - **Conditional access expiration** - Access expires after 30 days of inactivity
    - **Just-in-time access** - Request temporary elevated permissions (audit trail required)
    - **Time windows** - Access only during specific hours (e.g., 9am-5pm)
    - **One-time access** - Single-use approval for sensitive operations
    - **Access review scheduling** - Automatic notifications to review user access quarterly

    For: Contractors, temporary staff, consultants, vendors
  </Accordion>

  <Accordion title="IP-Based Access Restrictions">
    Network-level access control:
    - **Allowed IP whitelist** - Only login from specific IP addresses
    - **IP restriction per role** - Different IPs for different user types
    - **VPN requirement** - Force VPN connection for access
    - **Geographic restrictions** - Block login from certain countries
    - **Suspicious IP alerts** - Alert when login from unexpected location
    - **Device fingerprinting** - Track devices and require re-auth on new device
    - **Zero Trust Network** - Verify every access request regardless of network

    For: Security-sensitive practices, regulatory requirements
  </Accordion>

  <Accordion title="Advanced Session Management & Security Policies">
    Sophisticated login and session controls:
    - **Concurrent session limits** - User can only be logged in from one location
    - **Idle timeout enforcement** - Auto-logout after inactivity (configurable per role)
    - **Session binding** - Tie session to specific device/IP (prevent session hijacking)
    - **Forced re-authentication** - Require password re-entry for sensitive operations
    - **Multi-device awareness** - See all devices user is logged in from
    - **Remote logout** - Force logout of user's other sessions
    - **Password expiration** - Require password changes on schedule
    - **Login attempt limiting** - Lock account after N failed attempts

    Example: Require password re-entry before accessing patient billing, auto-logout after 30 mins
  </Accordion>

  <Accordion title="Backup Admin & Emergency Access">
    Fallback access for critical situations:
    - **Emergency bypass** - Owner can gain access if admin unavailable
    - **Backup owner setup** - Designate backup administrator
    - **Break-glass access** - One-time emergency account unlock (fully audited)
    - **Super-admin override** - Rare, emergency-only account bypass
    - **Access recovery procedures** - Document process for locked-out admins
    - **Separation of duties** - Different person must approve emergency access

    Critical for: Disaster recovery, compliance requirements, continuity of operations
  </Accordion>
</AccordionGroup>

## Troubleshooting

**"User forgot password"**
1. Go to **Settings > Users**
2. Find user
3. Click **Reset Password**
4. Send link to their email
5. They set new password

**"User locked out"**
1. After multiple failed attempts, account locks
2. Go to **Settings > Users**
3. Click user
4. Click **Unlock Account**
5. User can try again

**"User can't see a patient"**
1. Check user's role permissions
2. Check if provider and patient is assigned
3. Check if location matches
4. Grant explicit patient access if needed

**"Need to change user's location access"**
1. Go to **Settings > Users**
2. Click user
3. Go to **Locations** tab
4. Update location checkboxes
5. Save

## Staff Hierarchy

### Organizing Your Team

**Small Clinic (5-10 staff):**
- Owner/Admin for management
- Providers with own patient access
- Front Desk all see all appointments
- One person handles billing

**Medium Clinic (10-30 staff):**
- Admin handles management
- Manager oversees day-to-day
- Providers manage own schedules
- Billing staff separate from clinical
- Front Desk by location

**Large Clinic (30+ staff):**
- Admin manages overall system
- Location Managers per facility
- Department Managers (Clinical, Billing, etc.)
- Providers manage own schedules and notes
- Specialized staff by function

## Related Features

- **Permissions** - Configure feature-level access
- **Locations** - Manage multiple clinic sites
- **Security** - Authentication and data protection
- **Activity Log** - Audit trail of all user actions

For advanced permission customization or enterprise authentication (SSO, LDAP), contact your account manager.
