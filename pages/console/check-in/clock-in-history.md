# Clock-In History Page - User Actions Guide

## Overview

The Clock-In History page displays staff time tracking records, including clock-in/out times, hours worked, and attendance patterns. This module requires the CLOCK_IN feature to be enabled.

---

## Prerequisites

- CLOCK_IN module must be enabled for the tenant
- User must have permission to view clock-in records

---

## Available Actions

### 1. View Clock-In Records

**Purpose:** See historical time tracking entries.

**Step-by-Step Instructions:**

1. **Navigate to Clock-In History**
   - Check-In → Clock-In History

2. **View records table**
   - Each row shows:
     - Staff member name
     - Clock-in time
     - Clock-out time
     - Total hours
     - Location
     - Date

---

### 2. Filter by Staff Member

**Purpose:** View records for specific employees.

**Step-by-Step Instructions:**

1. **Locate staff filter**
   - Dropdown in filter area

2. **Select staff member(s)**
   - Choose from list
   - Multi-select supported

3. **View filtered results**
   - Only selected staff shown

---

### 3. Filter by Date Range

**Purpose:** View records for a specific time period.

**Step-by-Step Instructions:**

1. **Locate date filter**
   - Date picker in filter area

2. **Select start date**
   - Click on start date field
   - Choose from calendar

3. **Select end date**
   - Click on end date field
   - Choose from calendar

4. **Apply filter**
   - Records update automatically

---

### 4. Filter by Location

**Purpose:** View clock-ins at specific locations.

**Step-by-Step Instructions:**

1. **Locate location filter**
   - Dropdown selector

2. **Select location(s)**
   - Choose practice locations

3. **View results**
   - Only selected locations shown

---

### 5. Sort Records

**Purpose:** Order records by different criteria.

**Step-by-Step Instructions:**

1. **Click column header**
   - Date, Name, Hours, etc.

2. **Toggle sort direction**
   - Click again to reverse
   - Arrow indicates direction

---

### 6. Export Records

**Purpose:** Download time tracking data.

**Step-by-Step Instructions:**

1. **Click "Export" button**
   - In header area

2. **Select format**
   - CSV or Excel

3. **Download file**
   - File contains filtered data
   - Use for payroll

---

### 7. View Individual Record Details

**Purpose:** See full details of a clock-in entry.

**Step-by-Step Instructions:**

1. **Click on record row**
   - Opens detail view

2. **View details:**
   - Exact clock-in time
   - Exact clock-out time
   - Total time worked
   - Break times (if tracked)
   - Location
   - Any notes

---

### 8. Edit Clock-In Record

**Purpose:** Correct errors in time entries.

**Step-by-Step Instructions:**

1. **Select record to edit**
   - Click row or edit button

2. **Modify times**
   - Adjust clock-in time
   - Adjust clock-out time

3. **Add notes**
   - Explain the correction

4. **Save changes**
   - Record updated
   - Audit trail maintained

---

### 9. Navigate Between Pages

**Purpose:** View more records.

**Step-by-Step Instructions:**

1. **Locate pagination**
   - Below table

2. **Navigate pages**
   - Next/Previous buttons
   - Click page numbers

3. **Change page size**
   - Select items per page

---

## Table Columns

| Column | Description |
|--------|-------------|
| Staff | Employee name |
| Date | Date of clock-in |
| Clock In | Time employee started |
| Clock Out | Time employee ended |
| Hours | Total time worked |
| Location | Where they worked |
| Status | Active/Complete |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View all records | ✓ | ✓ | Own only |
| Filter any staff | ✓ | ✓ | ✗ |
| Edit records | ✓ | ✓ | ✗ |
| Export data | ✓ | ✓ | ✗ |

---

## Payroll Integration

Clock-in data can be exported for payroll:
1. Filter desired date range
2. Filter by location if needed
3. Export to CSV/Excel
4. Import into payroll system

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No records showing | Check filters, date range |
| Missing clock-out | Staff may still be clocked in |
| Can't edit record | Check permissions |
| Export not working | Try smaller date range |
| Module not available | CLOCK_IN must be enabled |
