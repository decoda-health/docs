# Roles Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/roles/page.tsx`
**Route:** `/[tenant]/settings/roles`

---

## Overview

The Roles page manages user roles and their permissions. Admins can create custom roles, assign permissions by module, manage tags for role categorization, and control what users with each role can access throughout the system.

---

## Available Actions

### 1. View All Roles

**Purpose:** Browse existing roles.

**Step-by-Step Instructions:**

1. **Navigate to Roles**
   - Settings → Roles

2. **View role list (left sidebar)**
   - Role name
   - User type badge
   - Permission count

3. **First role auto-selected**

---

### 2. Create New Role

**Purpose:** Add custom role.

**Step-by-Step Instructions:**

1. **Click "Create Role" button**
   - Bottom of sidebar

2. **Enter role name**

3. **Select user type:**
   - Admin
   - Manager
   - Staff

4. **Click create**

5. **New role selected**
   - Configure permissions

---

### 3. Select Role to Edit

**Purpose:** View/modify role permissions.

**Step-by-Step Instructions:**

1. **Click role in sidebar**

2. **Role details load**
   - Permissions panel
   - Tags panel

---

### 4. Toggle Individual Permission

**Purpose:** Enable/disable specific permission.

**Step-by-Step Instructions:**

1. **Find permission in list**
   - Grouped by module

2. **Click toggle switch**
   - On = enabled
   - Off = disabled

3. **Saves automatically**

---

### 5. Toggle Entire Module

**Purpose:** Enable/disable all permissions in module.

**Step-by-Step Instructions:**

1. **Find module header**

2. **Click module toggle**

3. **All permissions in module:**
   - Enabled if was partial/off
   - Disabled if was full

---

### 6. Update Role Type

**Purpose:** Change role's base type.

**Step-by-Step Instructions:**

1. **With role selected**

2. **Click role type dropdown**

3. **Select new type:**
   - Admin
   - Manager
   - Staff

4. **Saves automatically**

---

### 7. Update Role Description

**Purpose:** Add/edit role description.

**Step-by-Step Instructions:**

1. **Find description field**

2. **Enter text**

3. **Saves on blur**

---

### 8. Assign Tags to Role

**Purpose:** Categorize roles with tags.

**Step-by-Step Instructions:**

1. **View Tags section**

2. **Click tag to assign**
   - Toggles assignment

3. **Blue = assigned**
   - Gray = unassigned

---

### 9. Create New Tag

**Purpose:** Add categorization tag.

**Step-by-Step Instructions:**

1. **Click "Add Tag" button**

2. **Enter tag name**

3. **Select color**

4. **Save**

5. **Tag available for assignment**

---

### 10. Edit Tag

**Purpose:** Modify existing tag.

**Step-by-Step Instructions:**

1. **Click edit icon on tag**

2. **Modify name/color**

3. **Save changes**

---

### 11. Delete Tag

**Purpose:** Remove a tag.

**Step-by-Step Instructions:**

1. **Click delete icon on tag**

2. **Confirm deletion**

3. **Tag removed**
   - Unassigned from roles

---

### 12. Delete Role

**Purpose:** Remove a role.

**Step-by-Step Instructions:**

1. **Click delete icon**
   - On role in sidebar

2. **Confirm deletion**

3. **Role removed**
   - Users with role need reassignment

---

## Role Types

| Type | Typical Access |
|------|----------------|
| Admin | Full access |
| Manager | Department-level access |
| Staff | Task-specific access |

---

## Permission Categories

Permissions grouped by module:
- Calendar
- Patients
- Billing
- Inventory
- Communications
- Analytics
- Settings

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View roles | ✓ | ✓ | ✗ |
| Create roles | ✓ | ✗ | ✗ |
| Edit permissions | ✓ | ✗ | ✗ |
| Delete roles | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Can't delete role | Users may have role |
| Permission not saving | Check network connection |
| Role not appearing | Refresh page |
| Tag in use | Unassign from roles first |
