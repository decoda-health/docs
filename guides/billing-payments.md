# Billing & Payments Guide

Billing is how you track money owed, process payments, and manage your clinic's finances. This guide walks you through creating charges, invoicing patients, and receiving payments.

## Core Concepts

**Charge** - A bill for services or products provided to a patient
**Cart** - A draft collection of charges before converting to an invoice
**Invoice** - A formal bill sent to patient
**Payment** - Money received from patient toward their charges
**Credit** - Prepaid balance available for future charges

## Getting Started

Access billing by clicking **Billing** from the main menu.

### The Billing Dashboard

Your dashboard shows:
- **Total Revenue** - All money received this period
- **Outstanding Balance** - Money patients still owe
- **Pending Invoices** - Unpaid bills sent to patients
- **Recent Transactions** - Latest charges and payments
- **Aging Report** - How long invoices have been unpaid

## Creating Charges

Charges are created from services provided to patients.

### Automatic Charges
When you complete an appointment, charges auto-create based on:
- Service type and rate
- Duration of appointment
- Any add-ons or extras

### Manual Charges
Create charges directly:

1. Go to **Billing > Charges**
2. Click **Create Charge**
3. Select patient
4. Add line items:
   - Service name
   - Quantity
   - Unit price
5. Review subtotal
6. Click **Save**

The charge now appears in your system and patient's balance.

## Using Carts (Quotes & Drafts)

A cart is a temporary collection of items before creating an invoice. Use carts to:
- Show patients a quote before they commit
- Collect multiple items before invoicing
- Get approval before charging

### Creating a Cart
1. Go to **Billing > Carts**
2. Click **New Cart**
3. Select patient
4. Add items:
   - Services and products
   - Packages or memberships
   - Discounts or promotions
5. Set due date
6. Click **Save**

### Converting Cart to Invoice
1. Open cart
2. Click **Create Invoice**
3. Review details
4. Choose delivery method:
   - Email to patient
   - In-person (print)
   - SMS link
5. Click **Send**

### Sharing a Quote with Patient
Before converting to invoice:
1. Open cart
2. Click **Share Quote**
3. Patient receives link via email
4. They can review and approve
5. You can track if they viewed it

## Processing Payments

When patient pays, record the payment immediately.

### Methods of Payment

**Credit/Debit Card**
- Customer pays directly using card terminal or online form
- Automatic authorization and settlement
- Receipt generated immediately

**Cash**
- Received in person at clinic
- Record manually in system
- Include bill count for cash reconciliation

**Check**
- Received from patient
- Record in system
- Note check number and bank details

**Bank Transfer / ACH**
- Patient sends directly to clinic bank
- Match payment to patient in system
- Process takes 1-3 business days

**Patient Credit**
- Deduct from prepaid credits
- Useful for package or membership holders

### Recording a Payment

1. Go to **Billing > Payments**
2. Click **Record Payment**
3. Select patient
4. Enter amount
5. Select payment method
6. Add optional notes
7. Click **Save**

Payment is applied to oldest unpaid invoices first (by default).

### Processing Card Payments
For credit/debit cards processed through Decoda:

1. Patient is in clinic
2. Click **Check Out** on their appointment
3. Display total owed
4. Patient swipes/taps card
5. Get authorization
6. Receipt prints automatically
7. Payment records immediately

## Invoices & Statements

### Creating an Invoice
Invoices are formal bills with payment terms and due dates.

1. Go to **Billing > Invoices**
2. Click **Create Invoice**
3. Select patient
4. Add charges/items
5. Set payment terms (Net 15, Net 30, etc.)
6. Set due date
7. Click **Send**

Patient receives invoice via email with payment link.

### Invoice Reminder
If invoice unpaid past due date:
1. Go to **Invoices**
2. Click **Send Reminder**
3. Patient receives email notice
4. Include payment link

### Patient Statements
Monthly statement shows all charges, payments, and balance:
1. Go to **Billing > Statements**
2. Select patient
3. Choose date range
4. Click **Generate Statement**
5. Email or print for patient

## Payment Plans

Break large charges into manageable installments.

### Creating a Payment Plan
1. Open patient's invoice or charge
2. Click **Create Payment Plan**
3. Enter:
   - Total amount
   - Number of payments
   - Start date
4. System calculates installments
5. Click **Create**

Patient sees:
- Due date for each payment
- Amount due each period
- Payment links

### Automatic Recurring Payments
With recurring enabled:
- Card automatically charged on due dates
- Failures retry after 3 days
- Patient notified of any issues
- Update stored card anytime

## Managing Patient Credits

Credits are prepaid amounts applied to future charges.

### Adding Credit
1. Go to **Billing > Deposits**
2. Click **Add Deposit**
3. Select patient
4. Enter amount received
5. Note payment method
6. Click **Save**

Credit now available on patient's account.

### Using Credits
Credits auto-apply to new invoices or:
1. Open patient's account
2. Click **Apply Credit**
3. Select which invoice(s) to apply toward
4. Confirm

### Refunding Credits
If patient requests refund:
1. Go to **Refunds**
2. Click **Create Refund**
3. Select payment to refund
4. Enter amount
5. Choose refund method (card, check, deposit)
6. Click **Process**

## Advanced Billing

### Discounts
Apply discounts to charges:
- Percentage discount (10% off)
- Fixed amount ($50 off)
- Write-offs (patient can't pay)

1. Open invoice or charge
2. Click **Add Discount**
3. Select type and amount
4. Save

### Refunds
Reverse charges already paid:
1. Go to **Billing > Refunds**
2. Click **Create Refund**
3. Select original payment
4. Enter refund amount
5. Choose refund method
6. Process

### Adjustments
Modify charges after creation:
1. Go to **Billing > Adjustments**
2. Click **New Adjustment**
3. Select invoice to adjust
4. Change amounts or remove items
5. Note reason
6. Save

### Commission Tracking
If paying providers/staff commissions:
1. Go to **Billing > Commissions**
2. View provider commissions for period
3. Commission calculated on services they provided
4. Pay via deposit or manual payment

### Advanced Billing Scenarios

<AccordionGroup>
  <Accordion title="Complex Payment Plans">
    Beyond standard recurring installments:
    - **Graduated payments** - Payments increase/decrease over time
    - **Conditional payments** - Payment triggered by event (appointment completion, etc.)
    - **Skipped payments** - Skip payment month (e.g., August vacation)
    - **Custom payment dates** - Non-uniform payment schedule
    - **Payment holidays** - Pause plan temporarily without affecting schedule

    Example: Pay $100 month 1, $150 month 2, $200 month 3 for treatment plan
  </Accordion>

  <Accordion title="Tax Configuration by Location & Service">
    Manage complex tax scenarios:
    - **Tax by location** - Different tax rates per clinic location
    - **Tax by service type** - Some services taxed, others exempt
    - **Compound tax** - Multiple tax types applied sequentially
    - **Tax holidays** - Temporary exemptions or rate changes
    - **Services always exempt** - Medical services exempt from tax
    - **Digital vs physical** - Different tax for products vs. services

    Example: Medical consultations tax-exempt, but skincare products taxed at 8%
  </Accordion>

  <Accordion title="Commission Calculations">
    Detailed commission structure:
    - **Percentage commissions** - X% of revenue from services they provide
    - **Tiered commissions** - Higher % as they hit revenue targets
    - **Flat rate per service** - Fixed amount per appointment
    - **Gross vs net commissions** - After expenses vs. on gross revenue
    - **Commission caps** - Maximum commission per period
    - **Service-specific rates** - Different % for different services
    - **Splits between providers** - Shared commission (e.g., 60/40 split)

    Example: Dr. Smith gets 40% on procedures, 20% on consultations, 50% if monthly revenue >$10K
  </Accordion>

  <Accordion title="Insurance Integration & Claims">
    If handling insurance payments:
    - **Insurance verification** - Verify coverage before appointment
    - **Insurance claims** - Automatic claim submission
    - **Coordination of benefits** - Multiple insurance handling
    - **Denial management** - Track and resubmit denied claims
    - **Insurance aging reports** - Track uncollected insurance claims
    - **Patient responsibility** - Calculate copay/deductible/coinsurance

    Requires: Insurance integration setup
  </Accordion>

  <Accordion title="Multi-Currency & International Payments">
    If serving international patients:
    - **Currency selection** - Patient pays in their currency
    - **Exchange rates** - Real-time or manual rate setting
    - **International payment processors** - Handling foreign cards
    - **Currency conversion fees** - Track processor fees
    - **Reporting by currency** - Separate tracking per currency

    Example: US patient charged in USD, Canadian patient in CAD
  </Accordion>

  <Accordion title="Refunds, Chargebacks & Disputes">
    Handling payment issues:
    - **Refund policies** - Set automatic refund eligibility
    - **Chargeback handling** - Process customer disputes
    - **Reversal timing** - Auto-reversal of failed payments
    - **Refund reasons tracking** - Document why refunded
    - **Partial refunds** - Refund portion of charge
    - **Store credit alternative** - Offer credit instead of refund

    Best practice: Document reason for all refunds for accounting
  </Accordion>

  <Accordion title="Accounting & Financial Reporting">
    Advanced financial operations:
    - **General ledger integration** - Export to accounting software
    - **Accrual vs cash accounting** - Revenue recognition methods
    - **Audit trails** - Complete transaction history
    - **Void vs refund** - Accounting difference
    - **Bank reconciliation** - Match deposits to bank statements
    - **Tax reporting export** - Generate tax reports (1099, etc.)

    For: Accountants and bookkeepers
  </Accordion>

  <Accordion title="Bad Debt & Collections">
    Managing uncollectable amounts:
    - **Aging analysis** - Track invoice aging automatically
    - **Auto-write-off** - Automatically write off at X days/amount
    - **Collections outreach** - Track collection attempts
    - **Payment arrangements** - Set up payment plans with overdue accounts
    - **Collections agency** - Flag for external collection
    - **Bad debt expense** - Track and reserve for uncollectable

    Important: Document collection attempts for legal reasons
  </Accordion>
</AccordionGroup>

## Reconciliation

Balance your records with actual money received.

### Daily Cash Reconciliation
1. Go to **Billing > Cash Balances**
2. Enter cash counted
3. System shows recorded cash payments
4. Click **Reconcile**
5. Note any discrepancies

### Monthly Reconciliation
1. Go to **Billing > Statements**
2. Generate statement for period
3. Compare to bank deposits
4. Note any unmatched items

## Reports & Analytics

### Revenue Dashboard
View financial performance:
- **Revenue by Service** - Which services generate most income
- **Revenue by Provider** - Performance by staff member
- **Daily Revenue** - Trends over time
- **Outstanding Aging** - Invoice aging analysis

### Payment Methods Report
See breakdown of how patients pay:
- Credit card vs cash vs check
- Identify payment trends
- Plan for payment processing

### Charge & Payment History
View complete transaction history for:
- Individual patient
- Date range
- Payment status
- All adjustments and refunds

## Billing Settings

Configure billing behavior in **Settings > Payment Management**:

**Default Rates**
- Standard rates for services
- Override per appointment if needed

**Payment Terms**
- Default due date (Net 15, Net 30, etc.)
- Grace period before late notice

**Auto-Charges**
- Services auto-bill on completion
- Memberships auto-renew per schedule
- Payment plans auto-charge on schedule

**Email Templates**
- Customize invoice email
- Customize payment reminder
- Customize receipt

## Payment Processors

### Rainforest Payments (Primary)
Default credit card processor:
- Accepts all major cards
- Real-time authorization
- Automatic settlement
- PCI compliant

### Multiple Payment Methods
Configure which methods patients can use:
- Credit/debit cards
- ACH bank transfers
- Checks
- Patient credit

## Best Practices

### Invoice Promptly
- Create invoices same day service provided
- Send immediately to avoid delays
- Include payment link

### Follow Up on Past Due
- First reminder at 15 days past due
- Second reminder at 30 days
- Consider collection at 60+ days
- Write off uncollectible at 90+ days

### Reconcile Weekly
- Match payments to invoices
- Clear discrepancies quickly
- Maintain accurate records

### Monitor Aging
- Review outstanding invoices weekly
- Identify slow payers early
- Adjust credit terms if needed

### Use Payment Plans
- Offer plans for larger amounts
- Improve payment collection
- Reduce patient stress

## Common Tasks

### Applying Payment to Wrong Invoice
1. Go to **Billing > Payments**
2. Find the payment
3. Click **Reallocate**
4. Select correct invoice
5. Save

### Splitting a Charge Among Providers
1. Open charge
2. Click **Allocate Commission**
3. Enter percentage for each provider
4. Commission calculated accordingly

### Creating Bulk Invoices
1. Go to **Invoices**
2. Click **Bulk Create**
3. Upload CSV with patient IDs and amounts
4. System creates invoices
5. Automatically sends to patients

## Troubleshooting

**"Payment declined"**
- Check card details
- Verify not expired
- Try different payment method
- Contact card issuer

**"Patient can't see invoice"**
- Check email was sent
- Verify patient email address
- Resend invoice link
- Check spam folder

**"Balance doesn't match"**
- Run reconciliation report
- Check for pending credits
- Verify all adjustments recorded
- Contact support if unresolved

## Related Features

- **Appointments** - Services create charges
- **Inventory** - Products create charges
- **Memberships** - Recurring charges
- **Insurance Verification** - Insurance pays portions
- **Receipts** - Proof of payment

For advanced payment processing, merchant accounts, or POS device setup, see **Settings > Payment Management**.
