# Staff Pay

The Staff Pay page gives you a single view of everything your staff has earned: commissions, tips, and hourly pay. Use it to review provider earnings for any date range and export reports for payroll.

**Where to find it:** Go to **Billing > Staff Pay**.

## What You See

At the top of the page, summary cards show totals for the selected date range:

- **Total Commissions** -- the combined commission earnings across all providers (visible if Commissions is enabled).
- **Total Tips** -- the combined tips collected (visible if Payments is enabled).
- **Total Hours** -- the combined hours worked (visible if Clock In is enabled).
- **Total Pay** -- the grand total of commissions, tips, and hourly pay.

Below the summary cards, a table lists each provider with their individual totals. A **Total** row at the bottom sums up all providers.

## Select a Date Range

The date picker at the top defaults to the current month (from the 1st through today). To change it:

1. Click the date range field.
2. Choose a start and end date.
3. The table and summary cards update automatically.

## Show or Hide Columns

If your clinic has more than one pay type enabled (Commissions, Tips, Hourly Pay), a **Columns** button appears next to the date picker. Click it to show or hide individual columns. Hidden columns are excluded from the summary cards, table totals, and exports.

## Table Columns

The columns that appear depend on which features are enabled for your clinic and which columns you have visible:

| Column | What It Shows |
|--------|---------------|
| **Provider** | The staff member's name. |
| **Commissions** | Total commissions earned in the date range. |
| **Tips** | Total tips received in the date range. |
| **Hourly Pay** | Total pay from clock-in hours multiplied by the provider's hourly rate. |
| **Total** | The sum of all visible columns (commissions, tips, and hourly pay). |

## View Provider Details

Click any provider row to expand it and see a line-by-line breakdown:

- **Commission details** show the patient name, commission rate, the item sold, the charge total, and the date. Click the patient name to go to their profile. Click the rate to go to the commission rule settings. Click the item name to go to the charge.
- **Tip details** show who left the tip and the date. Click the date to go to the charge.
- **Hourly pay details** show hours worked on each day, the hourly rate, and the pay for that day. Click the date to go to clock-in history.

Click the row again to collapse the details.

## Export a Report

There are two ways to export:

### Full Report

1. Click the **Export Report** button in the top-right corner.
2. Choose which columns to include and your preferred file format.
3. The exported file includes both the provider summary rows and the line-by-line details.

The file is named with the date range (for example, `staff-pay-2026-01-01-to-2026-01-31`).

### Per-Provider Export

1. Select one or more providers using the checkboxes in the table.
2. Click **Export Selected** in the action bar that appears at the bottom.
3. If you selected one provider, a single CSV file downloads. If you selected multiple providers, a ZIP file downloads containing one CSV per provider.

Each per-provider CSV includes the line-by-line details and a total row for that provider.

## Permissions

- Users with the **View All Pay** permission can see every provider's pay data.
- Users without that permission only see their own earnings.
