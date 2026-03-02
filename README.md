# Decoda Documentation Revamp: Implementation Strategy & Principles

This document serves as the foundational guide for the documentation overhaul. The goal is to replace "useless" user docs with a high-signal, journey-based system using Mintlify.

## 1. Tone & Voice Principles
**CRITICAL: These are HELP guides, not Developer Docs.** The primary audience is clinical and administrative staff.
- **Non-Developer Friendly:** Use simple, accessible language. Avoid technical jargon, database terms, or backend explanations. (e.g., Do not explain how the "Auth Module" works or how APIs connect; just explain how a user logs in or resets their password).
- **Usage Over Architecture:** Focus entirely on *workflows and usage*—what buttons to click, what fields mean, and how to achieve a goal. Do not explain *how* the technology works under the hood.
- **Direct Action:** Use imperative verbs (e.g., "Configure," "Process," "Create") for headings and task lists.
- **No Fluff:** Eliminate greetings (e.g., "Welcome to..."), transitions, and marketing-speak.
- **Objective Clarity:** Every sentence must either help a user achieve a specific goal or explain a necessary concept.

## 2. Structure: The Journey-Based Architecture
Group documentation by user intent and **Persona** rather than just feature name.

### Tab A: Role-Based Onboarding (New Users)
Provide dedicated "First 24 Hours" `<Steps>` flows tailored to the user's actual job:
- **Front Desk:** Focus on day-to-day operations (Scheduling, Billing/Checkout, Forms, Patient Check-In).
- **Providers:** Focus on clinical workflows (AI Notes, Clinic Info, Forms, Calendar management).
- **Owners / Admins:** Focus on high-level setup and insights (Analytics/Dashboards, Permissions/Roles, Services, Products, Org Setup).

### Tab B: Module Deep Dives (Standard/Pro Users)
Every module must follow a consistent template to ensure familiarity:
1. **Module Overview:** Single sentence definition of the module's utility.
2. **Key Action Cards:** `<CardGroup>` for the most frequent tasks (e.g., "Process Payment").
3. **Core Workflows:** Bulleted list of standard task-oriented guides.
4. **Advanced Configuration:** `<AccordionGroup>` containing pro-user edge cases, complex settings, and troubleshooting. This keeps the page scannable for new users while remaining searchable for power users.

### Tab C: API & Integration (Pro Users/Developers)
- **API Guides:** Webhooks, auth, and common integration patterns.
- **API Reference:** Automated documentation from `openapi.yaml`.

## 3. Handling Module Dependencies
Since Decoda is highly modular, address cross-dependencies without derailing the current task.
- **The "Prerequisites" Callout:** Use Mintlify `<Info>` blocks at the top of guides to link to required setup in other modules.
- **Visual Mapping:** Use Mermaid.js (```mermaid```) to visualize complex cross-module workflows (e.g., the flow from Form Intake to Billing).

## 4. Mintlify Feature Utilization
- **`<Steps>`:** Mandatory for onboarding and multi-part setup guides.
- **`<CardGroup>`:** Use for primary navigation on module landing pages and persona routing.
- **`<Accordion>`:** Used for "Progressive Disclosure"—hiding technical complexity until requested.
- **`<Tabs>`:** Use for role-based instructions within a single guide (e.g., `<Tab title="Front Desk">` vs. `<Tab title="Owner">`).

## 5. Sample Module Template (High Signal)

```mdx
---
title: 'Billing & Payments'
description: 'Manage invoices, process patient payments, and track revenue.'
---

The Billing module handles all financial transactions within Decoda.

<CardGroup cols={2}>
  <Card title="Process a Payment" icon="credit-card" href="/billing/quick-start">
    Step-by-step guide to charging a patient.
  </Card>
  <Card title="Configure Payment Devices" icon="plug" href="/billing/devices">
    Setup instructions for Lane 3000, 7000, and Link 2500 terminals.
  </Card>
</CardGroup>

## Core Workflows
* [Create an Intelligent Invoice](/billing/invoices)
* [Process a Refund](/billing/refunds)
* [Configure the Tip Screen](/billing/tips)

## Advanced Configuration
<AccordionGroup>
  <Accordion title="Configure Custom Tax Rates">
    Managing multi-jurisdiction tax settings.
  </Accordion>
  <Accordion title="Reconcile Cash Balance Discrepancies">
    Resolving end-of-day drawer shortages or overages.
  </Accordion>
</AccordionGroup>
```

## 6. Phased Rollout Strategy
To manage module overlap and ensure scalable documentation, the revamp will follow a strict phased approach.

### Phase 1: Core Module MVP (The "Lego Blocks")
Build the foundational, objective documentation for individual modules without worrying about complex cross-linking. Define clear module boundaries. Create high-signal, standalone task guides (e.g., "Process a Payment").

#### Phase 1 TODOs:
- [x] **Settings & Org Setup (Massive Module):** Needs its own dedicated sub-structure due to depth.
    - [x] General Preferences & Branding
    - [x] Locations & Facilities
    - [x] Users, Roles & Permissions
    - [x] Services
    - [x] Categories
    - [x] Notifications & Alerts
- [x] **Patient Management:** (Creating/Editing patients, Merging duplicates, Viewing the chart).
- [x] **Scheduling:** (The Calendar, booking appointments, shifting, modifying).
- [x] **Billing & Payments:** (Carts, Checkout, Payment Devices, Invoicing).
- [x] **Forms & Intake:** (Sending forms, managing submissions).
- [x] **Notes & Scribe:** (AI Notes generation, Charting workflows).

### Phase 1.5: Remaining Module Docs
The remaining modules that have now been documented as part of the core platform revamp.

- [x] **Communications (Chat & Calls):** Two-way SMS/text messaging with patients (threaded conversations, AI-assisted replies). VoIP calling via Signalwire (live caller display, transcripts, AI call assistance). Gated by `TEXTING` and `CALLING` module flags.
- [x] **Analytics:** Built-in reporting dashboards — appointment volume, product sales, payment breakdowns, provider earnings, membership performance, note activity, payment plan tracking, patient demographics. Owner/admin focused.
- [x] **Inventory:** Stock levels and reorder management, purchase orders with supplier tracking, supplier directory. Gated by `INVENTORY` module flag.
- [x] **Check-In & Front Desk:** The check-in dashboard (today's appointments, waiting room status), clock-in/out time tracking for staff, shift management calendar. Overlaps with Scheduling but has its own views. Gated by `CLOCK_IN` and `CALENDAR_PATIENT_STATUS` flags.
- [x] **Usage & Subscription:** Platform consumption dashboard for account owners — AI minutes, SMS volume, usage charts, payment method management for the Decoda subscription itself.

### Phase 2: Persona-Specific Journeys (The "Assembly")
Build the onboarding paths for the 3 core personas. These guides act as a "Table of Contents" that string together the core modules from Phase 1 into a cohesive workflow.
- [ ] **Front Desk:** Daily operations, Check-in/Checkout, Scheduling.
- [ ] **Providers:** Clinical workflows, AI Notes, Charting.
- [ ] **Owners/Admins:** System configuration, Analytics, Device Setup.

### Phase 3: Cross-Module Integrations
Document the complex "web" of the platform.
- [ ] **Automated Workflows:** Data flowing between modules (e.g., Intake Forms mapping to Patient Demographics and triggering Billing).
- [ ] **Integrations:** (e.g., SpaKinect Good Faith Exams).

### Reusability (Mintlify Snippets)
For tasks that span multiple modules or personas (e.g., "How to search for a patient"), create reusable MDX Snippets (`docs/snippets/`) to maintain a single source of truth.

## 7. Target Directory Structure (Proposed)
The physical file organization should mirror the logical navigation architecture.

```text
docs/
├── personas/            # Tab A: Role-Based Onboarding
│   ├── front-desk/
│   ├── providers/
│   └── owners/
├── modules/             # Tab B: Core Module Deep Dives
│   ├── billing/
│   ├── scheduling/
│   ├── patients/
│   ├── notes/
│   ├── forms/
│   ├── settings/
│   ├── comms/           # Chat & Calls
│   ├── analytics/
│   ├── inventory/
│   └── check-in/        # Front desk dashboard, clock-in, shifts
├── integrations/        # Tab C: Cross-module workflows & Webhooks
├── api-reference/       # Auto-generated API endpoints
├── snippets/            # Reusable MDX components
├── images/              # Assets
└── docs.json            # Navigation configuration
```
