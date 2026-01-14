# Invoice Page - User Actions Guide

## Overview

The Invoice page displays a formatted invoice for a patient charge. It renders a printable invoice with practice branding, patient information, itemized charges, and payment instructions.

---

## Available Actions

### 1. View Invoice Details

**Purpose:** Review the complete invoice information.

**Step-by-Step Instructions:**

1. **Access the invoice**
   - Open the invoice URL (typically received via email/SMS)
   - URL contains all invoice parameters

2. **Review invoice sections:**

   **Header:**
   - Practice logo and name
   - Invoice number
   - Invoice date

   **From (Practice) Information:**
   - Practice name
   - Practice address
   - Contact information

   **To (Patient) Information:**
   - Patient name
   - Patient address
   - Account number

   **Itemized Charges:**
   - Service/product name
   - Quantity
   - Unit price
   - Line total

   **Totals:**
   - Subtotal
   - Adjustments (if any)
   - Total due

---

### 2. Print Invoice

**Purpose:** Generate a physical copy of the invoice.

**Step-by-Step Instructions:**

1. **Use browser print function**
   - Press `Ctrl/Cmd + P`
   - Or click browser menu → Print

2. **Configure print settings:**
   - Select printer
   - Choose paper size (Letter recommended)
   - Enable "Background graphics" for full branding

3. **Print the document**
   - Click "Print" to send to printer

---

### 3. Save as PDF

**Purpose:** Download a digital copy of the invoice.

**Step-by-Step Instructions:**

1. **Open print dialog**
   - Press `Ctrl/Cmd + P`

2. **Select "Save as PDF"**
   - Choose destination: "Save as PDF"
   - Or "Microsoft Print to PDF" on Windows

3. **Save the file**
   - Choose save location
   - Name the file
   - Click "Save"

---

### 4. Access Payment Link

**Purpose:** Navigate to pay the invoice online.

**Step-by-Step Instructions:**

1. **Locate the payment link**
   - Usually at the bottom of the invoice
   - Or as a prominent "Pay Now" button

2. **Click the link**
   - Opens the payment page
   - Patient can pay the balance

---

## Display Modes

### Digital Invoice
- Optimized for screen viewing
- Interactive payment link
- Responsive layout

### Print Invoice
- Optimized for printing
- High-contrast for readability
- Standard paper formatting

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Invoice not loading | Check URL parameters are complete |
| Missing items | Verify items JSON is valid |
| Location not found | Check location_id parameter |
| Print cuts off content | Adjust print margins |
