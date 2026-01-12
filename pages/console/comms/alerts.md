# Alerts Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/alerts/page.tsx`
**Route:** `/[tenant]/alerts`

---

## Overview

The Alerts page is the central hub for viewing and managing system notifications across all modules. It displays alerts requiring attention, organized by module with filtering and action capabilities.

---

## Available Actions

### 1. Filter Alerts by Time Period

**Purpose:** View alerts from a specific time range.

**Step-by-Step Instructions:**

1. **Locate the date/time filter**
   - In the filters sidebar or header
   - Shows "Last N Days" option

2. **Select time period:**
   - Last 7 days (default)
   - Last 14 days
   - Last 30 days
   - Custom range

3. **View filtered alerts**
   - Alert cards and table update
   - Counts recalculate

---

### 2. Filter by Module/Alert Type

**Purpose:** Show only alerts from specific system modules.

**Step-by-Step Instructions:**

1. **View module cards**
   - Cards displayed at top of page
   - Each card represents a module:
     - Appointments
     - Billing
     - Forms
     - Communications
     - etc.

2. **Click a module card**
   - Card becomes selected/highlighted
   - Table filters to show only that module's alerts

3. **Clear module filter**
   - Click selected card again
   - Or click "All" option
   - All alerts visible

---

### 3. Filter by Alert Tags

**Purpose:** Show alerts with specific tags.

**Step-by-Step Instructions:**

1. **Locate tag filter**
   - In the filters sidebar
   - Multi-select dropdown

2. **Select tags**
   - Check desired tags
   - Multiple selections allowed

3. **View tagged alerts**
   - Only alerts with selected tags shown

---

### 4. Filter by Action Required Status

**Purpose:** Show only alerts that need attention.

**Step-by-Step Instructions:**

1. **Locate "Action Required" toggle**
   - Checkbox or toggle switch
   - In filters area

2. **Enable filter**
   - Toggle ON
   - Only unresolved alerts shown

3. **Disable filter**
   - Toggle OFF
   - All alerts (including resolved) shown

---

### 5. Filter by Assigned User

**Purpose:** Show alerts assigned to specific team members.

**Step-by-Step Instructions:**

1. **Locate "Assigned To" filter**
   - Dropdown in filters area
   - Shows team members

2. **Select user(s)**
   - Choose specific user
   - Or select "Assigned to Me"
   - Or select "Unassigned"

3. **View filtered alerts**
   - Only alerts matching assignment shown

---

### 6. View Alert Details

**Purpose:** See full information about a specific alert.

**Step-by-Step Instructions:**

1. **Locate alert in table**
   - Scroll through alerts table
   - Each row is an alert

2. **Click on alert row**
   - Alert expands or opens detail view
   - Full information displayed:
     - Alert type
     - Description
     - Related entity (patient, appointment, etc.)
     - Timestamp
     - Assigned user

3. **Navigate to related item**
   - Click on linked patient/appointment
   - Opens the related page

---

### 7. Resolve/Dismiss an Alert

**Purpose:** Mark an alert as handled.

**Step-by-Step Instructions:**

1. **Find the alert to resolve**
   - Locate in table

2. **Click resolve button**
   - Checkmark or "Resolve" button
   - May be in actions column

3. **Confirm resolution**
   - Alert marked as resolved
   - May be hidden if "Action Required" filter is on
   - Timestamp recorded

---

### 8. Assign Alert to User

**Purpose:** Delegate alert responsibility to team member.

**Step-by-Step Instructions:**

1. **Click on alert**
   - Opens alert details

2. **Find assignment option**
   - "Assign to" dropdown
   - User selector

3. **Select user**
   - Choose team member
   - They receive notification

4. **Save assignment**
   - Alert now shows assignee
   - Appears in their filtered view

---

### 9. Sort Alerts Table

**Purpose:** Order alerts by different criteria.

**Step-by-Step Instructions:**

1. **Locate table headers**
   - Clickable column headers

2. **Click to sort**
   - Created Date
   - Alert Type
   - Severity
   - Status

3. **Click again to reverse**
   - Toggles ascending/descending

---

### 10. Navigate Alert Pages

**Purpose:** Move through large numbers of alerts.

**Step-by-Step Instructions:**

1. **Locate pagination**
   - Below alerts table
   - Shows page numbers

2. **Navigate:**
   - Click page numbers
   - Use Previous/Next buttons
   - Change items per page

---

## Module Cards Overview

Each card shows:
- Module name and icon
- Alert count for that module
- Color-coded by severity

| Module | Alert Types |
|--------|-------------|
| Appointments | No-shows, conflicts, missing info |
| Billing | Failed payments, overdue invoices |
| Forms | Incomplete forms, missing signatures |
| Communications | Failed messages, unread messages |
| Inventory | Low stock, expiring items |

---

## Alert Types Reference

| Type | Severity | Description |
|------|----------|-------------|
| No Show | Medium | Patient didn't arrive |
| Payment Failed | High | Payment couldn't process |
| Form Incomplete | Low | Form needs completion |
| Double Booking | High | Scheduling conflict |
| Insurance Issue | Medium | Verification problem |

---

## Filters Sidebar

- **Time Period:** Last N days
- **Alert Type:** Multi-select types
- **Tags:** Patient/entity tags
- **Action Required:** Toggle
- **Assigned To:** User filter

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `R` | Resolve selected alert |
| `↑` / `↓` | Navigate alerts |
| `Enter` | Open alert details |
| `Escape` | Close details |

---

## URL Parameters

Filters preserved in URL:
```
?lastNDays=7&alertType=NO_SHOW,PAYMENT_FAILED&actionRequired=true
```

Share URL to give others same filtered view.

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View all alerts | ✓ | ✓ | ✓ |
| Resolve alerts | ✓ | ✓ | ✓ |
| Assign alerts | ✓ | ✓ | ✗ |
| Configure rules | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No alerts showing | Check filters, expand date range |
| Can't resolve alert | Check if already resolved |
| Counts don't match | Refresh page |
| Missing module | Check module is enabled |
