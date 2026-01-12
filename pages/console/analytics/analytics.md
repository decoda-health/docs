# Analytics Dashboard Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/analytics/page.tsx`
**Route:** `/[tenant]/analytics`

---

## Overview

The Analytics page provides a customizable dashboard for business intelligence and data visualization. Users can view, create, and manage analytics widgets displaying various practice metrics.

---

## Available Actions

### 1. View Analytics Dashboard

**Purpose:** See all configured analytics widgets at a glance.

**Step-by-Step Instructions:**

1. **Navigate to Analytics**
   - Click "Analytics" in main navigation
   - Dashboard loads with configured widgets

2. **View widget grid**
   - Widgets displayed in responsive grid
   - Each widget shows specific metric/chart

3. **Understand widget types:**
   - **Number:** Single metric (e.g., total revenue)
   - **Progress:** Goal tracking with percentage
   - **Table:** Tabular data display
   - **Area Chart:** Trend over time
   - **Bar Chart:** Category comparison
   - **Donut Chart:** Distribution breakdown

---

### 2. Create New Analytics Widget

**Purpose:** Add a custom widget to track specific metrics.

**Step-by-Step Instructions:**

1. **Click "Create Widget" button**
   - Located in header area
   - Opens widget creation wizard

2. **Step 1: Widget Details**

   **Title:**
   - Enter descriptive name
   - E.g., "Monthly Revenue by Provider"

   **Description (optional):**
   - Add context for the widget
   - Helps others understand the metric

3. **Step 2: Query & Visualization**

   **Select Data Source:**
   - Choose from available data types:
     - Appointments
     - Charges
     - Payments
     - Patients
     - Services
     - Providers

   **Configure Query:**
   - Set filters (date range, location, etc.)
   - Choose grouping (by provider, by service, etc.)
   - Select aggregation (count, sum, average)

   **Choose Chart Type:**
   - Table, Area, Bar, Donut, Progress, Number
   - Preview updates as you configure

4. **Step 3: Chart Configuration**

   **For Bar Charts:**
   - Stacked vs. grouped
   - Horizontal vs. vertical
   - Color scheme

   **For Donut Charts:**
   - Show labels/percentages
   - Legend position

   **For Progress Charts:**
   - Set target value
   - Choose color thresholds

5. **Save Widget**
   - Click "Save" or "Create"
   - Widget added to dashboard
   - Appears in widget grid

---

### 3. Edit Existing Widget

**Purpose:** Modify a widget's configuration.

**Step-by-Step Instructions:**

1. **Locate the widget**
   - Find it in the dashboard grid

2. **Click edit button**
   - Gear icon or "Edit" in widget menu
   - Opens edit wizard

3. **Modify settings**
   - Same steps as creation
   - Change title, query, visualization

4. **Save changes**
   - Click "Save"
   - Widget updates on dashboard

---

### 4. Delete Widget

**Purpose:** Remove a widget from the dashboard.

**Step-by-Step Instructions:**

1. **Locate the widget**
   - Find it in dashboard

2. **Open widget menu**
   - Click three dots (⋮) menu
   - Or right-click widget

3. **Select "Delete"**
   - Confirmation dialog appears

4. **Confirm deletion**
   - Click "Delete"
   - Widget removed from dashboard

---

### 5. Rearrange Widgets

**Purpose:** Change the order and layout of widgets.

**Step-by-Step Instructions:**

1. **Enter edit mode**
   - Click "Edit Layout" or similar button
   - Widgets become draggable

2. **Drag widgets**
   - Click and hold widget header
   - Drag to new position
   - Other widgets reflow

3. **Resize widgets (if supported)**
   - Drag widget edges
   - Adjust width/height

4. **Save layout**
   - Click "Save Layout"
   - New arrangement persists

---

### 6. Refresh Widget Data

**Purpose:** Update widget with latest data.

**Step-by-Step Instructions:**

1. **Refresh individual widget:**
   - Click refresh icon on widget
   - Widget reloads data

2. **Refresh all widgets:**
   - Click page refresh
   - Or "Refresh All" button
   - All widgets update

---

### 7. Export Widget Data

**Purpose:** Download widget data for external use.

**Step-by-Step Instructions:**

1. **Open widget menu**
   - Click three dots (⋮)

2. **Select "Export"**
   - Export options appear

3. **Choose format:**
   - CSV (spreadsheet data)
   - PNG (chart image)
   - PDF (formatted report)

4. **Download file**
   - File downloads to computer

---

### 8. Filter Dashboard Date Range

**Purpose:** Set time period for all widgets.

**Step-by-Step Instructions:**

1. **Locate global date filter**
   - In dashboard header
   - Date range picker

2. **Select date range:**
   - Choose preset (Today, This Week, This Month)
   - Or set custom range

3. **Apply to dashboard**
   - All widgets update
   - Shows data for selected period

---

### 9. Drill Down into Widget Data

**Purpose:** See detailed data behind a metric.

**Step-by-Step Instructions:**

1. **Click on chart element**
   - Click bar, slice, or data point

2. **View detailed breakdown**
   - Popup or drawer shows details
   - Individual records listed

3. **Navigate to source**
   - Click record to open source page
   - E.g., click to open specific appointment

---

## Widget Types Reference

### Number Widget
- Displays single large number
- Optional comparison to previous period
- Good for KPIs like total revenue

### Progress Widget
- Shows progress toward a goal
- Circular or bar progress indicator
- Includes percentage completion

### Table Widget
- Tabular data display
- Sortable columns
- Paginated for large datasets

### Area Chart
- Shows trends over time
- Filled area under line
- Multiple series supported

### Bar Chart
- Category comparison
- Stacked or grouped
- Horizontal or vertical orientation

### Donut Chart
- Distribution/composition
- Percentage breakdown
- Interactive legend

---

## Data Sources Available

| Source | Metrics |
|--------|---------|
| Appointments | Count, no-show rate, by provider |
| Charges | Total, by service, by status |
| Payments | Revenue, by method, by date |
| Patients | New vs. returning, demographics |
| Services | Popularity, revenue |
| Providers | Productivity, utilization |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View dashboard | ✓ | ✓ | ✓ |
| Create widgets | ✓ | ✓ | ✗ |
| Edit widgets | ✓ | ✓ | ✗ |
| Delete widgets | ✓ | ✓ | ✗ |
| Export data | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Widget not loading | Check data source, refresh page |
| Data seems wrong | Verify date range and filters |
| Can't create widget | Check permissions |
| Export not working | Check popup blocker |
| Chart empty | No data for selected criteria |
