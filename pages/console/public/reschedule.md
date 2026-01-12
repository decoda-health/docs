# Reschedule Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/reschedule/page.tsx`
**Route:** `/[tenant]/reschedule`

---

## Overview

The Reschedule page is a redirect page maintained for backward compatibility. It automatically redirects users to the Self-Schedule page where they can manage their appointments.

---

## Available Actions

### 1. Automatic Redirect to Self-Schedule

**Purpose:** Navigate to the appointment self-scheduling interface.

**What Happens:**

1. **Page loads**
   - Shows a loading skeleton briefly

2. **Redirect occurs automatically**
   - Redirects to `/{tenant}/self-schedule`
   - Preserves locationId if provided in URL

3. **Self-Schedule page loads**
   - User can reschedule or cancel existing appointment
   - Click "Reschedule or Cancel" button
   - Complete MFA verification
   - Manage their appointment

---

## URL Parameters

| Parameter | Description |
|-----------|-------------|
| `locationId` | Optional - pre-selects a specific location |

---

## Redirect Behavior

**From:** `/[tenant]/reschedule?locationId=xxx`
**To:** `/[tenant]/self-schedule?locationId=xxx`

The redirect preserves the locationId parameter if present.

---

## Why This Page Exists

- Backward compatibility with older appointment links
- Patients may have bookmarked old reschedule URLs
- SMS/email reminders may reference this URL
- Provides seamless transition to new self-schedule system

---

## After Redirect

Once on the Self-Schedule page, users can:
1. Click "Reschedule or Cancel" button
2. Verify identity via phone number
3. View existing appointment
4. Choose to reschedule or cancel
5. If rescheduling, select new date/time

See the Self-Schedule page documentation for complete action details.
