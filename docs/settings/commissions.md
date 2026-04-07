# Commissions

Commission rules define how providers earn commissions on sales. Each rule specifies what gets commissioned, at what rate, and which providers are assigned. When a sale is made by an assigned provider, the system finds the most specific matching rule and calculates the payout.

**Where to find it:** Go to **Settings > Commissions**.

## The Commissions Page

The page lists all commission rules in a table with these columns:

| Column | What It Shows |
|--------|---------------|
| **Name** | The rule's name or a generated label based on its scope. |
| **Type** | The scope of the rule (All Sales, Item Type, Category, or Specific Item). |
| **Applies To** | The specific items, types, or categories covered. |
| **Rate** | The base rate (percentage or flat amount), or a count like "3 tiers" if tiered rates are configured. |
| **Providers** | The staff members assigned to this rule. |

You can filter the list by name, provider, commission type, or category using the filter bar. You can also group rules by **Provider** or **Item / Category** to see how commissions are organized.

## Create a Commission Rule

Follow these steps to create a new commission rule from start to finish.

### Step 1: Start a New Commission

1. Go to **Settings > Commissions**.
2. Click **New Commission** in the top-right corner.
3. The commission editor opens.

### Step 2: Add Basic Information

Enter an optional **Name** (for example, "Provider Sales Commission") and **Description** to identify the rule. If you leave the name blank, the system generates one from the rule's scope.

### Step 3: Choose What to Commission

Under **What to Commission**, select what the rule applies to:

- **All Sales** -- commissions on everything the provider sells.
- **Item Type** -- select one or more types (Products, Services, Medications, Service Fees, Packages, Memberships).
- **Category** -- pick a specific item category (for example, "Skincare").
- **Specific Item** -- choose one particular item or package.

### Step 4: Set the Commission Rate

Under **Commission Rate**, set the base rate as a **Percentage** (for example, 10%) or a **Flat Amount** (for example, $5.00).

To reward higher sales volume, click **Add tier** to add tiered rates. Each tier has a **Sales threshold** -- the dollar amount of sales a provider must reach before that tier's rate applies. See [Tiered Commission Rates](#tiered-commission-rates) for details on graduated vs. stepwise tiers and reset periods.

Optionally check **Deduct item cost** to calculate commissions on profit instead of the full sale price.

### Step 5: Configure Deferred Sales (Optional)

Under **Deferred Sales**, choose when commissions are paid for packages and banked items:

- **When Sold** -- paid at the time of purchase.
- **When Used** -- paid each time a service from the package is redeemed. If you choose this, also select the **Commission Payee**: the original seller or the provider who delivers the service.

### Step 6: Assign Providers

Under **Assigned Providers**, search for providers by name and select them. You can also click a team name to assign the entire team at once.

### Step 7: Save

Click **Create** to save the commission rule. It takes effect immediately for future sales by the assigned providers.

## Basic Information

Give the rule an optional **Name** and **Description** to identify it. If no name is provided, the system generates a label from the rule's scope (for example, "Services, Products" or "Skincare").

## What to Commission (Applies To)

Choose what the rule covers:

| Option | What It Does |
|--------|-------------|
| **All Sales** | Applies to every item the provider sells. |
| **Item Type** | Applies only to selected types -- Products, Services, Medications, Service Fees, Packages, or Memberships. You can select multiple types. |
| **Category** | Applies to items in a specific category (for example, "Skincare" or "Supplements"). |
| **Specific Item** | Applies to one particular item or package. |

When a sale matches multiple rules, the most specific rule wins. For example, a rule for a specific item takes priority over a rule for all sales.

## Commission Rate

Each rule needs at least one rate. You can set either:

- **Percentage** -- a percentage of the sale price (for example, 10%).
- **Flat Amount** -- a fixed dollar amount per sale (for example, $5.00).

### Deduct Item Cost

Check **Deduct item cost** if you want the commission calculated on profit (sale price minus cost) instead of the full sale price.

## Tiered Commission Rates

If you want providers to earn a higher rate after reaching a sales goal, add additional tiers.

### Add a Tier

1. Inside the Commission Rate section, click **Add tier**.
2. Set the **Sales threshold** -- the dollar amount of sales that must be reached before this tier kicks in.
3. Set the rate for this tier (percentage or flat amount).

The first tier is always the **Base rate** with no threshold. Additional tiers activate once the provider's sales reach the threshold amount.

### Graduated vs. Stepwise

When you have multiple tiers, choose how they apply:

- **Graduated** -- Each dollar of sales is commissioned at the rate of the tier it falls within. For example, if the base rate is 5% up to $5,000 and the next tier is 10% after $5,000, a $7,000 sale period pays 5% on the first $5,000 and 10% on the remaining $2,000.
- **Stepwise** -- Once a provider reaches a tier, all of their sales (including earlier ones) use that tier's rate. Using the same example, hitting $5,000 means the full $7,000 is paid at 10%.

### Tier Reset Period

Choose how often the sales total resets and providers start again from the base tier:

| Option | Resets Every |
|--------|-------------|
| **Week** | 7 days |
| **2 Weeks** | 14 days |
| **Month** | Calendar month |
| **Quarter** | Calendar quarter |
| **Year** | Calendar year |
| **Never** | Sales accumulate indefinitely |

## Deferred Sales (Packages)

When a provider sells a package or banked item, you can choose when the commission is paid:

- **When Sold** -- The commission is paid at the time of purchase.
- **When Used** -- The commission is paid later, each time a service from the package is redeemed.

If you choose **When Used**, you can also choose who earns the commission:

- **Seller** -- The provider who originally sold the package.
- **Provider** -- The provider who delivers the service at the time of redemption.

## Assign Providers

Providers must be assigned to a rule to earn commissions from it.

1. Scroll to the **Assigned Providers** section.
2. Search for providers by name and select them, or click a team name to assign the entire team at once.

## Edit a Commission Rule

Click any rule on the Commissions page to open it for editing. Make your changes, then click **Save**.

## Duplicate or Archive a Rule

Click the settings icon on any rule to:

- **Duplicate** -- Creates a copy of the rule with all its settings. You can then rename it and adjust as needed.
- **Archive** -- Removes the rule. All assigned providers are unassigned.

## Bulk Actions

Select multiple rules using the checkboxes, then use the action bar at the bottom to:

- **Assign Providers** -- Add providers to all selected rules at once.
- **Archive** -- Archive all selected rules.
