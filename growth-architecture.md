# Growth Module Architecture

## Overview

The Growth module is a CRM and growth pipeline system built into Decoda. It tracks leads from first contact through conversion to patient, with campaign attribution and multi-channel communication history.

**Navigation:** Growth appears in the console sidebar (tenant module flag `MARKETING`) with pages such as **Campaigns**, **Leads**, and **Pipelines**.

---

## Data Model

### Entity Relationship Diagram

```
Platform ──< Campaign ──< CampaignPost ──< CampaignMedia
                │    \
                │     └──── pipeline_id ──> Pipeline
                │
                ▼
              Lead ──< LeadLog (audit trail)
               │   ──< LeadNote
               │   ──< LeadAISummary
               │   ──< LeadCommunicationIdentity
               │   ──< LeadPipeline (many-to-many junction)
               │
               ├── campaign_id ──> Campaign
               ├── pipeline_id ──> Pipeline
               ├── current_stage_id ──> PipelineStage
               ├── assigned_provider_id ──> Provider
               ├── location_id ──> Location
               └── patient_id ──> Patient (one-time handoff on conversion)

Pipeline ──< PipelineStage ──< PipelineStageAction
```

### Core Entities

#### Lead (`lead` table, prefix `led`)

The central entity. Represents a prospective patient before conversion.

| Field | Type | Description |
|-------|------|-------------|
| `first_name` | String | Required |
| `last_name` | String | Optional |
| `email` | String | Optional |
| `phone_number` | String | Optional |
| `source_detail` | String | How lead was acquired (free text) |
| `campaign_id` | FK → Campaign | Attribution |
| `location_id` | FK → Location | Required, tenant-scoped |
| `pipeline_id` | FK → Pipeline | Primary pipeline |
| `current_stage_id` | FK → PipelineStage | Current position in pipeline |
| `patient_id` | FK → Patient | Set on conversion |
| `assigned_provider_id` | FK → Provider | Owner |
| `converted_date` | DateTime | When lead became a patient |
| `lost_reason` | String | Why lead was lost |
| `notes` | Text | Quick scratchpad |
| `meta` | JSONB | Flexible extra data |

**Key relationships:** `logs` (LeadLog[]), `lead_notes` (LeadNote[]), `ai_summaries` (LeadAISummary[]), `alerts` (Alert[]), `communication_identities` (LeadCommunicationIdentity[]), `lead_pipelines` (LeadPipeline[]).

#### Pipeline (`pipeline` table, prefix `pip`)

A named funnel that defines the stages a lead progresses through.

| Field | Type | Description |
|-------|------|-------------|
| `name` | String | e.g. "New Patient Intake" |
| `description` | Text | Optional |
| `location_id` | FK → Location | Tenant-scoped |
| `is_default` | Boolean | Auto-assigned to new leads |
| `is_active` | Boolean | Soft delete |

Default pipeline (seeded in dev): New → Contacted → Consultation Booked → Showed Up → **Converted** (terminal won) → **Lost** (terminal lost).

#### PipelineStage (`pipeline_stage` table, prefix `pps`)

An ordered step within a pipeline. Unique constraint on `(pipeline_id, stage_number)`, deferrable.

| Field | Type | Description |
|-------|------|-------------|
| `pipeline_id` | FK → Pipeline | Parent |
| `name` | String | Display name |
| `stage_number` | Integer | Order in pipeline |
| `color` | String | Hex color for UI |
| `is_terminal_won` | Boolean | Marks successful conversion |
| `is_terminal_lost` | Boolean | Marks lost lead |
| `auto_convert` | Boolean | Auto-convert lead to patient on entry |

Has child `actions` (PipelineStageAction[]) for automations.

#### PipelineStageAction (`pipeline_stage_action` table, prefix `psa`)

An automation triggered when a lead enters a stage.

| Field | Type | Description |
|-------|------|-------------|
| `stage_id` | FK → PipelineStage | Parent |
| `action_type` | Enum | CREATE_TASK, SEND_SMS, SEND_EMAIL, START_SEQUENCE, ASSIGN_PROVIDER, ADD_TAG, WEBHOOK |
| `action_order` | Integer | Execution order |
| `delay_minutes` | Integer | Delay before execution |
| `config` | JSONB | Action-specific configuration |
| `is_active` | Boolean | Soft disable |

#### LeadPipeline (`lead_pipeline` table, prefix `lpp`)

Junction table enabling a lead to exist in multiple pipelines simultaneously (e.g. "New Patients" + "Weight Loss Program").

| Field | Type | Description |
|-------|------|-------------|
| `lead_id` | FK → Lead | |
| `pipeline_id` | FK → Pipeline | |
| `current_stage_id` | FK → PipelineStage | Stage within this pipeline |

#### Campaign (`campaign` table, prefix `cpn`)

A marketing campaign that generates leads.

| Field | Type | Description |
|-------|------|-------------|
| `name` | String | Campaign name |
| `description` | Text | Optional |
| `platform_id` | FK → Platform | Optional |
| `location_id` | FK → Location | Tenant-scoped |
| `is_active` | Boolean | Active/paused |
| `start_date` / `end_date` | DateTime | Campaign window |
| `budget_cents` | Integer | Budget in cents |
| `pipeline_id` | FK → Pipeline | Default pipeline for leads from this campaign |

Has child `posts` (CampaignPost[]) and `leads` (Lead[]).

#### Platform (`platform` table, prefix `ptf`)

A marketing channel (Instagram, Google Ads, Website, etc.).

| Field | Type | Description |
|-------|------|-------------|
| `name` | String | Platform name |
| `location_id` | FK → Location | Tenant-scoped |
| `url` | String | Optional |
| `icon` | String | Icon reference |
| `is_active` | Boolean | |
| `meta` | JSONB | Platform-specific config |

#### CampaignPost (`campaign_post` table, prefix `cpo`)

An individual piece of content within a campaign.

| Field | Type | Description |
|-------|------|-------------|
| `campaign_id` | FK → Campaign | Parent |
| `platform_id` | FK → Platform | Where it's published |
| `post_type` | Enum | SOCIAL_POST, AD, EMAIL, BLOG, LANDING_PAGE |
| `title` / `caption` | String/Text | Content |
| `cta_text` / `cta_url` | String | Call-to-action |
| `scheduled_date` / `published_date` | DateTime | Scheduling |
| `external_post_id` / `external_post_url` | String | Link to external platform |
| `status` | Enum | DRAFT → SCHEDULED → PUBLISHED → PAUSED → ARCHIVED |
| `creator_id` | FK → User | Who created it |

Has child `media` (CampaignMedia[]).

#### CampaignMedia (`campaign_media` table, prefix `cmd`)

Media files attached to a post, stored in GCS.

| Field | Type | Description |
|-------|------|-------------|
| `post_id` | FK → CampaignPost | Parent |
| `media_type` | Enum | IMAGE, VIDEO, DOCUMENT |
| `gcs_path` | String | Storage path |
| `file_name` / `file_size_bytes` / `mime_type` | - | File metadata |
| `duration_seconds` / `width` / `height` | - | Media dimensions |
| `thumbnail_gcs_path` | String | Thumbnail for video |
| `display_order` | Integer | Ordering |
| `alt_text` | String | Accessibility |

### Supporting Entities

#### LeadLog (`lead_log` table, prefix `llg`)

Append-only audit trail. Every mutation to a lead is recorded.

- **Actions:** CREATED, REMOVED, FIELD_CHANGED, STAGE_CHANGED, ACTION_EXECUTED, CONVERTED
- **Sources:** USER, AUTOMATION, SEQUENCE, IMPORT, API, AI_ASSISTANT
- Tracks `field_name`, `old_value`/`new_value`, `old_value_id`/`new_value_id`
- `batch_id` groups related changes in a single operation

#### LeadNote (`lead_note` table, prefix `lno`)

User-authored notes on a lead. Fields: `lead_id`, `content`, `creator_id`.

#### LeadAISummary (`lead_ai_summary` table, prefix `las`)

AI-generated lead intelligence: `summary`, `suggestions[]`, `latest_activity` digest. Supports provider feedback via `feedback_type` and `feedback_text`.

#### LeadCommunicationIdentity (`lead_communication_identity` table, prefix `lci`)

Contact channels for a lead. Unique on `(lead_id, channel, identifier)`.

- **Channels:** SMS, EMAIL, INSTAGRAM, FACEBOOK_MESSENGER, WHATSAPP
- `is_primary` marks the preferred channel per type

#### CampaignPostTemplate (`campaign_post_template` table, prefix `cpx`)

Reusable content templates with `caption_template` and `cta_url_template` supporting placeholders.

---

## Backend Architecture

### API Endpoints

All routes are prefixed with the tenant-scoped base URL. Frontend expects these under `/lead/*`:

**Leads:**
| Method | Path | Description |
|--------|------|-------------|
| GET | `/lead/list` | Paginated leads with filters |
| GET | `/lead/{leadId}` | Lead detail |
| POST | `/lead` | Create lead |
| PUT | `/lead/{leadId}` | Update lead |
| DELETE | `/lead/{leadId}` | Delete lead |
| POST | `/lead/{leadId}/convert` | Convert to patient |
| GET | `/lead/{leadId}/activity` | Audit log |
| POST | `/lead/{leadId}/note` | Add note |
| GET | `/lead/{leadId}/note` | List notes |
| GET | `/lead/{leadId}/conversations` | Unified SMS/email history |

**Pipelines:**
| Method | Path | Description |
|--------|------|-------------|
| GET | `/lead/pipeline/list` | All pipelines with stages |
| POST | `/lead/pipeline` | Create pipeline |
| PUT | `/lead/pipeline/{pipelineId}` | Update pipeline |

**Platforms:**
| Method | Path | Description |
|--------|------|-------------|
| GET | `/lead/platform/list` | All platforms |
| POST | `/lead/platform` | Create platform |
| PUT | `/lead/platform/{platformId}` | Update platform |
| DELETE | `/lead/platform/{platformId}` | Delete platform |

**Campaigns:**
| Method | Path | Description |
|--------|------|-------------|
| GET | `/lead/campaign/list` | All campaigns |
| GET | `/lead/campaign/{campaignId}` | Campaign detail |
| POST | `/lead/campaign` | Create campaign |
| PUT | `/lead/campaign/{campaignId}` | Update campaign |
| DELETE | `/lead/campaign/{campaignId}` | Delete campaign |

**Campaign Posts:**
| Method | Path | Description |
|--------|------|-------------|
| GET | `/lead/campaign/{campaignId}/post/list` | Posts for campaign |
| POST | `/lead/campaign/{campaignId}/post` | Create post |
| PUT | `/lead/campaign/{campaignId}/post/{postId}` | Update post |
| DELETE | `/lead/campaign/{campaignId}/post/{postId}` | Delete post |

### Key Services

**`decoda/services/lead.py`:**

- `create_lead_with_comms_identity()` — Creates a lead from inbound contact (SMS/email). Also creates a thin Patient record, Chat linkage, and assigns to default pipeline first stage. Logs with AUTOMATION source.
- `fire_lead_alert()` — Central alert dispatch for lead mutations.
- `get_lead_conversations()` — Merges SMS (via Chat.messages) and EMAIL (via EmailContact.lead_id → EmailParticipant → EmailMessage) into a unified timeline sorted by date.

### Dev Seed Data

`decoda/services/dev.py` → `_seed_default_pipeline()` creates a 6-stage pipeline:

1. **New** (#6B7280) — entry
2. **Contacted** (#F59E0B)
3. **Consultation Booked** (#3B82F6)
4. **Showed Up** (#8B5CF6)
5. **Converted** (#22C55E) — `is_terminal_won=True`, `auto_convert=True`
6. **Lost** (#EF4444) — `is_terminal_lost=True`

---

## Frontend Architecture

### Pages

| Route | Page | Description |
|-------|------|-------------|
| `/growth/dashboard` | Dashboard | KPI cards (New Leads, Revenue, CPA, ROI) + recent leads widget |
| `/growth/leads` | Leads | Table and grouping views |
| `/growth/campaigns` | Campaigns | Campaign management table |
| `/growth/campaigns/new` | New Campaign | Campaign creation form |
| `/settings/platforms` | Platforms | Configure ad and social platforms |

### Navigation

In `sitemap.tsx`, Growth is gated behind `PERMISSIONS.MARKETING_READ/WRITE` with module name `MARKETING`:

```
Growth
├── Campaigns     → /growth/campaigns
└── Leads         → /growth/leads
```

### Key Components

**Kanban Board** (`lead-kanban-board.tsx`):
- Drag-and-drop via `@dnd-kit`
- Columns = pipeline stages, cards = leads
- Dragging a lead between columns triggers a stage change API call
- Optimistic updates with local state reconciliation
- Click card → opens detail drawer

**Lead Detail Drawer** (`lead-detail-drawer.tsx`):
- Right-side panel opened via URL param `?leadId=`
- Three tabs: **Activity** (audit log), **Conversations** (unified SMS/email timeline), **Notes**
- Actions: Convert to Patient, Add Note
- Shows metadata, assigned provider, current stage

**Add Lead Dialog** (`add-lead-dialog.tsx`):
- Form: First Name (required), Last Name, Email, Phone, Source
- Optimistic React Query updates on submission

**Campaign Table** (`campaigns/page.tsx`):
- Columns: Name, Status, Spend, Leads, Bookings, Revenue, CPA, ROI
- Client-side filtering by status and channel
- Row actions: View, Pause/Resume, Edit

### React Query Layer

All data fetching uses React Query hooks in `leads-query.ts`:

| Hook | Key Pattern | Description |
|------|-------------|-------------|
| `useLeads(filters)` | `["leads", "list", filters]` | Paginated lead list |
| `useLead(id)` | `["leads", "detail", id]` | Single lead with detail |
| `useLeadActivity(id)` | `["leads", "activity", id]` | Audit log entries |
| `useLeadNotes(id)` | `["leads", "notes", id]` | Notes list |
| `useLeadConversations(id)` | `["leads", "conversations", id]` | Unified message history |
| `useLeadMutations()` | — | Returns `{create, update, delete, convert, addNote}` |

Pipeline, platform, and campaign data use separate hooks in `pipelines-query.ts`.

### TypeScript Types

All types live in `console/src/types/lead.ts`:

- **Lead types:** `LeadSummary`, `LeadDetail`, `LeadCreate`, `LeadUpdate`
- **Pipeline types:** `PipelineSummary`, `PipelineStageSummary`, `PipelineCreate`, `PipelineUpdate`
- **Campaign types:** `CampaignSummary`, `CampaignPostSummary`, `CampaignCreate`, `CampaignPostCreate`
- **Supporting:** `LeadConversationMessage`, `LeadLogDetail`, `PlatformSummary`
- **Enums:** `CampaignPostType`, `CampaignPostStatus`, `CampaignMediaType`, `LeadLogAction`, `LeadLogSource`
- **Params:** `LeadFetchParams` extends `PageParams` with pipeline, stage, campaign, provider, search, and conversion filters

---

## Key Flows

### Inbound Lead Creation (Automated)

```
Inbound SMS/Email
  → create_lead_with_comms_identity()
    → Create thin Patient (phone/email + source)
    → Create Chat linked to patient
    → Find default Pipeline → first stage
    → Create Lead (pipeline + stage + patient)
    → Create LeadLog (CREATED, AUTOMATION source)
    → Link Chat to Lead
    → Fire LEAD_CREATED alert
```

### Manual Lead Creation (UI)

```
User clicks "Add Lead" → fills form → submit
  → POST /lead (firstName, lastName, email, phone, source)
  → Optimistic insert into React Query cache
  → Lead appears in Kanban under first stage
```

### Lead Stage Progression (Kanban Drag)

```
User drags card from "New" to "Contacted"
  → PUT /lead/{id} { currentStageId: newStageId }
  → Create LeadLog (STAGE_CHANGED, USER source)
  → If stage.auto_convert → auto-convert to patient
  → Fire LEAD_STAGE_CHANGED alert
  → Execute PipelineStageAction automations (if any)
```

### Lead Conversion

```
User clicks "Convert to Patient" in detail drawer
  → POST /lead/{id}/convert
  → Create Patient record from lead data
  → Set lead.patient_id, lead.converted_date
  → Create LeadLog (CONVERTED, USER source)
  → Fire LEAD_CONVERTED alert
```

### Conversation History

```
User opens Conversations tab in lead drawer
  → GET /lead/{id}/conversations
  → Service merges:
      SMS: Chat → messages (via patient link)
      Email: EmailContact.lead_id → EmailParticipant → EmailMessage
  → Returns unified LeadConversationMessage[] sorted by date desc
```

---

## Gaps & Future Work

| Area | Status | Notes |
|------|--------|-------|
| Backend API routes | Not yet wired | Frontend expects endpoints; backend route registration pending |
| Pipeline stage automations | Model exists | PipelineStageAction execution engine not implemented |
| AI lead summaries | Model exists | Generation endpoint and trigger logic not built |
| Revenue attribution / analytics | Placeholder UI | KPI cards show hardcoded values; needs real calculation engine |
| Platform integrations | Model exists | Instagram, Google Ads, Facebook sync not connected |
| Multi-pipeline UI | Model supports | LeadPipeline junction table exists; UI shows single pipeline only |
| Campaign post scheduling | Model supports | `scheduled_date` field exists; publish automation not built |
| Campaign analytics | Placeholder | Spend, Bookings, Revenue, CPA, ROI columns show mock data |
