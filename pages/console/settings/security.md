# Security Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/security/page.tsx`
**Route:** `/[tenant]/settings/security`

---

## Overview

The Security page allows users to update their account password. Requires current password verification before setting new password.

---

## Available Actions

### 1. Change Password

**Purpose:** Update your account password.

**Step-by-Step Instructions:**

1. **Navigate to Security**
   - Settings → Security

2. **Enter current password**
   - Verification required

3. **Enter new password**
   - Minimum 6 characters
   - Must differ from current

4. **Confirm new password**
   - Must match new password

5. **Click "Update Password"**

6. **Success message appears**
   - Form clears

---

## Password Requirements

| Requirement | Details |
|-------------|---------|
| Minimum length | 6 characters |
| Different from current | Cannot reuse current password |
| Confirmation match | Both fields must match |

---

## Form Fields

| Field | Purpose |
|-------|---------|
| Current Password | Verify identity |
| New Password | Your new password |
| Confirm New Password | Verify new password |

---

## Validation

| Error | Cause |
|-------|-------|
| "Current password is required" | Empty current password |
| "New password is required" | Empty new password |
| "Password must be at least 6 characters" | Too short |
| "Password cannot be the same" | Matches current |
| "Passwords do not match" | Confirmation mismatch |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Change own password | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Update fails | Check current password |
| Button disabled | Complete all fields correctly |
| Error message | Read validation error |
