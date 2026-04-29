# Accrual Accounting — Decision & Scope

## The Problem

We recognize revenue when we get paid, not when we earn it. A $1000 package purchase shows as $1000 revenue immediately, but the patient has 10 visits they haven't taken. A $200 membership payment is counted as $200 revenue, but we owe the patient credits, appointments, and discounts.

## Two Approaches Were Evaluated

### Option A: Query-based attribution (~800–1,000 lines)

Derive accrual numbers from existing billing models at query time. Add a `source_type` enum to `PatientCredit` so credit sources are formally tracked. No new tables for accounting — just reporting logic on existing data.

### Option B: General ledger (~7,500 lines)

Write journal entries at event time. 3 new tables (`GLAccount`, `JournalEntry`, `JournalLine`), hooks into every billing event, daily batch jobs, historical backfill. Reports sum pre-recorded entries instead of deriving from source.

A detailed GL plan was produced (`accrual-accounting-plan.html`) — 21 scenarios, lifecycle flows, chart of accounts, migration phases. It's thorough, careful work. But after evaluating both approaches against what we actually need, the query-based approach is the right call. Here's why.

## The core question: what are we actually solving?

A clinic owner asking "how much of my revenue is still owed?" needs revenue attribution — what's been delivered vs what's still deferred. They don't need double-entry bookkeeping.

The GL discussion conflates two distinct problems:

**Issue 1: Revenue attribution (our actual need).** When a membership/package is purchased, how much is real revenue vs still owed? This is answerable from existing data: total collected minus what's been delivered = deferred.

**Issue 2: Data integrity infrastructure (what the GL mostly solves).** Immutable audit trail, reconciliation, handling combinatorial edge cases (partial refund on frozen membership with fee override). These make the platform more robust but are separate from the attribution question.

The GL's strongest arguments — reconciliation catches wrong numbers, immutable entries, absorbing schema complexity, testing isolation — are about Issue 2. We need Issue 1.

## Why the GL is more than we need right now

### The balancing invariant doesn't catch the errors that matter

The GL's central promise is `sum(debits) == sum(credits)`. That invariant passes perfectly when:

- A hook misclassifies $150 of deferred revenue as immediate revenue (wrong account, still balances)
- A hook allocates wrong amounts per line item (wrong split, still balances)
- A hook fires twice due to a retry (duplicate entries, each balances individually)
- A hook never fires because a new billing path missed it (no entry at all, global balance unaffected)

The errors that matter are classification and logic errors — and those require reconciliation checks that work just as well against query outputs as against GL balances.

### The balancing invariant creates false confidence

A balanced ledger feels correct, which makes bugs harder to catch. Concrete example:

A $200 service + $20 tax = $220 charge. Patient pays in full. Later the clinic issues a $55 partial refund (billing error — service should have been $150 + $15 tax = $165). The `Charge` model correctly recalculates totals.

The GL refund hook reads `refund.amount` ($55) and records it as a straight revenue reversal. But $5 of that refund is a tax correction, not revenue. Here's what the ledger looks like:

| # | Event | Account | Debit | Credit | Balanced? |
|---|-------|---------|-------|--------|-----------|
| 1 | Charge created | A/R (1200) | $220 | | |
| 1 | | Revenue (4010) | | $200 | |
| 1 | | Sales Tax (2400) | | $20 | **Yes** |
| 2 | Payment | Cash (1100) | $220 | | |
| 2 | | A/R (1200) | | $220 | **Yes** |
| 3 | Partial refund | Refunds (5100) | $55 | | |
| 3 | | Cash (1100) | | $55 | **Yes** |

Every entry balances. Trial balance:

| Account | Balance |
|---------|---------|
| Cash | $165 |
| A/R | $0 |
| Revenue | $200 |
| Refunds | -$55 |
| Sales Tax | **$20** |
| **Total** | **$0** ← balanced |

Looks clean. But Sales Tax payable should be $15 (not $20) and net revenue should be $150 (not $200 - $55 = $145). The GL is wrong on both counts, and the balanced trial balance hides it completely.

The source models (`Charge.total = $165`, `Charge.tax = $15`) were correct the entire time.

### The GL is a hand-maintained materialized view

The database should model reality — a charge was created, a payment was applied, a credit was issued, a package item was redeemed. A general ledger with debits and credits is a *presentation format* for financial reporting. Those are different things.

The fundamental principle of good database design is: record each fact once, in one place. The `Charge` model already records the charge. The `Payment` model already records the payment. The `Refund` model already records the refund. The GL re-records all of these a second time in a different format — and now you have two places that can be wrong instead of one. When they disagree (and they will), you trust the source models anyway. So why maintain the copy?

The GL plan essentially proposes a materialized view of billing data in double-entry format, maintained via 19–20 application hooks. That's the worst version of a materialized view — all the drift risk with none of the database-level guarantees. If a literal ledger view is ever needed for accountants or exports, it can be constructed at query time from the source models.

### Complexity isn't eliminated, just relocated

The GL plan shows an ~80-line CTE for membership revenue and flags it as too complex. Fair — but the GL doesn't eliminate that complexity, it moves it into hooks spread across `billing.py`, `membership.py`, `discount_utils.py`, `package.py`, and webhook handlers. The membership math is the same either way. The question is whether you want that logic in one place (a query/view) or scattered across 7+ files that all have to fire correctly on every event, forever.

The GL plan's own "Smart Queries Played Out" section shows package revenue as "manageable" and credit liability as "simple." The only hard one is membership ratable recognition — and that's solvable with a SQL view or a targeted fix (adding cycle boundary fields), not a full accounting system.

## Responding to the GL plan's specific arguments

### "Queries can't provide an audit trail"

The GL plan claims queries can only answer "what's deferred today" but not "walk me through how this $500 package was recognized over 6 months." The existing models already have timestamps on every event:

- `PatientCredit.created_date` — when credit was issued
- `PatientCreditToPayment.created_date` — when credit was spent
- `DiscountUse.created_date` — when a package/membership item was redeemed
- `Charge.created_date` — when billing happened
- `PatientCredit.expiry_date` — when credit expired

Reconstructing a $500 package's recognition over 6 months is: `SoldPackage` (purchase date + price) → `DiscountUse` records over time (each redemption timestamped) → proportional math at each point. The source models *are* the event log. `DiscountUse` is literally "patient redeemed item at time T." `PatientCreditToPayment` is literally "credit was spent at time T."

The only scenario where reconstruction breaks is if someone mutates historical records. But if that's happening, the GL would be wrong too — it was written based on the original values.

### "Trial balance / balance sheet not possible without GL"

A trial balance is just account balances at a point in time. We can construct it:

- **Cash & Bank**: `Payment` amounts by date
- **Accounts Receivable**: `Charge.total_outstanding` as of date
- **Deferred Revenue**: package/membership charges minus recognized amounts as of date
- **Patient Credit Liability**: `PatientCredit.amount_remaining` as of date
- **Revenue**: sum of recognized revenue by type and date

These are the same numbers the GL would store — just derived at query time instead of pre-computed. A balance sheet is a presentation of these balances, not a data structure.

### "AI analytics is simpler with GL"

The GL plan argues Gemini would struggle to write complex CTEs but could easily query `SELECT sum(credit) WHERE account = 'REVENUE'`. This is true for the raw query shape, but:

- We control the AI analytics prompts. We can wrap complex queries in SQL views or functions and teach Gemini to reference those — same simplicity as querying GL tables.
- If the GL has a bug (missed hook, wrong classification), the AI gives confidently wrong answers with no way to detect it. Query-based: the AI hits the source of truth every time.

### "Reconciliation isn't possible without GL"

The GL plan claims "Can't verify — no stored state to compare against." But reconciliation is comparing two sources. With queries, you reconcile against payment processor records (Rainforest deposits vs our `Payment` totals), bank statements, and internal consistency checks (`Charge.total_outstanding` matches sum of unpaid `ChargePayments`). These cross-system checks catch real errors. The GL only lets you reconcile the GL against source tables — which is checking your copy against the original. If they disagree, you trust the original anyway.

### "Logic is written once, read everywhere"

The GL plan argues centralizing logic in `LedgerService` means it's written once. But the GL doesn't *contain* logic — it contains the *output* of logic that ran in hooks. The hooks themselves are the logic, and they're spread across 7+ files. If recognition logic changes, you update the hooks *and* potentially backfill/correct existing journal entries. With queries, you update the query — the source data doesn't change.

## Cost comparison

| | GL Plan | Query Approach |
|---|---------|------------|
| New lines of code | ~7,500 | ~800–1,000 |
| New files | ~18–20 | ~4 |
| Hook points in existing services | 19–20 | 0 |
| Historical backfill | ~90K+ journal entries across all tenants | None |
| Ongoing maintenance | Every new billing feature needs a hook | None |
| Drift risk | Silent if hook missed | Can't drift (derives from source) |
| Edge case ceiling | Handles audit/compliance queries | Handles "what's deferred today" |

## What we're building

Separate membership and package purchases from everything else. These are purchases where the value hasn't been fully delivered yet — they're deferred revenue. Everything else (POS sales, products, services) is immediate revenue.

### 1. Credit source tracking

Add `source_type` enum to `PatientCredit` (`MEMBERSHIP`, `MANUAL`, `OVERPAYMENT`, `REFUND`). Today, non-membership credits are only distinguishable by parsing `comment` strings (`billing.py:1021-1027`, `billing.py:2495-2501`). A formal field makes reporting reliable.

### 2. Reporting that separates immediate vs deferred revenue

Query logic on existing data, not new tables.

### 3. Credit expiry = revenue recognition

Expired membership/overpayment credits become recognized revenue. Expired compensation credits do not. `source_type` enables this distinction.

### Implementation effort

~800–1,000 new lines of code. 4 new files, 7 modified files. 6 places that create `PatientCredit` need to set `source_type`. No backfill, no hooks, no ongoing maintenance.

## What existing data supports

Verified against the codebase:

- **Package deferred revenue**: `SoldPackage` → `Discount` (via `sold_package_id`) → `DiscountUse` gives items included, items used, and proportional remaining value. `Discount.quantity` = total items, `Discount.quantity_remaining` = remaining (`discount_utils.py:625-659`). Purchase price from `ChargeItems` via `SoldPackage.charge_item_id`. **Solid.**

- **Credit liability**: `PatientCredit.amount_remaining` where not expired. **Simple and reliable.**

- **Standard POS revenue**: `Charge` + `ChargeItems` for non-membership, non-package sales. **Already correct.**

- **Membership deferred revenue**: Derivable from `Member` + `Membership` + `Charge` (where `member_id` is set) + `PatientCredit` + `DiscountTemplate`. Total billed minus credits used minus services used = deferred. **Works for the common case.** Edge case: frozen members break `next_billing_date` math (`membership.py:646-710` sets `next_billing_date` to `unfreeze_date` or `None` on freeze, losing original cycle boundary).

## Schema verification (with code evidence)

| Claim | Verified? | Evidence |
|-------|-----------|----------|
| `is_prepayment` reliably set | **No** — package templates set it (`packages.py:123`), membership templates don't (`memberships.py:106-112`). Defaults to `False`. | Membership discounts silently look like non-prepayments. Doesn't block our approach since we separate by `member_id`/`sold_package_id`, not `is_prepayment`. |
| Cycle boundaries derivable | **Mostly** — works for active members. Frozen members lose cycle start (`membership.py:646-710`). | Edge case, not a blocker for reporting current deferred amounts. |
| Package composition tracked | **Yes** | `Discount.quantity`, `quantity_remaining`, `DiscountUse` consumption tracking (`discount_utils.py:625-659`). |
| Credit source identifiable | **No** — membership credits have `member_id`. Everything else relies on `comment` strings. | This is why `source_type` is needed. |

## Where the GL plan is stronger (acknowledged)

The GL plan is thorough, careful work — 21 scenarios, lifecycle flows, a well-designed chart of accounts. Two areas where it has a genuine edge:

- **AI analytics simplicity** — `SELECT sum(credit) WHERE account = 'REVENUE'` is genuinely simpler than complex CTEs. Our counter (SQL views + teaching Gemini to reference them) is adequate but not as clean.
- **Future financial reporting** — if Decoda ever needs formal financial statements for accountants or auditors, the GL architecture is the right foundation. That's not today's need, but it's real.

## Potential improvements (not blockers)

- **Fix `is_prepayment` on membership templates** — set it correctly on creation. Small fix, makes future queries easier.
- **Membership cycle boundaries** — add `cycle_start_date`/`cycle_end_date` to handle frozen member edge cases cleanly.
- **Historical timestamps** — on `PatientCreditToPayment`, cancellation timestamps on `SoldPackage`. Enables point-in-time queries if needed later.
- **General Ledger** — if attribution needs grow into audit/compliance territory, layer a GL on top of proven query logic. The GL plan's design is solid and can be adopted later without throwaway work.
