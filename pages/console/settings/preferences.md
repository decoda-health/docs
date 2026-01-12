# Preferences Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/preferences/page.tsx`
**Route:** `/[tenant]/settings/preferences`

---

## Overview

The Preferences page allows users to customize their personal experience including theme, calendar settings, Google Calendar integration, and communication preferences.

---

## Available Actions

### 1. Select Theme

**Purpose:** Change app appearance.

**Step-by-Step Instructions:**

1. **Navigate to Preferences**
   - Settings → Preferences

2. **Find Theme section**

3. **Select preset theme**
   - Or customize

4. **Theme applies immediately**

---

### 2. Toggle Show IDs

**Purpose:** Display system IDs in UI.

**Step-by-Step Instructions:**

1. **Find Appearance section**

2. **Toggle "Show IDs"**

3. **When enabled:**
   - Decoda IDs shown on records
   - Useful for support

---

### 3. Connect Google Calendar

**Purpose:** Sync appointments to Google.

**Step-by-Step Instructions:**

1. **Find Calendar section**

2. **Click "Connect Google Calendar"**

3. **Authorize in popup**

4. **Calendar connected**
   - Shows green checkmark

---

### 4. Toggle Google Calendar Invites

**Purpose:** Send calendar invites.

**Step-by-Step Instructions:**

1. **Requires connected calendar**

2. **Toggle "Send Google Calendar Invites"**

3. **When enabled:**
   - Appointments create events
   - Syncs to your calendar

---

### 5. Configure Calendar Hours

**Purpose:** Set visible time range.

**Step-by-Step Instructions:**

1. **Find Calendar Hours setting**

2. **Set Start Time**
   - First hour shown

3. **Set End Time**
   - Last hour shown

4. **Calendar updates**

---

### 6. Toggle Show Weekends

**Purpose:** Show/hide weekend days.

**Step-by-Step Instructions:**

1. **Toggle "Show Weekends"**

2. **When disabled:**
   - Only Mon-Fri shown
   - More compact view

---

### 7. Toggle Cancelled Appointments

**Purpose:** Show cancelled in calendar.

**Step-by-Step Instructions:**

1. **Toggle "Show Cancelled Appointments"**

2. **When enabled:**
   - Cancelled shown with strikethrough
   - Helps track cancellations

---

### 8. Toggle Translucent Past Events

**Purpose:** Fade completed appointments.

**Step-by-Step Instructions:**

1. **Toggle "Show Past Events as Translucent"**

2. **When enabled:**
   - Past events appear faded
   - Focus on upcoming

---

### 9. Set Calendar Grid Lines

**Purpose:** Configure grid interval.

**Step-by-Step Instructions:**

1. **Find "Calendar Grid Lines"**

2. **Select interval:**
   - None
   - 15 min
   - 30 min

---

### 10. Set Appointment Time Step

**Purpose:** Configure scheduling intervals.

**Step-by-Step Instructions:**

1. **Find "Appointment Time Step"**

2. **Select interval:**
   - Auto (uses service duration)
   - 5, 10, 15, 20, 30, 60 min

---

### 11. Toggle Ghost Event

**Purpose:** Show preview on hover.

**Step-by-Step Instructions:**

1. **Toggle "Show Ghost Event"**

2. **When enabled:**
   - Hovering shows preview
   - Duration matches time step

---

### 12. Toggle Deleted Providers

**Purpose:** Show archived providers.

**Step-by-Step Instructions:**

1. **Toggle "Show Deleted Providers"**

2. **When enabled:**
   - Archived providers appear in lists
   - For historical access

---

### 13. Toggle Auto Sign-Off Notes

**Purpose:** Auto-finalize notes.

**Step-by-Step Instructions:**

1. **Requires SIGN_OFF_NOTES permission**

2. **Toggle "Auto sign-off notes"**

3. **When enabled:**
   - New notes auto-signed

---

### 14. Toggle Messages Box

**Purpose:** Show chat box overlay.

**Step-by-Step Instructions:**

1. **Find Communications section**

2. **Toggle "Show Messages Box"**

3. **When enabled:**
   - Chat box in bottom right
   - Quick message access

---

## Sections

| Section | Settings |
|---------|----------|
| Theme | Color scheme |
| Appearance | Show IDs |
| Sign off | Auto sign-off notes |
| Calendar | Multiple calendar settings |
| Communications | Messages box |

---

## Auto-Save

All preferences auto-save:
- Status indicator shows saving
- Changes apply immediately

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Manage preferences | ✓ | ✓ | ✓ |
| Sign off settings | Requires permission | | |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Theme not changing | Refresh page |
| Calendar not syncing | Reconnect Google |
| Setting not saving | Check connection |
