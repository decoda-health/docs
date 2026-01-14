# Check-In Dashboard Page - User Actions Guide

## Overview

The Check-In Dashboard provides an analytics and monitoring view of appointment data, including metrics, trends, patient intake status, and alerts. It serves as a central hub for tracking appointment performance and identifying issues.

---

## Available Actions

### 1. Select Date Range

**Purpose:** Filter all dashboard data to a specific time period.

**Step-by-Step Instructions:**

1. **Locate the Date Range picker**
   - In the header area on desktop
   - In the settings popover on mobile
   - Shows current date range (e.g., "Last 7 days")

2. **Click to open date picker**
   - Calendar popup appears with date range selector
   - Shows preset options and custom range selection

3. **Choose a preset range**
   - Options typically include:
     - Today
     - Yesterday
     - Last 7 days
     - Last 30 days
     - This month
     - Last month
     - This quarter
   - Click to select

4. **Or select custom date range:**
   - Click on start date in calendar
   - Click on end date in calendar
   - Range is highlighted between dates
   - Click "Apply" to confirm

5. **View filtered data**
   - All dashboard sections update
   - Metrics recalculate for new range
   - Charts redraw with new data

---

### 2. Filter by Provider

**Purpose:** Show dashboard data for specific providers only.

**Step-by-Step Instructions:**

1. **Locate the Provider filter**
   - Dropdown labeled "Provider" in header
   - On mobile, access via settings popover

2. **Click to open dropdown**
   - List of all active providers appears
   - Multi-select is supported

3. **Select providers**
   - Click to check/uncheck providers
   - Selected providers highlighted
   - "All Providers" option may be available

4. **View filtered results**
   - Metrics show only selected providers' data
   - Charts and tables filter accordingly
   - URL updates to preserve filter state

---

### 3. Filter by Location

**Purpose:** Show dashboard data for specific locations only.

**Step-by-Step Instructions:**

1. **Locate the Location filter**
   - Dropdown labeled "Location" in header
   - Multi-select capability

2. **Click to open dropdown**
   - All practice locations listed

3. **Select locations**
   - Check desired locations
   - Uncheck to exclude

4. **View filtered data**
   - All dashboard components update
   - Shows data only for selected locations

---

### 4. Reset All Filters

**Purpose:** Clear all filters and return to default view.

**Step-by-Step Instructions:**

1. **Locate the Reset button**
   - Button labeled "Reset" in the filter area
   - May show as icon on mobile

2. **Click Reset**
   - All filters cleared:
     - Date range returns to default
     - All providers selected
     - All locations selected

3. **View reset dashboard**
   - All data visible
   - Default date range applied

---

### 5. View Comprehensive Metrics

**Purpose:** See key appointment statistics at a glance.

**Step-by-Step Instructions:**

1. **Locate the Metrics section**
   - Card-based display near top of dashboard
   - Shows multiple KPI cards

2. **Read metric cards**
   - Each card shows:
     - Metric name (e.g., "Total Appointments")
     - Current value (number)
     - Trend indicator (up/down arrow)
     - Comparison to previous period

3. **Understand the metrics:**

   | Metric | Description |
   |--------|-------------|
   | Total Appointments Booked | All appointments in period |
   | Completed | Successfully finished appointments |
   | No Shows | Patients who didn't show up |
   | Provider Utilization | Percentage of provider time utilized |

4. **Interpret trend indicators**
   - ↑ Green arrow: Improvement from previous period
   - ↓ Red arrow: Decline from previous period
   - Percentage shows amount of change

---

### 6. View Appointment Trend Graph

**Purpose:** See appointment volume trends over time.

**Step-by-Step Instructions:**

1. **Locate the trend graph**
   - Line/area chart below metrics cards
   - Shows appointments over time

2. **Use graph controls**
   - **Group by:** Select Day, Week, or Month
   - **Breakdown:** Choose Appointment volume or New Patient Appointments
   - **By Location:** Toggle to view data by location

3. **Interpret the graph**
   - X-axis: Time (based on group by selection)
   - Y-axis: Number of appointments
   - Line shows appointment count trend

4. **Hover for details**
   - Move mouse over data points
   - Tooltip shows exact values
   - Date and count displayed

4. **Identify patterns**
   - Look for peak days
   - Notice any drops or spikes
   - Compare weekdays vs weekends

---

### 7. View Services Chart

**Purpose:** See breakdown of appointments by service type.

**Step-by-Step Instructions:**

1. **Locate the chart**
   - Pie chart, donut chart, or bar chart
   - Labeled "Services"

2. **View service distribution**
   - Each segment represents a service type
   - Size indicates proportion of appointments
   - Colors differentiate services

3. **Hover for details**
   - Shows service name
   - Shows count and percentage
   - May show comparison data

4. **Use legend**
   - Legend identifies each color/segment
   - Click legend items to hide/show categories

---

### 8. View Patients Pending Intake Forms Table

**Purpose:** See which patients haven't completed required forms before their appointments.

**Step-by-Step Instructions:**

1. **Locate the table section**
   - Heading: "Patients Pending Intake Forms"
   - Description: "Patients with upcoming appointments who haven't completed their intake forms"

2. **Review the table columns**
   - Patient Name
   - Appointment (date/time)
   - Provider
   - Type (appointment type)
   - Contact (phone/email)
   - Action

3. **Sort the table**
   - Click column headers to sort
   - Click again to reverse sort order
   - Arrow indicates sort direction

4. **Take action on a patient**
   - Click on patient row to view details
   - Or use action buttons:
     - Send Form Reminder
     - View Patient
     - Call Patient

5. **Filter the table**
   - Table respects dashboard filters
   - Additional table-specific filters may be available

---

### 9. Send Form Reminder to Patient

**Purpose:** Notify a patient that they need to complete their forms.

**Step-by-Step Instructions:**

1. **Find patient in pending forms table**
   - Locate the patient row

2. **Click the action button**
   - Button labeled "Send Form"

3. **Confirm send**
   - Confirmation dialog may appear
   - Click "Send" to confirm

4. **Verify delivery**
   - Success message appears
   - Patient receives SMS/email with form link

---

### 10. View Appointment Alerts

**Purpose:** See important notifications about upcoming appointments.

**Step-by-Step Instructions:**

1. **Locate the Alerts section**
   - Heading: "Appointment Alerts"
   - Description: "Important notifications and alerts related to upcoming appointments"

2. **Review alert types**
   - Each alert shows:
     - Alert icon (type indicator)
     - Description
     - Affected appointment/patient
     - Time of occurrence

3. **Common alert types:**

   | Alert Type | Description |
   |------------|-------------|
   | Double Booking | Two appointments at same time |
   | Missing Info | Required patient info missing |
   | Insurance Issue | Insurance verification problem |
   | Form Incomplete | Required forms not submitted |
   | Late Cancellation | Cancelled within policy period |

4. **Take action on alerts**
   - Click alert to view details
   - Resolve button to mark as handled
   - Navigate to appointment/patient

---

### 11. Refresh Dashboard Data

**Purpose:** Reload all dashboard data to see latest changes.

**Step-by-Step Instructions:**

1. **Use browser refresh**
   - Press F5 or Cmd+R
   - All data reloads

2. **Or use refresh button (if available)**
   - Look for refresh icon in header
   - Click to reload data without full page refresh

3. **View updated data**
   - Metrics recalculate
   - Charts redraw
   - Tables reload

---

### 12. Access Mobile Filters

**Purpose:** Open filter options on mobile devices.

**Step-by-Step Instructions:**

1. **Locate settings button**
   - Gear icon in header on mobile
   - Or three dots menu

2. **Tap to open popover**
   - Filter popover opens with:
     - Provider select
     - Location select
     - Date range picker
     - Reset button

3. **Apply filters**
   - Make selections
   - Changes apply immediately

4. **Close popover**
   - Tap outside popover
   - Filters remain applied

---

## Dashboard Sections Overview

1. **Header with Filters**
   - Title: "Check-In Dashboard"
   - Provider filter
   - Location filter
   - Date range picker
   - Reset button

2. **Comprehensive Metrics**
   - KPI cards with key statistics
   - Trend indicators

3. **Appointment Trend Graph**
   - Line chart showing volume over time

4. **Services Chart**
   - Distribution of appointment types

4a. **Provider Utilization**
   - Average utilization percentage
   - Individual provider breakdown

5. **Patients Pending Intake Forms**
   - Table of patients needing attention

6. **Appointment Alerts**
   - Notifications requiring action

---

## Data Update Frequency

- Metrics update in real-time as appointments change
- Charts may cache data for performance
- Refresh page for latest data
- Alerts update automatically

---

## Permissions

| Feature | Admin | Manager | Staff |
|---------|-------|---------|-------|
| View all metrics | ✓ | ✓ | Limited |
| Filter by any provider | ✓ | ✓ | Own only |
| Send form reminders | ✓ | ✓ | ✓ |
| View alerts | ✓ | ✓ | Limited |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Metrics not loading | Check date range, refresh page |
| Charts empty | Verify filter selections have data |
| Slow performance | Narrow date range, reduce filters |
| Data seems stale | Refresh page, check last update time |
| Alerts not showing | Check if filters exclude alert sources |
| Export not working | Check browser popup blocker |
