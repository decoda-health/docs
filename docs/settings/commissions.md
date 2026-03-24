# Commission Structures

Commission structures define how providers earn commissions on sales. Each structure contains a set of rules and a list of assigned providers. When a sale is made by an assigned provider, the system finds the most specific matching rule and calculates the payout.

**Where to find it:** Go to **Settings > Commissions**.

## Create a New Structure

1. Click **New Structure**.
2. Enter a **Name** (required) and an optional **Description**.
3. Add one or more commission rules (see below).
4. Assign providers to the structure.
5. Click **Create**.

## Commission Rules

Rules define what gets commissioned and at what rate. Each rule has a scope, a rate, and optional tier settings.

### Add a Rule

1. In the commission structure editor, click **Add Rule**.
2. A panel opens where you configure the rule.

### Rule Scope (Applies To)

Choose what the rule covers:

| Option | What It Does |
|--------|-------------|
| **All Sales** | Applies to every item the provider sells. |
| **Item Type** | Applies only to selected types -- Products, Services, Medications, Service Fees, Packages, or Memberships. You can select multiple types. |
| **Category** | Applies to items in a specific category (for example, "Skincare" or "Supplements"). |
| **Specific Item** | Applies to one particular item or package. |

When a sale matches multiple rules, the most specific rule wins. For example, a rule for a specific item takes priority over a rule for all sales.

### Set the Commission Rate

Each rule needs at least one rate. You can set either:

- **Percentage** -- a percentage of the sale price (for example, 10%).
- **Flat Amount** -- a fixed dollar amount per sale (for example, $5.00).

### Deduct Item Cost

Check **Deduct item cost** if you want the commission calculated on profit (sale price minus cost) instead of the full sale price.

## Tiered Commission Rates

If you want providers to earn a higher rate after reaching a sales goal, add additional tiers.

### Add a Tier

1. Inside a rule, click **Add tier**.
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

When a provider sells a package, you can choose when the commission is paid:

- **When Sold** -- The commission is paid at the time of purchase.
- **When Used** -- The commission is paid later, each time a service from the package is redeemed.

If you choose **When Used**, you can also choose who earns the commission:

- **Seller** -- The provider who originally sold the package.
- **Provider** -- The provider who delivers the service at the time of redemption.

## Assign Providers

Providers must be assigned to a structure to earn commissions from it. Each provider can only belong to one structure at a time.

1. Scroll to the **Assigned Providers** section.
2. Search for providers by name and select them, or click a team name to assign the entire team at once.
3. If a provider is already assigned to another structure, their name shows which structure they currently belong to. Assigning them here moves them from the old structure.

## Edit a Structure

Click any structure on the Commissions settings page to open it for editing. Make your changes, then click **Save**.

## Duplicate or Delete a Structure

On the Commissions settings page, click the settings icon on any structure to:

- **Duplicate** -- Creates a copy of the structure with all its rules. You can then rename it and adjust as needed.
- **Delete** -- Permanently removes the structure. All assigned providers are unassigned.
