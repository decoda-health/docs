# Outbound Assistant Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/assistants/outbound/page.tsx`
**Route:** `/[tenant]/settings/assistants/outbound`

---

## Overview

The Outbound Assistant page manages AI phone assistants that make outgoing calls. Configure biller assistants, reminder calls, follow-up calls, and lab technician calls.

---

## Available Actions

### 1. View All Assistants

**Purpose:** Browse outbound call assistants.

**Step-by-Step Instructions:**

1. **Navigate to Outbound Assistants**
   - Settings → Assistants → Outbound

2. **View assistant cards**
   - Grid layout

---

### 2. Select Assistant

**Purpose:** View/edit assistant settings.

**Step-by-Step Instructions:**

1. **Click on assistant card**

2. **Settings panel opens**

3. **View configuration**

---

### 3. Edit Assistant

**Purpose:** Configure assistant settings.

**Step-by-Step Instructions:**

1. **With assistant selected**

2. **Modify settings:**
   - Name
   - Voice
   - Scripts
   - Call behavior

3. **Save changes**

---

## Assistant Types

| Type | Purpose |
|------|---------|
| BILLER | Collection calls |
| OUTBOUND_CALL | General outbound |
| CALL_REMINDER | Appointment reminders |
| CALL_FOLLOW_UP | Post-visit follow-up |
| CALL_LAB_TECHNICIAN | Lab result notifications |

---

## Configuration Options

| Setting | Purpose |
|---------|---------|
| Name | Assistant identifier |
| Voice | Voice selection |
| Scripts | Call scripts |
| Behavior | Response handling |

---

## Active vs Archived

- Active assistants shown by default
- Archived assistants hidden
- Can filter to show archived

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View assistants | ✓ | ✓ | ✗ |
| Edit assistants | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No assistants | Contact admin |
| Settings not saving | Check permissions |
| Calls not triggering | Check automation settings |
