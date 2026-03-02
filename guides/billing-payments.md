# Billing & Payments Guide

Billing is how you track money owed, collect payments, and manage your clinic's finances. This guide walks you through the key billing workflows in Decoda.

## Core Concepts

- **Charge** -- A bill for services or products provided to a patient.
- **Cart** -- A draft order you can build before converting it to a charge or quote.
- **Invoice** -- An automated outreach sequence that sends payment reminders to patients with outstanding balances.
- **Payment** -- Money received from a patient toward their charges.
- **Credit** -- A prepaid balance on a patient's account that can be applied to future charges.

## Navigating Billing

Open the **Billing** section from the main menu. You will see these pages:

- **Dashboard** -- Revenue overview and performance charts.
- **Check Out** -- Create charges and collect payment.
- **Charges** -- View and manage all charges.
- **Payments** -- View all payment transactions.
- **Invoices** -- Manage automated patient outreach for outstanding balances.
- **Carts** -- Pre-build orders before checkout.
- **Cash Balances** -- Track and close out physical cash at each location.
- **Commissions** -- Set up provider commission structures and generate payout reports.

## The Revenue Dashboard

Go to **Billing > Dashboard** to see a high-level view of your financial performance.

- **Filter by location** -- Select one or more locations to narrow results.
- **Filter by date range** -- Choose a preset range (today, last 7 days, last 30 days, etc.) or pick custom dates. Click **Reset** to clear all filters.

The dashboard shows:

- **Total Revenue** -- Revenue collected during the selected period, plus today's revenue.
- **Top-Selling Services/Items** -- A ranked bar chart of your highest-revenue services.
- **Top Customers by Spending** -- A ranked bar chart of patients with the highest spend.
- **Payment Medium Distribution** -- A breakdown of payments by method (POS terminal, virtual terminal, cash, patient credit, payment plan, invoice).
- **Customer Purchased Item Graph** -- Which services and products patients are purchasing.
- **Charge Status Over Time** -- How charges move through statuses over the selected period.

## Checkout Workflow

Go to **Billing > Check Out** to create a charge and collect payment.

1. **Select a patient** -- Search for the patient you are billing. Any outstanding charges appear automatically.
2. **Select location** -- Choose the location for this transaction (determines available POS devices and tax rules).
3. **Select merchant account** -- If multiple merchant accounts are configured, pick which one processes the payment.
4. **Build the charge** -- Add services, products, packages, custom amounts, discounts, tips, descriptions, and more. If the patient has pre-purchased packages or banked items, those appear so you can redeem them.
5. **Select existing charges (optional)** -- Pay outstanding charges from previous visits in addition to (or instead of) a new charge.
6. **Choose a payment method** -- See below.
7. **Complete payment** -- After success, you see a confirmation screen with options to send a receipt.

### Payment Methods

- **POS Terminal** -- Send the charge to a physical payment terminal at the location. The patient taps, inserts, or swipes their card.
- **Charge a Card** -- Enter card details or use a saved card on file (virtual terminal).
- **Payment Plan** -- Set up recurring installments with an initial payment amount, installment amount, number of installments, frequency (weekly, bi-weekly, monthly), and start date. The patient must have a card on file.
- **Send Invoices** -- Create the charge and send automated reminders via SMS or email using a rule set, or send a manual invoice with a custom message. The patient receives a payment link to pay online.
- **Settle Externally** -- Record a payment made outside the system (cash, care credit, check, etc.).
- **Patient Credit** -- Apply available credit from the patient's account.

### Split Payments

For POS terminal, virtual terminal, and patient credit methods, click **Split Payment** to collect only a portion of the total. The remaining balance stays outstanding.

### Zero-Dollar Charges

When the total is $0.00 (for example, if packages or discounts fully cover the charge), a confirmation screen appears instead of payment methods. Confirm to create the charge without any payment processing.

### Customer Display

You can connect a separate customer-facing display device during checkout. Click **Connect Customer Display** in the charge step, select an available device for your location, and click **Connect**. The display mirrors live checkout details and can collect tips.

## Managing Charges and Payments

### Charges

Go to **Billing > Charges** to view and manage all charges. Each row shows the charge amount, status, outstanding balance, patient, dates, and payment date. Use the filter bar to narrow results by patient, charge ID, amount range, date range, status, or location.

**Charge statuses:** Outstanding, Paid, Payment Plan, Written Off, External Settlement, Refunded, Void, Chargeback, Collections.

Click the settings icon on any charge for available actions:

- **Take Payment** -- Opens checkout with the charge pre-loaded.
- **Edit Charge Amount** -- Increase or decrease the charge total.
- **Write off charge** -- Mark the outstanding balance as uncollectable.
- **Externally Settle Charge** -- Mark as paid outside Decoda.
- **Cancel Payment Plan** -- Stop future installments (payment plan charges).
- **Detailed Receipt** -- Open a printable receipt (paid/settled charges).
- **Edit Details** -- Modify the description, external ID, or date of service.
- **Add/Edit Comment** -- Attach or update an internal staff comment.
- **Delete Charge** -- Permanently remove the charge (disabled for charges with card payments).

Click the caret on any charge row to see the **Charge Timeline** -- every event in the charge's lifecycle.

Click **Export Charges** to download matching charges as a CSV file.

### Payments

Go to **Billing > Payments** to view every payment transaction. Each row shows the amount, status, patient, card info, payment method, and date.

Click the settings icon on any payment for available actions:

- **Refund Payment** -- Open the refund window (see below).
- **Receipt Details** -- Send a receipt via SMS or email.
- **Generate Detailed Receipt** -- Open a printable receipt in a new tab.
- **Move to Another Patient** -- Transfer the payment to a different patient.
- **Move to Location** -- Reassign to a different clinic location.
- **Change Settlement Type** -- Change the payment method label on a non-card payment.
- **Delete Payment** -- Remove the payment (disabled for card payments, insurance payments, and payments with refunds).

Click **One Time Payment** to record an insurance or manual payment without going through checkout.

Click **Export Payments** to download matching payments. Click **View Deposits** to see bank deposits from your payment processor.

### Processing a Refund

1. Go to **Billing > Payments** and find the payment.
2. Click the settings icon and select **Refund Payment**.
3. Review any existing partial refunds listed at the top.
4. Enter the refund amount (up to the remaining refundable balance).
5. Select a reason: Duplicate, Dispute, or Other. If "Other," provide a written explanation.
6. For full refunds, optionally check **Restore inventory for refunded items** to add products back to stock.
7. Click **Process Refund**. Card refunds take 6-7 business days. Patient credit refunds are immediate.

## Invoices and Payment Plans

### Invoices

Go to **Billing > Invoices** to manage automated patient outreach for outstanding balances.

At the top, four metric cards show counts of invoices needing attention: Failed, Expired, Paused, and Will Fail.

Each row represents an invoice set (a patient's collection of outstanding charges being invoiced). Click **Show Details** to see the timeline of messages sent and patient responses.

**Invoice set statuses:** Active, Paused, Cancelled, Expired, Paid, Will Fail, Failed.

Available actions depend on the status:

- **Write Off** -- Mark balances as uncollectable.
- **Send to Collections** -- Escalate the invoice.
- **Change Rule Set** -- Switch to a different automated sequence.
- **Pause / Resume** -- Temporarily stop or restart outreach.
- **Cancel** -- Permanently stop all outreach.

Use checkboxes to select multiple invoices for bulk actions.

Filter by patient name, status, amount range, invoice creation date, next send time, or rule set.

### Payment Plans

Payment plans are set up during checkout by selecting the **Payment Plan** payment method. You configure the initial payment, installment amount, number of installments, frequency, and start date. The patient provides a card on file for automatic future charges.

To cancel an active payment plan, go to **Billing > Charges**, find the charge with a Payment Plan status, click the settings icon, and select **Cancel Payment Plan**.

## Carts and Quotes

### Carts

Go to **Billing > Carts** to pre-build orders before checkout.

1. Click **Create Cart**.
2. Select a patient.
3. Add items or packages and adjust quantities. Apply per-item or cart-level discounts.
4. Add optional notes.
5. Click **Create Cart** to save as a Draft.

From the cart list, you can **Edit**, **Duplicate**, **Convert to Charge** (sends to checkout), **Create Quote**, or **Delete** a cart.

**Cart statuses:** Draft, Converted, Quoted.

### Quotes

Quotes let you send patients a formal estimate for review before committing to a charge. Create a quote from a cart by clicking **Create Quote**. Enter a title, description, optional expiration date, terms and conditions, and internal notes. Click **Create & Send Quote** to send the patient a link.

**Quote statuses:** Pending, Accepted, Declined.

## Cash Drawer and Commissions

### Cash Management

Go to **Billing > Cash Balances** to track physical cash at each location. Select your location first.

The page shows a timeline of cash events: balance closures, cash payments, cash refunds, adjustments, and external settlements.

- **Pay In / Pay Out** -- Record manual cash additions or removals from the drawer.
- **Close Cash Balance** -- Count the cash in the drawer using the denomination counter, review the expected vs. counted total, and click **Close Register**. Any discrepancy is flagged and can be acknowledged.

### Commissions

Go to **Billing > Commissions** to set up provider commission structures.

A commission structure includes a name, description, commission rules (percentage, flat fee, scoped to specific services), and assigned providers.

- **New Structure** -- Create a new commission structure.
- **Generate Report** -- Select a structure, date range, and filters to generate a payout report.
- **Export Report** -- Download the report as CSV.
- **Export Tips** -- Download a tips report broken down by provider.

## Deposits

Access deposits from the Payments page by clicking **View Deposits**. Each deposit shows the subtotal, total fees, amount deposited, transaction count, status, and creation date. Click any deposit to see the individual payments and refunds included. Use the month selector to filter by month.

## Receipts

After any successful payment, click the settings icon on the payment row:

- **Receipt Details** -- Send a receipt via SMS or email.
- **Generate Detailed Receipt** -- Open a printable receipt in a new tab with full line-item details, tax breakdowns, and payment information.
