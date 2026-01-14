# Upload History Page - User Actions Guide

## Overview

The Upload History page displays the status and history of all patient CSV uploads. Staff can monitor processing uploads, view completed uploads, and see error details for failed uploads. Page auto-refreshes while uploads are processing.

---

## Available Actions

### 1. View All Uploads

**Purpose:** Browse upload history.

**Step-by-Step Instructions:**

1. **Navigate to Upload History**
   - Patient menu → Upload History
   - Or from Upload page → View History

2. **View upload table:**
   - Status badge
   - Upload ID
   - Uploader name
   - Date/time

---

### 2. Monitor Processing Uploads

**Purpose:** Track in-progress uploads.

**Step-by-Step Instructions:**

1. **Locate uploads with "Processing" badge**
   - Animated pulse effect

2. **Page auto-refreshes**
   - Every 10 seconds
   - While processing uploads exist

3. **Status updates automatically**
   - No manual refresh needed

4. **Auto-refresh stops when:**
   - All uploads complete
   - Or processing exceeds 30 minutes

---

### 3. View Upload Success

**Purpose:** Confirm successful uploads.

**Step-by-Step Instructions:**

1. **Find uploads with green "Success" badge**

2. **View upload details:**
   - Upload ID
   - Who uploaded
   - When uploaded

---

### 4. View Upload Errors

**Purpose:** Understand why upload failed.

**Step-by-Step Instructions:**

1. **Find uploads with red "Error" badge**

2. **Hover over error badge**
   - Tooltip shows error message

3. **Read error details**
   - Explains what went wrong

---

### 5. Navigate Pages

**Purpose:** Browse through upload history.

**Step-by-Step Instructions:**

1. **View pagination at bottom**
   - If more than one page

2. **Click page navigation:**
   - Previous/Next arrows
   - Page numbers

3. **View different pages of uploads**

---

### 6. Start New Upload

**Purpose:** Navigate to upload new file.

**Step-by-Step Instructions:**

1. **Click "New Upload" button**
   - Top right corner
   - Blue button

2. **Redirected to Upload page**

---

## Upload Status Badges

| Status | Badge | Meaning |
|--------|-------|---------|
| Success | Green | Upload completed successfully |
| Error | Red | Upload failed - hover for details |
| Processing | Gray (animated) | Upload in progress |

---

## Table Columns

| Column | Description |
|--------|-------------|
| Status | Current upload status |
| Upload ID | Unique identifier for upload |
| Uploader | Staff member who uploaded |
| Date | When upload was initiated |

---

## Auto-Refresh Behavior

| Condition | Refresh |
|-----------|---------|
| Processing uploads exist (< 30 min old) | Every 10 seconds |
| No processing uploads | Stopped |
| Processing upload > 30 min | Considered stale, refresh stops |

---

## Date Display Format

Each upload shows:
- Formatted date and time
- Day of week
- Hour and minute (12-hour format)

---

## Empty State

If no uploads:
- File icon displayed
- "No uploads available" message
- Prompt to upload CSV file

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View upload history | ✓ | ✓ | ✓ |
| Start new upload | ✓ | ✓ | ✓ |
| View error details | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Processing stuck | Check after 30 minutes |
| No status update | Manually refresh page |
| Error not showing | Hover over error badge |
| Page not refreshing | Check if uploads are stale |
| Can't find upload | Check pagination |
