# Inbound Texting Assistant Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/(console)/settings/assistants/inbound-texting/page.tsx`
**Route:** `/[tenant]/settings/assistants/inbound-texting`

---

## Overview

The Inbound Texting Assistant page configures the AI that handles incoming SMS messages. Customize the assistant's name, behavior, available tools, and AI model selection.

---

## Available Actions

### 1. Edit Assistant Name

**Purpose:** Change display name.

**Step-by-Step Instructions:**

1. **Navigate to Inbound Texting**
   - Settings → Assistants → Inbound Texting

2. **Find Assistant Name field**

3. **Edit the name**

4. **Save changes**

---

### 2. Configure Behavior

**Purpose:** Customize how assistant responds.

**Step-by-Step Instructions:**

1. **Find Assistant Behaviour section**

2. **Edit custom prompt**
   - Rich text editor
   - Use @ for suggestions

3. **Describe special instructions**

4. **Save changes**

---

### 3. Select Tools

**Purpose:** Enable capabilities.

**Step-by-Step Instructions:**

1. **Find Tools section**

2. **Click dropdown**

3. **Select/deselect tools**
   - Available tools shown

4. **Selected tools as pills**

5. **Save changes**

---

### 4. Select AI Model

**Purpose:** Choose AI model.

**Step-by-Step Instructions:**

1. **Find AI Model selector**

2. **Choose model:**
   - Latest model (default)
   - Other available models

3. **Save changes**

---

## Configuration Options

| Setting | Purpose |
|---------|---------|
| Name | Assistant identifier |
| Behaviour | Custom response instructions |
| Tools | Enabled capabilities |
| AI Model | LLM to use |

---

## Available Tools

Tools for text assistant:
- Look up patient info
- Schedule appointments
- Check availability
- Send confirmations

---

## Suggestions in Prompt

Use @ in the behavior editor to:
- Insert patient variables
- Add tenant information
- Reference saved templates

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
| Assistant not responding | Check tools configured |
| Wrong responses | Review behavior prompt |
| Can't save | Check required fields |
