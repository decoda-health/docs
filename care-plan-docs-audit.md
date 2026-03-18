# Care Plan Documentation Audit

Audited 2026-03-10 against the codebase on the `care-plans` branch.

---

## Overall Accuracy: Very High

All six documents were verified against the actual codebase (frontend components, backend services, enums, and tests). No critical accuracy issues found.

---

## Action Items (All Resolved)

### Jargon Fix

- [x] **`care-plan-templates.mdx:75`** — Changed "pill" to "button"

### Remove Redundancy

- [x] **`care-plan-templates.mdx:96-105`** — Deleted the Advanced Configuration `<AccordionGroup>` section

### Expand Thin Sections

- [x] **`care-plans.mdx:40-42`** — Expanded "From Scratch" with when-to-use guidance, same-fields clarification, and "Add Step" mention
- [x] **`care-plan-tags.mdx`** — Added "Managing Tags" section covering immutability, org-wide persistence, and picker layout

### Add Helpful Context

- [x] **`care-plans.mdx`** — Added info box: templates and assigned plans are separate
- [x] **`care-plans.mdx`** — Added progress/repeat context in Overview Tab section
- [x] ~~**`care-plan-steps.mdx`**~~ — Already addressed at line 36 (no change needed)
- [x] **`care-plan-tags.mdx`** — Clarified "automatically applied" and last-tag error timing
- [x] **`care-plan-templates.mdx:81-86`** — Added all visible columns (Name, Tags, Description, Steps, Created Date)
- [x] **`care-plan-editing.mdx`** — Added tag picker guidance (open picker, select existing, or create new)

---

## Verified Accurate (No Changes Needed)

These key claims were all confirmed against the codebase:

- All step field lists (appointment and task) match the actual components
- Measurement options (Weight, Height, Blood Pressure, Pulse, Temperature, Waist Circumference) match `MEASUREMENT_OPTIONS` in `constants.ts`
- Task status enum (Open, In Progress, Completed, Cancelled) and priority enum (Low, Normal, High, Urgent) are exact matches
- Status transition rules match `ALLOWED_TRANSITIONS` in `care_plan.py`
- Automatic status sync (appointment completed/no-show/cancelled, task completed/cancelled) matches `EVENT_STATUS_MAP` and `TASK_STATUS_MAP`
- Completed is correctly described as a terminal/irreversible status
- Progress calculation uses `repeatCount` for total (confirmed by code and commit `d2602bda3a`)
- Progress colors: green (100%), blue (in progress), gray (not started) match component styling
- "Save Changes" button disabled when no changes — confirmed
- Repeat badge ("x4") on templates — confirmed in `step-summary-tags.tsx`
- Auto-iteration spawning on completion/skip/miss — confirmed via `_spawn_next_iteration()` method
- Overdue step indicators (red alert icon + red date text) — confirmed in `step-card.tsx`
- "Assign Care Plan" and "New Template" button labels — exact matches
- "Start from scratch" option exists — confirmed
- Tag inline creation with name + color — confirmed
- At least one tag required — validated in 4 locations
- Provider notes pre-fill when scheduling from a step — confirmed (passed as `memo` URL param, auto-created as quick note in appointment form)
- Schedule Appointment button conditions (pending + has services) — confirmed
- Delete button on care plan detail page — confirmed
- Editor layout (steps left, details right) — confirmed
- Time gap buttons between steps — confirmed in `duration-connector.tsx`
- Drag handle for reordering — confirmed in `sortable-step-card.tsx`
- X button to remove steps on hover — confirmed

---

## Language & Tone

All 6 documents use plain, clinic-staff-appropriate language with zero jargon violations except the single "pill" instance noted above. Step titles describe actions, not UI elements. Terms like "modal", "dialog", "dropdown", "component", "render", "callback" are correctly avoided throughout.

---

## Per-File Summary

| File | Accuracy | Helpfulness | Key Actions |
|------|----------|-------------|-------------|
| `care-plans.mdx` | 9.5/10 | 9/10 | ~~Expand "From Scratch", add template/plan separation note, add progress/repeat context~~ Done |
| `care-plan-editing.mdx` | 9.5/10 | 9/10 | ~~Add tag picker guidance~~ Done |
| `care-plan-steps.mdx` | 9.5/10 | 9/10 | Already had scheduling difference note at line 36 |
| `care-plan-step-types.mdx` | 10/10 | 9.5/10 | No changes needed |
| `care-plan-tags.mdx` | 9.5/10 | 9/10 | ~~Add tag management info, clarify UI layout, fix vague language~~ Done |
| `care-plan-templates.mdx` | 9.5/10 | 9/10 | ~~Remove redundant section, fix "pill" jargon, expand table description~~ Done |
