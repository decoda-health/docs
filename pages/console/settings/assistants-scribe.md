# Scribe Assistant Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/assistants/scribe/page.tsx`
**Route:** `/[tenant]/settings/assistants/scribe`

---

## Overview

The Scribe Assistant page configures the AI that generates clinical notes from audio recordings. Customize note generation behavior and AI model selection.

---

## Available Actions

### 1. Edit Assistant Name

**Purpose:** Change display name.

**Step-by-Step Instructions:**

1. **Navigate to Scribe Assistant**
   - Settings → Assistants → Scribe

2. **Edit the Assistant Name field**

3. **Save changes**

---

### 2. Configure Behavior

**Purpose:** Customize note generation.

**Step-by-Step Instructions:**

1. **Find Assistant Behaviour section**

2. **Edit custom prompt**
   - Define note structure
   - Specify medical terminology
   - Set documentation standards

3. **Use @ for suggestions**

4. **Save changes**

---

### 3. Select AI Model

**Purpose:** Choose note generation model.

**Step-by-Step Instructions:**

1. **Find AI Model selector**

2. **Choose model**

3. **Save changes**

---

## Configuration Options

| Setting | Purpose |
|---------|---------|
| Name | Assistant identifier |
| Behaviour | Note generation instructions |
| AI Model | LLM for notes |

---

## Note Generation

Scribe creates notes including:
- Chief Complaint
- History of Present Illness
- Assessment
- Plan
- Medications mentioned

---

## Suggestions in Prompt

Use @ in the behavior editor to:
- Reference patient context
- Include template variables
- Add clinic-specific formats

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View settings | ✓ | ✓ | ✗ |
| Edit settings | ✓ | ✗ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Notes incomplete | Adjust behavior prompt |
| Wrong format | Update prompt structure |
| Missing sections | Add to instructions |
