# Users Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/users/page.tsx`
**Route:** `/[tenant]/settings/users`

---

## Overview

The Users page manages staff accounts for the practice. Administrators can add, edit, deactivate users, and assign roles and permissions.

---

## Available Actions

### 1. View All Users

**Purpose:** See all staff accounts.

**Step-by-Step Instructions:**

1. **Navigate to Users**
   - Settings → Users

2. **View user list**
   - Name
   - Email
   - Role
   - Status (active/inactive)
   - Last login

---

### 2. Add New User

**Purpose:** Create a new staff account.

**Step-by-Step Instructions:**

1. **Click "Add User"**

2. **Enter user details:**
   - First name
   - Last name
   - Email address
   - Phone number

3. **Assign role**
   - Select from available roles
   - Sets default permissions

4. **Configure settings:**
   - Locations accessible
   - Provider flag (if applicable)
   - Color (for calendar)

5. **Send invitation**
   - User receives email
   - Must set password

---

### 3. Edit User

**Purpose:** Modify user information.

**Step-by-Step Instructions:**

1. **Find user in list**

2. **Click edit button**
   - Opens edit form

3. **Modify details**
   - Update name, contact
   - Change role
   - Adjust permissions

4. **Save changes**

---

### 4. Assign Role

**Purpose:** Set user's role and permissions.

**Step-by-Step Instructions:**

1. **Edit user**

2. **Find role selector**

3. **Select role:**
   - Admin
   - Manager
   - Provider
   - Staff
   - Custom roles

4. **Save changes**
   - Permissions update immediately

---

### 5. Set User Locations

**Purpose:** Control which locations user can access.

**Step-by-Step Instructions:**

1. **Edit user**

2. **Find location settings**

3. **Select accessible locations**
   - Check/uncheck locations
   - "All locations" option

4. **Save changes**

---

### 6. Mark as Provider

**Purpose:** Designate user as a provider on schedule.

**Step-by-Step Instructions:**

1. **Edit user**

2. **Toggle "Is Provider"**
   - Enable for scheduling

3. **Configure provider settings:**
   - Calendar color
   - Services offered
   - Default location

4. **Save changes**
   - User appears on schedule

---

### 7. Reset Password

**Purpose:** Send password reset link.

**Step-by-Step Instructions:**

1. **Find user**

2. **Click "Reset Password"**
   - In actions menu

3. **Confirm action**
   - Email sent to user
   - Contains reset link

---

### 8. Deactivate User

**Purpose:** Disable access without deleting.

**Step-by-Step Instructions:**

1. **Find user**

2. **Click "Deactivate"**
   - In actions menu

3. **Confirm deactivation**
   - User can't log in
   - Data preserved

---

### 9. Reactivate User

**Purpose:** Restore access to deactivated user.

**Step-by-Step Instructions:**

1. **Show inactive users**
   - Toggle filter

2. **Find user**

3. **Click "Reactivate"**

4. **Confirm**
   - Access restored

---

### 10. Delete User

**Purpose:** Permanently remove user.

**Step-by-Step Instructions:**

1. **Find user**

2. **Click "Delete"**
   - Warning appears

3. **Confirm deletion**
   - User removed
   - Historical data may be affected

---

### 11. Search Users

**Purpose:** Find specific users.

**Step-by-Step Instructions:**

1. **Enter search term**
   - Name or email

2. **View results**
   - Matching users shown

---

### 12. Filter Users

**Purpose:** View specific user types.

**Step-by-Step Instructions:**

1. **By Status:**
   - Active only
   - Inactive only
   - All

2. **By Role:**
   - Admin, Manager, etc.

3. **By Location:**
   - Specific location

---

## User Roles

| Role | Description |
|------|-------------|
| Admin | Full access to everything |
| Manager | Most features, limited settings |
| Provider | Patient care, own schedule |
| Staff | Basic operations |
| Custom | Custom permission set |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View users | ✓ | ✓ | ✗ |
| Add users | ✓ | ✓ | ✗ |
| Edit users | ✓ | Limited | ✗ |
| Delete users | ✓ | ✗ | ✗ |
| Assign roles | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Can't add user | Check email not already used |
| Invitation not received | Check spam, resend |
| Can't delete user | May have dependent data |
| Role not applying | Refresh page |
