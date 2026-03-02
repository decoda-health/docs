# Inventory Guide

Manage your clinic's stock -- track what you have on hand, order more when supplies run low, move stock between locations, and keep your supplier contacts organized.

## Navigating Inventory

Open **Inventory** from the left sidebar. You'll see three separate pages at the top:

- **Stockroom** -- Your stock items, quantities, and alerts.
- **Purchase Orders** -- Orders you've placed with suppliers.
- **Suppliers** -- Your vendor directory with contact details.

Click the page name at the top to switch between them.

> **Note:** Products, services, and medications are configured in **Settings**, not in the Inventory section. Inventory is specifically for tracking physical stock levels, placing orders, and managing suppliers.

## Managing Stock

### Viewing Your Stock

The Stockroom page shows all your stock items in a table. Each row displays the item name, current quantity, dollar value, linked items, and earliest expiry date.

- **Status badges** appear when you've set a minimum stock level: **Low** (at or below minimum), **Critical** (25% or less of minimum), and **Out of Stock** (zero remaining).
- Use the **filter bar** to search by name, location, or category.
- Use **Group By** to organize the table by category or supplier.
- Click the **expand arrow** on a row to see a per-location breakdown of quantities.

### Creating a Stock Item

Click **Add Stock** on the Stockroom page. You have two options:

**With AI:** Upload a photo of a purchase order, receipt, or inventory list (or a CSV file). Select a supplier and location, then click **Process**. AI extracts the details for you -- review and confirm.

**Manually:** Click **Create Manually** and fill in the name, unit, category, and optional fields like minimum stock level, description, and notes. You can also link suppliers, connect to products/services/medications, and add initial shipments.

### Editing a Stock Item

Click the gear icon on any stock row and select **Edit Stock**. This opens a full editing view where you can change the name, category, unit, minimum level, linked items, suppliers, shipments, and other details.

### Drawing Down Stock

Drawing down reduces a stock item's quantity without a sale. Use this for waste, expired product, samples, or corrections.

1. Click the gear icon on a stock row and select **Drawdown Stock** (or use the drawdown option from the stock detail panel).
2. Enter the quantity to remove.
3. Add a note explaining the reason (optional but recommended).
4. Click **Draw Down**.

The reduction and your note appear in the item's activity log.

### Viewing Stock Details

Click any stock row to open the detail panel. You'll see summary statistics (total stock, stock value, and an activity chart) along with five sections:

- **Shipments** -- All shipments for this item, with quantities, costs, lot numbers, expiry dates, and SKUs.
- **Activity** -- A timeline of every inventory change (stock added, drawn down, sold, transferred, etc.).
- **Purchase Orders** -- All purchase orders associated with this item. You can also create a new purchase order from here.
- **Suppliers** -- Suppliers linked to this item, with their pricing and units of measure.
- **Linked Items** -- Products, services, and medications connected to this item, showing how many units each uses per sale.

### Linking Stock to Products, Services, and Medications

When a stock item is linked to a product, service, or medication, every sale or administration automatically reduces the stock quantity by the amount you configured.

You can create links from:
- The gear icon on a stock row (select **Link to Items**)
- The Linked Items section in the stock detail panel
- The Inventory section within a product, service, or medication editor in Settings

## Stock Transfers

Transfers let you move stock from one clinic location to another.

### Creating a Transfer

- **Single item:** Click the gear icon on a stock row and select **Transfer Stock**.
- **Bulk transfer:** Select multiple items using the checkboxes in the table (up to 25 at a time), then click **Transfer** from the bulk actions bar.

In the transfer form:
1. Choose the **From** location and the **To** location.
2. Set the quantity for each item.
3. Add notes if needed.
4. Click **Create Transfer**.

The transfer is saved as **Pending** until the receiving location confirms it.

### Reviewing and Completing Transfers

Click the **Transfers** button on the Stockroom page. A badge on the button shows how many pending transfers are waiting. The transfers panel lets you filter by status: Pending, Completed, Cancelled, or All.

- **Complete** a transfer when the stock has arrived at the destination. This updates quantities at both locations.
- **Cancel** a transfer if it's no longer needed. Cancelled transfers remain in the history.

## Purchase Orders

### Creating a Purchase Order

1. Go to the **Purchase Orders** page and click **New Purchase Order**.
2. Select a supplier. The available stock items are those linked to that supplier.
3. Add line items with quantities and costs.
4. Optionally set a lead time and add notes (default supplier notes are included automatically).
5. Save as **Pending** to edit later, or place the order immediately.

### Auto-Generating Orders

Click **Auto-Generate** on the Purchase Orders page. Select which locations to check, and the system creates one order per supplier for all items below their minimum stock level. Orders are created as Pending drafts for you to review.

### Order Statuses

| Status | Meaning |
|--------|---------|
| **Pending** | A draft order. You can still edit it. The supplier hasn't been notified. |
| **Placed** | Sent to the supplier via email with a PDF. Can no longer be edited. |
| **Completed** | All items have been received. |
| **Cancelled** | The order was cancelled permanently. |

### Taking Delivery

When a shipment arrives:
1. On a **Placed** order, click the gear icon and select **Take Delivery**.
2. Enter the quantities received for each item (plus lot numbers, expiry dates, and SKUs if applicable).
3. Confirm. Stock quantities update automatically.

You can record partial deliveries -- take delivery multiple times as items arrive. When everything has been received, the order status changes to **Completed** automatically.

### Reordering

Find a completed or cancelled order, click the gear icon, and select **Reorder**. A new order is created with the same supplier and line items pre-filled.

## Suppliers

### Adding a Supplier

1. Go to the **Suppliers** page and click **Add Supplier**.
2. Fill in the supplier name, contact details (email, phone, preferred contact method), address, website, shipment time, and default PO notes.
3. Click **Add Supplier**.

The **Shipment Time** field is flexible -- you can enter the time in minutes, hours, or days, and the system displays it in the most appropriate unit.

**Default PO Notes** are automatically added to every new purchase order for that supplier, which is useful for recurring instructions like delivery requirements.

### Editing and Archiving

- Click the gear icon on a supplier row and select **Edit** to update their details.
- Select **Archive** to remove a supplier from active lists. Their data and order history are preserved.

### Linking Suppliers to Stock

When a supplier is linked to a stock item, that item appears as an option when you create a purchase order for that supplier. You can link suppliers from the Stockroom table, the stock editor, or the stock detail panel. Each link can have supplier-specific pricing and units of measure.

## Tips

- **Set minimum stock levels** on your most-used items so you get alerts before running out.
- **Check expiry dates regularly.** Items expiring within 30 days show a warning. Use drawdowns to remove expired stock from your counts.
- **Add suppliers before stock items.** This lets you link stock to suppliers right away and makes purchase order creation easier.
- **Use transfers instead of drawdowns** when moving stock between locations. Transfers keep a clear audit trail.
- **Use auto-generate** before placing monthly orders. It catches items you might have missed and groups everything by supplier.
