# Developers Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/developers/page.tsx`
**Route:** `/[tenant]/settings/developers`

---

## Overview

The Developers page provides API and integration tools including Google Tag Manager configuration, webhook management, and links to API documentation. For technical integrations.

---

## Available Actions

### 1. Configure Google Tag Manager

**Purpose:** Add GTM tracking to public pages.

**Step-by-Step Instructions:**

1. **Navigate to Developers**
   - Settings → Developers

2. **Find GTM section**

3. **Enter GTM Container ID**
   - Format: GTM-XXXXXXX

4. **Save**

5. **GTM loads on public pages**

---

### 2. Manage Webhooks

**Purpose:** Configure event notifications.

**Step-by-Step Instructions:**

1. **Find API Webhooks section**

2. **Add webhook:**
   - Enter endpoint URL
   - Select events to trigger

3. **View existing webhooks**

4. **Test webhook delivery**

5. **Delete unused webhooks**

---

### 3. View API Documentation

**Purpose:** Access API reference.

**Step-by-Step Instructions:**

1. **Click "API Documentation" link**
   - Top right

2. **Opens docs.decodahealth.com**

3. **Browse API reference**

---

## Sections

| Section | Purpose |
|---------|---------|
| Google Tag Manager | Analytics tracking |
| API Webhooks | Event notifications |

---

## GTM Container ID

Format: `GTM-XXXXXXX`

Where to find:
1. Go to tagmanager.google.com
2. Open your container
3. ID shown in header

---

## Webhook Events

Common events:
- Appointment created
- Appointment updated
- Patient created
- Payment received

---

## API Documentation

External link to:
- Authentication guide
- Endpoint reference
- Example requests
- SDK information

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View settings | ✓ | ✓ | ✗ |
| Configure GTM | ✓ | ✗ | ✗ |
| Manage webhooks | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| GTM not firing | Check container ID format |
| Webhook not receiving | Check endpoint URL |
| 401 errors | Verify authentication |
