# Call Summarizer Assistant Page - User Actions Guide

## Overview

The Call Summarizer Assistant page configures the AI that generates summaries of phone calls. Customize the summary format, behavior, and AI model used for summarization.

---

## Available Actions

### 1. Edit Assistant Name

**Purpose:** Change display name.

**Step-by-Step Instructions:**

1. **Navigate to Call Summarizer**
   - Settings → Assistants → Call Summarizer

2. **Edit the Assistant Name field**

3. **Save changes**

---

### 2. Configure Behavior

**Purpose:** Customize summary format.

**Step-by-Step Instructions:**

1. **Find Assistant Behaviour section**

2. **Edit custom prompt**
   - Define summary structure
   - Specify key information to extract

3. **Use @ for suggestions**

4. **Save changes**

---

### 3. Select AI Model

**Purpose:** Choose summarization model.

**Step-by-Step Instructions:**

1. **Find AI Model selector**

2. **Choose model**

3. **Save changes**

---

## Configuration Options

| Setting | Purpose |
|---------|---------|
| Name | Assistant identifier |
| Behaviour | Summary format instructions |
| AI Model | LLM for summarization |

---

## Summary Output

Call summaries include:
- Main topics discussed
- Action items
- Key patient information
- Follow-up required

---

## Suggestions in Prompt

Use @ in the behavior editor to:
- Reference call variables
- Include standard formats
- Add clinic-specific terms

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
| Summaries too short | Adjust behavior prompt |
| Missing information | Add to prompt instructions |
| Can't save | Check required fields |
