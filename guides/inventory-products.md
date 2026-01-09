# Inventory & Products Guide

Manage your clinic's products, services, and inventory stock. Track what you have, reorder when needed, and sell to patients.

## Getting Started

Access inventory in **Inventory** from the main menu.

Main sections:
- **Products** - Your service and product catalog
- **Stock** - Current inventory levels
- **Packages** - Bundle products/services
- **Members** - Patient accounts (if using memberships)
- **Purchase Orders** - Supplies to reorder

## Products

Products are anything you sell: services, physical items, or packages.

### Creating a Product

1. Go to **Inventory > Products**
2. Click **Create Product**
3. Enter product information:
   - **Name** (e.g., "Botox Units", "Facial Treatment")
   - **Category** (e.g., "Injectables", "Facials", "Services")
   - **Description** (optional)
   - **Price** (what you charge patients)
   - **Cost** (what you pay for it - for profit tracking)
4. Set product type:
   - **Service** - Staff time (appointments)
   - **Physical** - Inventory item (stock tracking)
   - **Digital** - Membership or package
5. Click **Save**

### Product Categories

Organize products into categories:
- **Services**: Botox, Fillers, Facials, Consultations
- **Products**: Skincare, Supplements, Devices
- **Packages**: Monthly Memberships, Treatment Plans

Categories help with:
- Reporting by category
- Finding products quickly
- Setting category-level pricing
- Revenue tracking

### Managing Product Details

Update product information:
1. Go to **Products**
2. Click product name
3. Edit details:
   - Price
   - Cost
   - Category
   - Description
   - Tax settings
4. Save

### Pricing

Set prices two ways:

**Fixed Price**
- Standard price for all customers
- Example: Botox = $12 per unit

**Variable Price**
- Charged per appointment (by duration)
- Example: Consultation = $100/hour

For variable pricing:
1. Click **Pricing**
2. Select "Per Unit" (hour, minute, etc.)
3. Set rate
4. Auto-calculates based on appointment length

### Discounts

Apply discounts to products:
- Percentage (10% off)
- Fixed amount ($20 off)
- Bundle discount (buy 3, get discount)

1. Click product
2. Go to **Discounts**
3. Click **Add Discount**
4. Set discount rules
5. Save

## Stock Management

Track inventory levels for physical products.

### Adding Stock

When you receive new inventory:

1. Go to **Inventory > Stock**
2. Click **Receive Stock**
3. Select product
4. Enter quantity received
5. Enter cost per unit (if different from default)
6. Note purchase order number
7. Click **Save**

Stock level automatically increases.

### Using Stock

When you sell a product:

1. Create a charge for patient
2. Add product to charge
3. System automatically deducts from stock
4. Stock level decreases

Stock is tracked in real-time.

### Inventory Levels

Monitor what you have:

1. Go to **Inventory > Stock**
2. View all products with quantities
3. See items below minimum threshold
4. Filter by category

### Setting Minimum Stock

Alert when inventory gets low:

1. Click product
2. Set **Minimum Stock Level** (e.g., 100 units)
3. When stock falls below minimum, system alerts you
4. Create purchase order automatically

### Physical Inventory Count

Periodically verify actual inventory:

1. Go to **Stock > Inventory Count**
2. Physical count all products
3. Enter actual counts
4. System compares to recorded counts
5. Adjust for discrepancies (loss, damage, errors)

Document the count date and who counted.

### Adjusting Stock

If count doesn't match:

1. Go to **Stock > Adjustments**
2. Click **Create Adjustment**
3. Select product
4. Enter adjustment amount (negative or positive)
5. Note reason (loss, damage, correction, etc.)
6. Save

Adjustments documented for audit trail.

## Packages

Bundles of products/services sold together at a combined price.

### Creating a Package

1. Go to **Inventory > Packages**
2. Click **Create Package**
3. Enter package information:
   - Name (e.g., "Complete Facial Package")
   - Description
   - Total price
   - Included items and quantities
4. Set expiration (if time-limited)
5. Click **Save**

### Package Types

**Treatment Packages**
- Multiple services bundled
- Example: "6-Pack Treatments" (6 sessions for discounted price)

**Membership Packages**
- Monthly or annual fee
- Includes multiple services
- Auto-renews

**Product Bundles**
- Physical items grouped
- Example: "Skincare Kit" (cleanser + toner + moisturizer)

**Membership + Services**
- Monthly fee + access to specific services

### Selling Packages

1. At appointment, select package instead of individual service
2. Patient pays bundled price (usually discounted vs. individual items)
3. Package balance shown in patient account
4. Services deducted from package as used

## Purchase Orders

Track supplier orders for inventory replenishment.

### Creating a Purchase Order

1. Go to **Inventory > Purchase Orders**
2. Click **Create Order**
3. Select supplier
4. Add items:
   - Product
   - Quantity needed
   - Unit cost
   - Delivery date
5. Review total cost
6. Click **Create**

### Order Status

Track order progress:
- **Draft** - Not yet sent to supplier
- **Sent** - Submitted to supplier
- **Pending** - Waiting for delivery
- **Received** - Arrived (process Receipt)
- **Cancelled** - Cancelled order

### Receiving Order

When supplier delivery arrives:

1. Go to **Purchase Orders**
2. Find order
3. Click **Receive**
4. Verify items received match order
5. Update quantities if different
6. Click **Confirm Received**

Stock levels update automatically.

### Supplier Management

Track supplier information:

1. Go to **Settings > Suppliers**
2. Add supplier:
   - Name
   - Contact info
   - Preferred products
   - Standard delivery time
   - Payment terms
3. Save

Use supplier list when creating orders.

## Product Usage & Reporting

### Sales by Product

See which products generate most revenue:

1. Go to **Analytics > Sales**
2. Select date range
3. View revenue by product
4. Sort by highest revenue
5. Filter by category

### Inventory Turnover

Understand inventory efficiency:
- Cost of goods sold per product
- Inventory holding costs
- Turn rate (how fast stock moves)

Use this to adjust ordering:
- Faster-moving items: order more
- Slow-moving items: reduce orders

### Stock-Out Reports

When inventory runs out:
- System alerts you
- Creates automatic reorder
- Affects appointment scheduling
- Patient notified of delays

Minimize stock-outs with minimum levels.

## Advanced Features

### Product Variants

Different sizes/versions of same product:

Example: Botox comes in 50U and 100U vials
1. Create base product "Botox"
2. Add variants with different prices
3. When selling, customer chooses variant

### Service Add-Ons

Offer extras during appointments:
- Premium service upgrade
- Add-on products
- Extended time

1. Mark product as "Add-On"
2. Displays as option during appointment
3. Patient selects if interested
4. Charged along with appointment

### Taxation

Handle sales tax properly:

1. Go **Settings > Tax**
2. Set tax rate (varies by location)
3. Set which products are taxable
4. Tax automatically calculated on invoices

Some products exempt (varies by location):
- Medical services (sometimes)
- Certain items
- Non-profit items

Consult with accountant for your jurisdiction.

## Advanced Inventory Features

<AccordionGroup>
  <Accordion title="Batch & Lot Number Tracking">
    Track products by batch for recalls/tracing:
    - **Batch/lot numbers** - Track which batch each product came from
    - **Batch expiration** - Different expiration per batch
    - **Batch recall** - Recall specific batch if issue found
    - **Lot rotation** - Use oldest/soonest-expiring first (FIFO)
    - **Batch sourcing** - Track which supplier each batch from

    Critical for: Cosmetics, medications, perishables, safety
  </Accordion>

  <Accordion title="Serial Number Tracking">
    For high-value items:
    - **Serial number assignment** - Unique identifier per unit
    - **Serial number warranty** - Track warranty per serial
    - **Asset tracking** - Physical location of equipment
    - **Maintenance logs** - Service history per serial
    - **Depreciation tracking** - Calculate asset value over time

    For: Expensive equipment, devices, long-term assets
  </Accordion>

  <Accordion title="Expiration Date Management">
    Automate expiration handling:
    - **Expiration date tracking** - Know when products expire
    - **Expiration alerts** - Notify when approaching expiration
    - **Expired product quarantine** - Prevent use of expired items
    - **Auto-removal** - Remove from sellable inventory at expiration
    - **Waste tracking** - Track cost of expired/damaged items

    For: Medications, skincare, perishables, any time-sensitive items
  </Accordion>

  <Accordion title="Supplier Management & Sourcing">
    Manage supplier relationships:
    - **Supplier profiles** - Contact info, payment terms, lead times
    - **Supplier comparison** - Price/quality across suppliers
    - **Preferred suppliers** - Flag primary vendors
    - **Supplier performance** - Track delivery, quality, cost
    - **Multiple suppliers per product** - Source from different vendors
    - **Vendor contracts** - Track agreements and terms

    For: Procurement, cost control, supply chain management
  </Accordion>

  <Accordion title="Damaged/Defective Stock Management">
    Handle problem inventory:
    - **Damage tracking** - Mark items as damaged/defective
    - **Return authorization** - Track supplier returns
    - **Warranty claims** - Process under warranty
    - **Scrap tracking** - Log destroyed inventory
    - **Loss documentation** - Reason codes for write-offs
    - **Claim submissions** - Track insurance/supplier claims

    For: Quality control, cost recovery, accountability
  </Accordion>

  <Accordion title="Multi-Location Inventory Transfer">
    Move stock between locations:
    - **Transfer orders** - Move inventory from location A to B
    - **Transfer tracking** - See items in transit
    - **Location reconciliation** - Balance sheet by location
    - **Stock splitting** - Divide purchase across locations
    - **Centralized vs local** - Track which location manages stock

    For: Multi-clinic operations, regional distribution
  </Accordion>

  <Accordion title="Inventory Forecasting & Demand Planning">
    Predict future needs:
    - **Usage trends** - Analyze consumption patterns
    - **Seasonal demand** - Adjust for seasonal fluctuations
    - **Reorder recommendations** - System suggests when/how much to order
    - **Lead time factors** - Account for supplier delivery times
    - **Growth projections** - Forecast based on growth
    - **Safety stock calculation** - Ensure adequate buffer

    For: Planning, avoiding stockouts, optimizing cash flow
  </Accordion>
</AccordionGroup>

## Best Practices

### Keep Prices Updated
- Review pricing regularly
- Adjust for cost increases
- Offer seasonal promotions
- Discount for packages

### Manage Inventory Levels
- Set appropriate minimums
- Don't overstock (ties up cash)
- Don't understock (turns away patients)
- Regular physical counts

### Track Costs
- Know actual cost of products
- Calculate profit margins
- Watch for waste/loss
- Adjust pricing if needed

### Organize Products
- Use clear naming conventions
- Group by category logically
- Keep descriptions updated
- Remove discontinued products

### Bundle Strategically
- Packages encourage larger purchases
- Discounted bundles increase revenue
- Memberships improve retention
- Create perceived value

## Troubleshooting

**"Stock too low, can't create charge"**
- Check minimum stock setting
- Receive more inventory
- Or temporarily reduce minimum
- Create purchase order for restock

**"Can't delete product"**
- Product in use (history or open orders)
- Archive instead of delete
- Contact support for removal

**"Price shown is wrong"**
- Check if discounts applied
- Check for variable pricing
- Verify tax is/isn't included
- Check product vs. actual price

**"Inventory count doesn't match"**
- Do physical count
- Check for unprocessed receipts
- Look for adjustment history
- Document discrepancies

## Related Features

- **Billing** - Process payments for products sold
- **Appointments** - Services often linked to appointments
- **Memberships** - Package subscriptions
- **Analytics** - Track product sales and revenue
- **Suppliers** - Manage inventory sources

For advanced inventory forecasting or multi-location inventory management, contact your account manager.
