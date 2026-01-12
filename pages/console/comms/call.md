# Call Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/comms/call/page.tsx`
**Route:** `/[tenant]/comms/call`

---

## Overview

The Call page displays a history of all phone calls handled by the system. Staff can view call details, listen to recordings, read transcripts, see AI actions taken, and filter/sort the call log. Calls are automatically transcribed and summarized by AI.

---

## Available Actions

### 1. View All Calls

**Purpose:** Browse call history.

**Step-by-Step Instructions:**

1. **Navigate to Calls**
   - Comms menu → Calls

2. **View call table:**
   - Date and time
   - Duration
   - Caller and receiver
   - Status
   - Summary and tags

---

### 2. Filter Calls by Date

**Purpose:** Find calls from specific period.

**Step-by-Step Instructions:**

1. **Locate filters above table**

2. **Click date filter**

3. **Select date range**
   - Or specific date

4. **Table updates**

---

### 3. Filter Calls by Status

**Purpose:** Find calls with specific outcome.

**Step-by-Step Instructions:**

1. **Click status filter**

2. **Select status:**
   - Completed
   - No answer
   - Voicemail
   - Failed
   - etc.

3. **Table filters**

---

### 4. Filter Calls by Tags

**Purpose:** Find categorized calls.

**Step-by-Step Instructions:**

1. **Click tags filter**

2. **Select one or more tags**
   - Tags assigned by AI

3. **Table shows matching calls**

---

### 5. Sort Calls

**Purpose:** Organize call list.

**Step-by-Step Instructions:**

1. **Click sortable column header**
   - Date column

2. **Toggle sort direction**
   - Ascending/Descending

---

### 6. Listen to Call Recording

**Purpose:** Hear the actual call.

**Step-by-Step Instructions:**

1. **Find call with recording**
   - Completed calls

2. **Click play button**
   - Audio player appears

3. **Control playback:**
   - Play/Pause
   - Seek
   - Volume

---

### 7. View Call Transcript

**Purpose:** Read what was said.

**Step-by-Step Instructions:**

1. **Find call in table**

2. **Click "Transcript" link**
   - Under date/time

3. **Dialog opens**
   - Full transcript displayed

4. **Click outside to close**

---

### 8. View AI Actions Taken

**Purpose:** See what AI did during call.

**Step-by-Step Instructions:**

1. **Find call with actions**
   - Shows "Actions Taken" link

2. **Click "Actions Taken"**

3. **Tool Call Dialog opens:**
   - Appointments booked
   - Information looked up
   - Messages sent
   - etc.

---

### 9. Expand Call Summary

**Purpose:** Read full AI summary.

**Step-by-Step Instructions:**

1. **View summary in table**
   - Truncated to 3 lines

2. **Click on summary text**
   - Expands to full content

3. **Click again to collapse**

---

### 10. View Call Tags

**Purpose:** See AI-assigned categories.

**Step-by-Step Instructions:**

1. **Look at call row**

2. **Tags shown as badges**
   - Above summary

3. **Indicates call type/topic**

---

### 11. View Caller Details

**Purpose:** See who called.

**Step-by-Step Instructions:**

1. **Look at Caller column**

2. **Shows:**
   - Patient name (if known)
   - Phone number
   - Call direction indicator

---

### 12. View Receiver Details

**Purpose:** See who received call.

**Step-by-Step Instructions:**

1. **Look at Receiver column**

2. **Shows:**
   - Staff/AI name
   - Phone number
   - Location (if multi-location)

---

### 13. Clear Filters

**Purpose:** Reset to show all calls.

**Step-by-Step Instructions:**

1. **Click "Clear Filters"**
   - Appears when filters active

2. **All filters reset**
   - Full call list shown

3. **Or clear location filter separately**

---

### 14. Navigate Pages

**Purpose:** Browse through call history.

**Step-by-Step Instructions:**

1. **View pagination**
   - Bottom of table

2. **Click navigation:**
   - Previous/Next
   - Page numbers

3. **Different page loads**

---

## Call Table Columns

| Column | Shows |
|--------|-------|
| Date/Time | When call occurred |
| Duration | How long call lasted |
| Caller | Who initiated the call |
| Receiver | Who received the call |
| Status | Call outcome |
| Summary | AI-generated summary with tags |

---

## Call Statuses

| Status | Meaning |
|--------|---------|
| Completed | Call connected and ended normally |
| No Answer | Recipient didn't answer |
| Voicemail | Left voicemail |
| Failed | Call couldn't connect |
| Busy | Line was busy |
| Cancelled | Caller hung up |

---

## Call Recording

| State | Availability |
|-------|--------------|
| Completed call | Recording available |
| In-progress | No recording yet |
| Failed | No recording |

---

## AI Actions (Tool Calls)

Common actions the AI takes during calls:

| Action | Description |
|--------|-------------|
| Book Appointment | Scheduled patient appointment |
| Cancel Appointment | Removed scheduled appointment |
| Look Up Patient | Retrieved patient information |
| Transfer Call | Connected to staff member |
| Send SMS | Sent text confirmation |

---

## Disconnection Reasons

If call ended unexpectedly:
- Shows reason under status
- Human-readable format

---

## Location Filtering

For multi-location tenants:
- Location shown on call if applicable
- Can filter by current location
- Location icon with name

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View calls | ✓ | ✓ | ✓ |
| Listen recordings | ✓ | ✓ | ✓ |
| View transcripts | ✓ | ✓ | ✓ |
| View tool calls | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No calls showing | Check filters/location |
| Recording not playing | Call may still be processing |
| Transcript missing | Transcription may be pending |
| Summary truncated | Click to expand |
| Actions not showing | AI didn't take actions |
