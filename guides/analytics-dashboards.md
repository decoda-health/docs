# Analytics & Dashboards Guide

Use Analytics to understand how your clinic is performing. This guide walks you through navigating the built-in dashboards, building your own custom dashboards, and exporting data.

## Finding Analytics

In the left sidebar, click **Analytics**. Use the dashboard picker at the top of the page to switch between dashboards.

Before Analytics shows useful numbers, you need data in other parts of the system -- appointments in Scheduling, charges in Billing, and patient records in Patients.

## Built-In Dashboards

Analytics comes with ten built-in dashboards. Each one answers a different set of questions. Here is a quick summary of what each one covers.

### Appointment Dashboard

Shows appointment volume, value, booking sources, cancellation rates, and no-show rates. Group by provider, location, service, date, week, or month. Filter by provider, location, service, status, or patient type (new vs. returning).

When you filter to only cancelled appointments, extra columns appear automatically: Cancellation Reason and Cancellation Date.

### Product Sales Breakdown

Shows every item on every charge -- services, products, memberships, and packages -- with revenue, discounts, taxes, cost, and profit columns. Use it to understand what you sold and how profitable it was. Group by location, provider, category, payment method, or date.

Hover over the Net Revenue and Discount cells to see the full calculation breakdown (item-level vs. charge-level discounts). Use the **Columns** button to show or hide columns like Brand and Charge Status.

### Payment Breakdown

Shows every payment transaction -- every time money changed hands. Includes date, patient, location, comment, payment method, card details, amount, processing fees, and net amount. Group by location, payment method, date, week, or month.

Use this dashboard for reconciling with your bank or payment processor.

### Patient Dashboard

Analyzes your patient base with histogram charts for spending, tenure, last visit, visit span, age, and source. The table shows per-patient metrics like total spent, average spend per visit, and days since last visit.

Use the "No appointment in last X days" filter to find inactive patients for re-engagement.

### Provider Earnings Report

A financial summary for each provider showing total sold, discounts, tips, voids, adjustments, taxes, outstanding balances, and refunds. Click a provider's name to see their individual transactions.

The Total column adjusts based on which columns are visible -- hide columns that are not part of your commission formula and the Total recalculates automatically.

### Provider Activity

A chronological feed of everything each provider has done: charges, payments, notes, memberships, measurements, and more. Click any entry to go directly to the source record.

### Note Analytics

Tracks clinical note volume per provider, including whether notes were created with AI Scribe or written manually. Use the note type filter to compare AI vs. manual note counts.

### Memberships Analytics

Shows the status of all memberships with summary cards for total members, projected monthly recurring revenue, new members this month, and cancellations this month. Two charts show all-time membership breakdowns by status and by location.

The table lists every member with their plan, status, price, start date, created date, next billing date, payment method, and who enrolled them. Filter by patient name, location, membership type, status, provider who sold it, or created date.

### Payment Plan Analytics

Tracks active payment plans with summary cards for active plans, total plan value, amount collected, amount outstanding, and failed/cancelled plans. Click any patient name to see the full installment schedule and payment history.

### Sales Tax Details

Daily tax breakdowns by location with export to Excel. This dashboard is only available for select clinics.

## Controls That Every Dashboard Shares

All built-in dashboards use the same set of controls:

- **Date range** -- Pick a preset (Today, This Week, This Month, etc.) or set custom start and end dates. The table updates automatically.
- **Group by** -- Collapse rows by a category (location, provider, date, etc.) to see subtotals. Click a group header to expand or collapse the rows underneath.
- **Filters** -- Narrow results by location, provider, status, and other fields. The available filters change depending on which dashboard you are viewing.
- **Column visibility** -- Some dashboards let you show or hide columns. Click the **Columns** button where available.
- **Export** -- Download the current view as a spreadsheet. Requires the **Analytics Export** permission.

## Creating Custom Dashboards

You can build your own dashboards with personalized charts and tables.

### Create a Dashboard

1. Click the dashboard picker at the top of the Analytics page.
2. Select **Create new dashboard** at the bottom of the list.
3. Give it a name and optional description.
4. Click **Create Dashboard**.

Your new dashboard starts empty and is ready for widgets.

### Add Widgets

1. Click **Add Widget** on your custom dashboard.
2. Follow the three-step process:
   - **Details** -- Set a title and optional description for the widget.
   - **Query** -- Choose which data to pull in, add filters, pick groupings, and select metrics.
   - **Visualization** -- Pick a chart type. Available types include table, area chart, bar chart, donut chart, progress circle, and single number. A live preview appears on the right as you build.
3. Click **Create Widget** to add it to your dashboard.

### Arrange Your Layout

Drag widgets around on the grid to organize your dashboard. Put the most important numbers at the top where they are easy to spot.

### Edit or Delete a Dashboard

In the dashboard picker, custom dashboards show a pencil icon (edit) and a trash icon (delete) next to their name. Built-in dashboards cannot be edited or deleted.

## Exporting Data

Every built-in dashboard has an **Export** button. Click it to download the current filtered view as a spreadsheet file. The export respects whatever filters, date range, and grouping you have set -- so set up the view you want first, then export.

Exporting requires the **Analytics Export** permission. If the button is grayed out, ask your administrator to grant this permission under **Settings > Users & Roles**.

## Permissions

Analytics access is controlled by three permissions, configured under **Settings > Users & Roles**:

| Permission | What it controls |
|---|---|
| **Analytics Read** | Required to see the Analytics section at all. Without this, Analytics is hidden from the sidebar. |
| **Analytics Write** | Required to create, edit, and delete custom dashboards and widgets. |
| **Analytics Export** | Required to download data as a spreadsheet. |

## Tips

- **Start with the built-in dashboards.** They cover the most common questions. Only create custom dashboards when you need a view that does not already exist.
- **Use Group By to spot trends.** Grouping by date, week, or month shows patterns over time. Grouping by provider or location compares performance across your team or clinics.
- **Set a weekly review cadence.** Check delinquent memberships and failed payment plans at least once a week. The sooner you catch a failed payment, the easier it is to resolve.
- **Export for your accountant.** Product Sales Breakdown is usually what accountants need (revenue, taxes, discounts, and profit). Payment Breakdown is better for reconciling with your bank.
- **Watch your costs.** If Net Profit numbers look surprisingly low, check the Cost column. Product costs come from inventory shipment data -- if those costs are not entered correctly, profit numbers will not be accurate.

## Troubleshooting

**Dashboard shows no data**
- Make sure the date range covers a period with actual activity.
- Check that no filters are excluding all results.
- Confirm that relevant data exists in the source modules (Scheduling, Billing, Patients).

**Numbers seem wrong**
- Double-check your filters and date range.
- Hover over calculated cells (Net Revenue, Net Profit, Discount) to see the exact formula being used.
- Remember that Product Sales shows what was billed, while Payment Breakdown shows what was collected -- these are different numbers.

**Cannot create a custom dashboard**
- You need the **Analytics Write** permission. Ask your administrator to check your role under **Settings > Users & Roles**.

**Export button is grayed out**
- You need the **Analytics Export** permission. Ask your administrator to grant it.
