# Email Domain Page - User Actions Guide

## Overview

The Email Domain page configures custom email domains via Mailgun for branded email sending. Add your domain, configure DNS records, and verify to send emails from your own domain.

---

## Available Actions

### 1. Add Email Domain

**Purpose:** Configure custom sending domain.

**Step-by-Step Instructions:**

1. **Navigate to Email Domain**
   - Settings → Email Domain

2. **Click "Add Domain"**

3. **Enter domain name**
   - Recommended: subdomain like mail.yourdomain.com

4. **Click "Add Domain"**

5. **DNS records displayed**

---

### 2. View DNS Records

**Purpose:** Get records to add to your DNS.

**Step-by-Step Instructions:**

1. **After adding domain**

2. **View Sending Records (required):**
   - TXT records for verification
   - DKIM records for signing

3. **View Receiving Records (optional):**
   - MX records for receiving

4. **Copy values using copy icon**

---

### 3. Verify Domain

**Purpose:** Check DNS configuration.

**Step-by-Step Instructions:**

1. **After adding DNS records**
   - At your DNS provider

2. **Click "Verify DNS"**

3. **System checks records**

4. **Status updates:**
   - Verified = checkmark
   - Pending = warning

5. **May take up to 48 hours**

---

### 4. Delete Domain

**Purpose:** Remove configured domain.

**Step-by-Step Instructions:**

1. **Click "Delete" button**

2. **Confirm deletion**

3. **Domain removed**
   - Falls back to default sending

---

## DNS Record Types

| Type | Purpose | Required |
|------|---------|----------|
| TXT | Domain verification | Yes |
| DKIM | Email signing | Yes |
| MX | Receiving email | No |
| DMARC | Spam protection | Optional |

---

## Domain States

| State | Badge | Meaning |
|-------|-------|---------|
| Active | Green | Fully verified, sending enabled |
| Unverified | Yellow | DNS not yet verified |
| Disabled | Red | Domain disabled |

---

## Verification Status

| Section | Purpose |
|---------|---------|
| Sending | Required for sending emails |
| Receiving | Optional for receiving |

---

## Recommended Setup

Use subdomain like:
- `mail.yourdomain.com`
- `notifications.yourdomain.com`

Avoid using root domain.

---

## DNS Provider Help

Links to setup guides for:
- GoDaddy
- Cloudflare
- Namecheap
- Squarespace
- Digital Ocean

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View domain | ✓ | ✓ | ✓ |
| Add domain | ✓ | ✗ | ✗ |
| Verify domain | ✓ | ✗ | ✗ |
| Delete domain | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Verification failing | Wait 24-48 hours for DNS propagation |
| Records not found | Check exact record format |
| Can't send | Ensure sending is verified |
