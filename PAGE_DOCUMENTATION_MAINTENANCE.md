# Page Documentation Maintenance Guide

This document describes the process for maintaining and regenerating the page documentation for the Decoda healthcare platform.

---

## Documentation Structure

The page documentation consists of two complementary parts:

### 1. Centralized Overview (`docs/PAGE_DOCUMENTATION.md`)
- Single file covering all pages
- Brief description of each page's purpose
- Quick reference for navigation
- Table of contents organized by module

### 2. Individual Action Guides (`docs/pages/console/**/*.md`)
- One markdown file per page
- Detailed step-by-step user actions
- Permission tables by role
- Troubleshooting sections

---

## Finding All Pages

All pages in the Next.js applications follow the App Router convention with `page.tsx` files.

### Console Application
```bash
# Find all Console pages
find console/src/app -name "page.tsx" | wc -l

# List all page paths
find console/src/app -name "page.tsx" | sort
```

### Current Page Count (as of last update)
- **Console:** 84 pages

---

## Documentation Template

Each individual page documentation file should follow this template:

```markdown
# [Page Name] Page - User Actions Guide

## Overview

[1-2 sentence description of what the page does and who uses it]

---

## Available Actions

### 1. [Action Name]

**Purpose:** [Why a user would do this]

**Step-by-Step Instructions:**

1. **[Step 1]**
   - Details

2. **[Step 2]**
   - Details

---

## [Relevant Tables/Data Structures]

| Column/Field | Description |
|--------------|-------------|
| ... | ... |

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| ... | ✓ | ✓ | ✗ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| ... | ... |
```

---

## Regeneration Process

### Step 1: Identify Changed/New Pages

```bash
# Find pages modified since a date
find console/src/app -name "page.tsx" -newer docs/PAGE_DOCUMENTATION.md

# Or compare against git
git diff --name-only HEAD~10 | grep "page.tsx"
```

### Step 2: Read the Page Source

For each page, read:
1. The `page.tsx` file itself
2. Key components imported by the page
3. Any hooks or context providers used
4. API calls and mutations

### Step 3: Identify User Actions

Look for:
- Button click handlers (`onClick`)
- Form submissions (`onSubmit`, mutations)
- Navigation links (`ProgressBarLink`, `Link`)
- Modal triggers (`useState` for `isOpen` patterns)
- Table row actions (dropdown menus)
- Filter/sort capabilities
- CRUD operations

### Step 4: Document Each Action

For each action:
1. Describe the purpose
2. Write step-by-step instructions
3. Note any prerequisites or permissions
4. Identify edge cases or error states

### Step 5: Update Both Documentation Files

1. Update the individual page file in `docs/pages/console/[module]/[page].md`
2. Update the overview in `docs/PAGE_DOCUMENTATION.md` if the page purpose changed

---

## File Organization

```
docs/
├── PAGE_DOCUMENTATION.md              # Centralized overview
├── PAGE_DOCUMENTATION_MAINTENANCE.md  # This file
└── pages/
    └── console/
        ├── analytics/
        │   └── create.md
        ├── billing/
        │   ├── carts.md
        │   ├── invoices.md
        │   └── ...
        ├── check-in/
        ├── comms/
        ├── inventory/
        ├── patient/
        ├── public/
        ├── scribe/
        └── settings/
            ├── assistants-inbound.md
            ├── assistants-outbound.md
            └── ...
```

---

## Key Patterns to Document

### Common UI Patterns

| Pattern | What to Document |
|---------|------------------|
| Data tables | Columns, sorting, filtering, pagination, row actions |
| Forms | Fields, validation, submission behavior |
| Modals/Dialogs | Trigger actions, form fields, confirmation steps |
| Tabs | Tab names, content per tab |
| Search/Filter | Filter options, search behavior |
| Bulk actions | Selection, available bulk operations |

### Common Actions

| Action Type | Look For |
|-------------|----------|
| Create | "Add", "Create", "New" buttons, POST mutations |
| Read | Tables, detail views, fetch queries |
| Update | "Edit", "Save" buttons, PUT/PATCH mutations |
| Delete | "Delete", "Remove" buttons, DELETE mutations, confirmation modals |
| Export | "Export", "Download" buttons |
| Import | "Import", "Upload" file inputs |

---

## Prompt for AI Regeneration

When using an AI assistant to regenerate documentation, use this prompt:

```
Read the page.tsx file at [PATH] and all its key imported components.

Document every user action available on this page following this format:
1. Action name and purpose
2. Step-by-step instructions (verbose)
3. Any permissions required
4. Potential issues and solutions

Create/update the documentation file at docs/pages/console/[MODULE]/[PAGE].md

Use the template format from docs/PAGE_DOCUMENTATION_MAINTENANCE.md
```

---

## Validation Checklist

Before committing documentation updates:

- [ ] All page.tsx files have corresponding documentation
- [ ] All visible UI actions are documented
- [ ] Permission tables reflect actual role restrictions
- [ ] No placeholder text remains
- [ ] Troubleshooting section addresses common issues
- [ ] Documentation is non-technical (no file paths, routes, or code references)
- [ ] Instructions are factually accurate and match actual UI

---

## Automation Ideas

### CI Check for Missing Documentation
```bash
#!/bin/bash
# Check that every page.tsx has a corresponding .md file

for page in $(find console/src/app -name "page.tsx"); do
  # Convert path to expected doc path
  doc_path=$(echo "$page" | sed 's|console/src/app/\[tenant\]/||' | sed 's|page.tsx||' | sed 's|/$||')
  # Check if doc exists
  if [ ! -f "docs/pages/console/${doc_path}.md" ]; then
    echo "Missing documentation: $page"
  fi
done
```

### Watch for Page Changes
```bash
# In development, watch for page changes
fswatch -r console/src/app -e ".*" -i "page.tsx$" | while read f; do
  echo "Page changed: $f - documentation may need update"
done
```

---

## Version History

| Date | Changes | Author |
|------|---------|--------|
| 2026-01-10 | Initial documentation created for all 93 pages | Claude |

---

## Related Files

- `CLAUDE.md` - Development guidelines and architecture overview
- `docs/PAGE_DOCUMENTATION.md` - Centralized page overview
- `console/src/app/` - Console application pages
