# SpaKinect GFE Sync Feature - Implementation Plan

## Overview

Add a "Sync GFEs" feature that allows users to pull all GFEs from SpaKinect for a location, preview which ones will be imported (matched to existing patients by name + DOB), and confirm the import.

---

## Phase 1: Backend - SpaKinect Client

**File:** `decoda/clients/spakinect.py`

Add new method:
```python
async def get_all_gfes_by_location(self, location_id: str) -> LocationGFEsResponse
```

**File:** `decoda/schemas/spakinect.py`

Add new response schemas:
- `LocationGFEItem` - Individual GFE from the location endpoint (gfe_id, status, patient_details, treatments)
- `LocationGFEsResponse` - Response with success, location_id, count, gfes list

---

## Phase 2: Backend - Sync API Endpoints

**File:** `decoda/apps/api/routes/spakinect/gfe.py`

Add two new endpoints:

### 1. Preview Endpoint: `GET /spakinect/gfe/location/{location_id}/sync-preview`

Returns a preview of what will happen during sync:
- Fetches all GFEs from SpaKinect for the location
- Queries existing GFEs in our DB by `spakinect_gfe_id` (to identify already-imported)
- For each new GFE, attempts to match to a patient by:
  - Exact match on `first_name` + `last_name` + `dob`
  - Fuzzy match if no exact match (optional enhancement)
- Returns categorized results:
  - `alreadyImported`: GFEs already in our system (skip)
  - `matched`: GFEs that match a patient (ready to import)
  - `unmatched`: GFEs with no patient match (cannot import)

### 2. Import Endpoint: `POST /spakinect/gfe/location/{location_id}/sync`

Request body: List of `{ spakinectGfeId, patientId }` pairs to import

For each pair:
- Create `GoodFaithExam` record linking the patient to the SpaKinect GFE
- Return success/failure for each

**File:** `decoda/schemas/spakinect_gfe.py`

Add new schemas:
- `GFESyncPreviewItem` - Preview item with GFE data + matched patient (if any)
- `GFESyncPreviewResponse` - Contains alreadyImported, matched, unmatched lists
- `GFESyncRequest` - List of gfeId/patientId pairs to import
- `GFESyncResponse` - Import results

---

## Phase 3: Frontend - API & Types

**File:** `console/src/types/spakinect.ts`

Add new types:
- `GFESyncPreviewItem` - Preview item with patient match info
- `GFESyncPreviewResponse` - Preview response
- `GFESyncRequest` / `GFESyncResponse`

**File:** `console/src/api/spakinect/gfe.ts`

Add new functions:
- `getSyncPreview(locationId)` - Fetch sync preview
- `syncGFEs(locationId, gfesToImport)` - Execute sync
- Query keys for caching
- `useSyncGFEsMutation()` hook

---

## Phase 4: Frontend - UI Components

**File:** `console/src/components/spakinect/sync-gfe-modal.tsx` (new)

Modal component with:
1. **Loading state** - Fetching preview from SpaKinect
2. **Preview state** - Shows three sections:
   - **Already Imported** (collapsed by default) - GFEs already in system, count shown
   - **Ready to Import** - GFEs matched to patients, selectable checkboxes
     - Shows: Patient name, DOB, GFE status, treatments
   - **Cannot Import** - GFEs with no patient match
     - Shows: SpaKinect patient name + DOB, reason (no matching patient)
3. **Empty state** - No new GFEs to import
4. **Confirm button** - Imports selected GFEs
5. **Success state** - Shows count of imported GFEs

**File:** `console/src/app/[tenant]/(console)/settings/locations/page.tsx`

Add "Sync GFEs" button to the dropdown menu for SpaKinect-enabled locations (next to "Edit Location" and "Delete Location").

---

## Data Flow Diagram

```
┌─────────────────┐     ┌──────────────────┐     ┌─────────────────┐
│  Locations Page │────▶│  Sync GFE Modal  │────▶│   Preview API   │
│  (Sync Button)  │     │  (Loading...)    │     │   /sync-preview │
└─────────────────┘     └──────────────────┘     └────────┬────────┘
                                                          │
                        ┌──────────────────┐              ▼
                        │  SpaKinect API   │◀────────────────────────
                        │  /gfes/{loc_id}  │  Fetch all GFEs
                        └────────┬─────────┘
                                 │
                                 ▼
                        ┌──────────────────┐
                        │  Match Patients  │  Query by name + DOB
                        │  (PostgreSQL)    │
                        └────────┬─────────┘
                                 │
                                 ▼
┌─────────────────┐     ┌──────────────────┐
│  Confirm Import │◀────│  Preview Results │
│  (User clicks)  │     │  (UI shows)      │
└────────┬────────┘     └──────────────────┘
         │
         ▼
┌─────────────────┐     ┌──────────────────┐
│   Import API    │────▶│  Create GFE      │
│   /sync         │     │  Records (DB)    │
└─────────────────┘     └──────────────────┘
```

---

## Patient Matching Strategy

For each SpaKinect GFE, match to local patients using:

1. **Primary match**: Exact match on:
   - `first_name` (case-insensitive)
   - `last_name` (case-insensitive)
   - `dob` (formatted consistently)

2. **Potential future enhancement**: Fuzzy matching or manual patient selection for unmatched GFEs

---

## Files to Create/Modify

| File | Action | Description |
|------|--------|-------------|
| `decoda/clients/spakinect.py` | Modify | Add `get_all_gfes_by_location()` method |
| `decoda/schemas/spakinect.py` | Modify | Add `LocationGFEItem`, `LocationGFEsResponse` |
| `decoda/schemas/spakinect_gfe.py` | Modify | Add sync preview/request/response schemas |
| `decoda/apps/api/routes/spakinect/gfe.py` | Modify | Add sync-preview and sync endpoints |
| `console/src/types/spakinect.ts` | Modify | Add sync-related types |
| `console/src/api/spakinect/gfe.ts` | Modify | Add sync API functions and hooks |
| `console/src/components/spakinect/sync-gfe-modal.tsx` | Create | New sync modal component |
| `console/src/app/[tenant]/(console)/settings/locations/page.tsx` | Modify | Add sync button to dropdown |

---

## API Reference

### SpaKinect External API

**Endpoint:** `GET /gfes/{location_id}`

**Response:**
```json
{
  "success": true,
  "location_id": "loc_12345",
  "count": 2,
  "gfes": [
    {
      "gfe_id": "gfe_abc123",
      "status": "Completed",
      "requested_treatments": ["treatment_1", "treatment_2"],
      "approved_treatments": ["treatment_1"],
      "conditionally_approved_treatments": [],
      "deferred_treatments": ["treatment_2"],
      "patient_details": {
        "name": "Jane Doe",
        "first_name": "Jane",
        "last_name": "Doe",
        "dob": "01/15/1990",
        "email": "jane@example.com"
      }
    }
  ]
}
```

### Internal API Endpoints

#### Preview Endpoint

**Endpoint:** `GET /spakinect/gfe/location/{location_id}/sync-preview`

**Response:**
```json
{
  "alreadyImported": [
    {
      "spakinectGfeId": "gfe_abc123",
      "status": "Completed",
      "patientDetails": { "firstName": "Jane", "lastName": "Doe", "dob": "01/15/1990" },
      "localGfeId": "gfe_xyz789"
    }
  ],
  "matched": [
    {
      "spakinectGfeId": "gfe_def456",
      "status": "Approved",
      "patientDetails": { "firstName": "John", "lastName": "Smith", "dob": "05/20/1985" },
      "requestedTreatments": ["Botox"],
      "matchedPatient": {
        "id": "pat_123",
        "firstName": "John",
        "lastName": "Smith",
        "dob": "1985-05-20"
      }
    }
  ],
  "unmatched": [
    {
      "spakinectGfeId": "gfe_ghi789",
      "status": "Pending",
      "patientDetails": { "firstName": "Unknown", "lastName": "Person", "dob": "01/01/2000" },
      "requestedTreatments": ["Filler"]
    }
  ]
}
```

#### Import Endpoint

**Endpoint:** `POST /spakinect/gfe/location/{location_id}/sync`

**Request:**
```json
{
  "gfesToImport": [
    { "spakinectGfeId": "gfe_def456", "patientId": "pat_123" }
  ]
}
```

**Response:**
```json
{
  "imported": [
    { "spakinectGfeId": "gfe_def456", "localGfeId": "gfe_newid", "patientId": "pat_123" }
  ],
  "failed": []
}
```

---

## Acceptance Criteria

### Backend

- [ ] `GET /spakinect/gfe/location/{location_id}/sync-preview` returns categorized GFEs (alreadyImported, matched, unmatched)
- [ ] `POST /spakinect/gfe/location/{location_id}/sync` creates GoodFaithExam records for provided gfeId/patientId pairs
- [ ] Patient matching is case-insensitive on first_name and last_name
- [ ] DOB matching handles format differences (MM/DD/YYYY from SpaKinect vs YYYY-MM-DD in DB)
- [ ] Duplicate imports are prevented (spakinect_gfe_id unique constraint)
- [ ] Only locations with `spakinect_location_id` can use sync endpoints
- [ ] Appropriate error responses for invalid location_id or unauthorized access

### Frontend

- [ ] "Sync GFEs" button only appears for locations with SpaKinect configured
- [ ] Modal shows loading state while fetching preview
- [ ] Already imported GFEs are shown but not selectable
- [ ] Matched GFEs show patient name, DOB, status, and treatments
- [ ] Unmatched GFEs clearly indicate why they cannot be imported
- [ ] User can select/deselect individual GFEs to import
- [ ] Confirmation shows count of GFEs to be imported
- [ ] Success state shows count of successfully imported GFEs
- [ ] Error handling for failed imports with clear error messages

### Edge Cases

- [ ] Empty state when no GFEs exist in SpaKinect for the location
- [ ] All GFEs already imported - show appropriate message
- [ ] Multiple patients match same name/DOB - handle gracefully (first match or show warning)
- [ ] SpaKinect API unavailable - show error message
- [ ] Partial import failure - show which succeeded and which failed

---

## Tests

### Backend Tests

**File:** `decoda/tests/api/test_spakinect_gfe_sync_api.py`

#### Client Tests

```python
# Test get_all_gfes_by_location returns correct structure
async def test_get_all_gfes_by_location_success()

# Test get_all_gfes_by_location handles empty response
async def test_get_all_gfes_by_location_empty()

# Test get_all_gfes_by_location handles API error
async def test_get_all_gfes_by_location_api_error()
```

#### Sync Preview Endpoint Tests

```python
# Test preview with mix of already imported, matched, and unmatched GFEs
async def test_sync_preview_categorizes_gfes_correctly()

# Test preview with all GFEs already imported
async def test_sync_preview_all_already_imported()

# Test preview with no matching patients
async def test_sync_preview_no_matches()

# Test patient matching is case-insensitive
async def test_sync_preview_case_insensitive_matching()

# Test DOB format conversion (MM/DD/YYYY to YYYY-MM-DD)
async def test_sync_preview_dob_format_handling()

# Test preview for location without spakinect_location_id returns 400
async def test_sync_preview_location_not_configured()

# Test preview for non-existent location returns 404
async def test_sync_preview_location_not_found()
```

#### Sync Import Endpoint Tests

```python
# Test successful import creates GoodFaithExam records
async def test_sync_import_creates_gfe_records()

# Test import with invalid patient_id fails gracefully
async def test_sync_import_invalid_patient_id()

# Test import with already-imported gfe_id is rejected
async def test_sync_import_duplicate_gfe_rejected()

# Test partial import (some succeed, some fail)
async def test_sync_import_partial_success()

# Test import with empty list returns empty result
async def test_sync_import_empty_list()

# Test import for location without spakinect_location_id returns 400
async def test_sync_import_location_not_configured()
```

### Frontend Tests (Optional)

**File:** `console/src/components/spakinect/__tests__/sync-gfe-modal.test.tsx`

```typescript
// Test modal renders loading state initially
it('shows loading state while fetching preview')

// Test modal renders preview with all three categories
it('renders matched, unmatched, and already imported sections')

// Test checkbox selection toggles correctly
it('allows selecting and deselecting GFEs to import')

// Test import button is disabled when nothing selected
it('disables import button when no GFEs selected')

// Test successful import shows success message
it('shows success message after successful import')

// Test error handling displays error message
it('shows error message when import fails')
```

---

## Test Data Fixtures

### Mock SpaKinect API Response

```python
MOCK_SPAKINECT_GFES = {
    "success": True,
    "location_id": "loc_test123",
    "count": 4,
    "gfes": [
        {
            "gfe_id": "gfe_already_imported",
            "status": "Completed",
            "requested_treatments": ["Botox"],
            "patient_details": {
                "first_name": "Jane",
                "last_name": "Doe",
                "dob": "01/15/1990",
                "email": "jane@example.com"
            }
        },
        {
            "gfe_id": "gfe_matched",
            "status": "Approved",
            "requested_treatments": ["Filler"],
            "patient_details": {
                "first_name": "John",
                "last_name": "Smith",
                "dob": "05/20/1985",
                "email": "john@example.com"
            }
        },
        {
            "gfe_id": "gfe_matched_case_insensitive",
            "status": "Pending",
            "requested_treatments": ["Laser"],
            "patient_details": {
                "first_name": "MARY",
                "last_name": "JONES",
                "dob": "12/25/1975",
                "email": "mary@example.com"
            }
        },
        {
            "gfe_id": "gfe_unmatched",
            "status": "Intake",
            "requested_treatments": ["Chemical Peel"],
            "patient_details": {
                "first_name": "Unknown",
                "last_name": "Person",
                "dob": "01/01/2000",
                "email": "unknown@example.com"
            }
        }
    ]
}
```

### Test Patient Fixtures

```python
# Patient that matches gfe_already_imported (and has existing GFE record)
patient_jane = Patient(first_name="Jane", last_name="Doe", dob=date(1990, 1, 15))

# Patient that matches gfe_matched
patient_john = Patient(first_name="John", last_name="Smith", dob=date(1985, 5, 20))

# Patient that matches gfe_matched_case_insensitive (different case)
patient_mary = Patient(first_name="Mary", last_name="Jones", dob=date(1975, 12, 25))

# No patient matches gfe_unmatched
```
