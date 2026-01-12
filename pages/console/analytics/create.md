# Create Widget Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/analytics/create/page.tsx`
**Route:** `/[tenant]/analytics/create`

---

## Overview

The Create Widget page is a multi-step wizard for building custom analytics widgets. Users configure widget details, build data queries, select visualization types, and configure chart settings. Includes live preview that updates as you build.

---

## Available Actions

### 1. Start Widget Creation

**Purpose:** Begin creating new dashboard widget.

**Step-by-Step Instructions:**

1. **From Analytics dashboard**
   - Click "Add Widget" or similar

2. **Navigate to create page**
   - `?dashboard=xxx` parameter required

3. **Step 1 loads**
   - Widget details form

---

### 2. Enter Widget Details (Step 1)

**Purpose:** Name and describe the widget.

**Step-by-Step Instructions:**

1. **Enter Widget Title** (required)
   - Be specific about what's measured
   - Keep concise but descriptive

2. **Enter Description** (optional)
   - Explain what the widget shows
   - Add context for other users

3. **Click "Next"**
   - Proceeds to query step

---

### 3. Build Query (Step 2)

**Purpose:** Define what data to display.

**Step-by-Step Instructions:**

1. **Select Data Source**
   - Choose table/entity

2. **Add Fields (for Table type)**
   - Select columns to display

3. **Add Metrics (for Charts)**
   - Count, Sum, Average, etc.
   - Select field to aggregate

4. **Add Group By (for Charts)**
   - How to segment data
   - e.g., by date, category

5. **Add Filters (optional)**
   - Limit data returned
   - Date ranges, status, etc.

6. **Add Sort Order (optional)**
   - How to order results

---

### 4. Select Chart Type

**Purpose:** Choose visualization style.

**Step-by-Step Instructions:**

1. **Locate chart type selector**
   - In preview panel

2. **Available types:**
   - **Table:** Raw data grid
   - **Area:** Line chart with fill
   - **Bar:** Vertical bars
   - **Donut:** Pie-style ring
   - **Progress:** Goal tracking circle
   - **Number:** Single big number

3. **Click chart type icon**

4. **Some types have options:**
   - Stacked bars
   - Percentage view

---

### 5. Preview Widget

**Purpose:** See live preview while building.

**Step-by-Step Instructions:**

1. **Right panel shows preview**
   - Updates automatically

2. **Configure query**
   - Preview updates with data

3. **Click "Refresh Preview"**
   - Manual refresh if needed

4. **Change chart type**
   - Preview updates immediately

---

### 6. Configure Chart Settings (Step 3)

**Purpose:** Fine-tune chart behavior.

**Step-by-Step Instructions:**

1. **For Progress Charts:**
   - Set target value
   - Currency or number mode

2. **For Other Charts:**
   - May show "No configuration needed"

3. **Review settings**

4. **Click "Create Widget"**

---

### 7. Edit Existing Widget

**Purpose:** Modify saved widget.

**Step-by-Step Instructions:**

1. **Access via URL**
   - `?dashboard=xxx&widget=yyy`

2. **Form pre-fills**
   - With existing configuration

3. **Make changes**

4. **Click "Update Widget"**

---

### 8. Navigate Between Steps

**Purpose:** Move through wizard.

**Step-by-Step Instructions:**

1. **Click "Next"**
   - When step is complete

2. **Click "Previous"**
   - Go back to earlier step

3. **Progress indicator shows:**
   - Completed steps (checkmark)
   - Current step (outlined)
   - Future steps (empty)

---

### 9. Return to Dashboard

**Purpose:** Cancel and go back.

**Step-by-Step Instructions:**

1. **Click "Back" button**
   - Top left

2. **Returns to analytics page**
   - Widget not created

---

## Multi-Step Wizard

| Step | Name | Required |
|------|------|----------|
| 1 | Widget Details | Title |
| 2 | Query & Visualization | Data source, fields/metrics |
| 3 | Chart Configuration | Varies by chart type |

---

## Chart Types

| Type | Best For | Requires |
|------|----------|----------|
| Table | Raw data lists | Fields |
| Area | Trends over time | Metric + Group By |
| Bar | Comparisons | Metric + Group By |
| Donut | Distribution | Metric + Group By |
| Progress | Goal tracking | Metric + Target |
| Number | Single KPI | Metric |

---

## Query Configuration

| Component | Purpose |
|-----------|---------|
| Data Source | Which table to query |
| Fields | Columns to display (Table) |
| Metrics | Aggregations (Sum, Count, etc.) |
| Group By | How to segment data |
| Filters | Limit returned data |
| Order By | Sort results |

---

## Available Metrics

| Metric | Description |
|--------|-------------|
| Count | Number of records |
| Sum | Total of values |
| Average | Mean of values |
| Min | Minimum value |
| Max | Maximum value |

---

## Chart Type Availability

Chart types are dynamically enabled based on query:

| Has Fields | Has Metrics | Has Group By | Available Charts |
|------------|-------------|--------------|------------------|
| ✓ | - | - | Table |
| - | ✓ | - | Number, Progress |
| - | ✓ | ✓ | Area, Bar, Donut, Table |

---

## Stacking Options (Bar Charts)

When multiple metrics or group by fields:
- **Default:** Side by side
- **Stacked:** Bars on top
- **Percent:** 100% stacked

---

## Progress Circle Configuration

| Setting | Description |
|---------|-------------|
| Target Value | Goal number |
| Currency Mode | Auto-detected from fields |

---

## Preview Panel Features

| Feature | Description |
|---------|-------------|
| Live update | Changes as you build |
| Refresh button | Manual data refresh |
| Chart selector | Switch visualization |
| Error display | Shows query issues |

---

## URL Parameters

| Parameter | Purpose |
|-----------|---------|
| dashboard | Required - Which dashboard to add to |
| widget | Optional - Widget ID for editing |

---

## Validation

Step 1 requires:
- Widget title

Step 2 requires (varies by chart):
- Data source selected
- Fields OR metrics configured
- Group by (for area/bar/donut)

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| Create widgets | ✓ | ✓ | ✗ |
| Edit widgets | ✓ | ✓ | ✗ |
| Preview data | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Preview not loading | Check query configuration |
| Chart type disabled | Configure required fields |
| Can't proceed to next | Complete required fields |
| Widget not saving | Check all steps completed |
| No data in preview | Check filters, data exists |
