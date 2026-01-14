# Chat Page - User Actions Guide

## Overview

The Chat page provides a full SMS messaging interface for patient communication. Staff can view conversation lists, send/receive messages, attach files, use AI-suggested responses, and manage multiple patient conversations. Mobile-responsive with drawer navigation.

---

## Available Actions

### 1. View Conversation List

**Purpose:** Browse all patient SMS conversations.

**Step-by-Step Instructions:**

1. **Navigate to Chat**
   - Comms menu → Chat

2. **View sidebar (desktop)**
   - Automatically visible on left

3. **View sidebar (mobile)**
   - Tap "More Chats" button
   - Drawer opens from left

4. **See conversation list:**
   - Patient name(s)
   - Latest message preview
   - Timestamp
   - Unread indicator (blue dot)

---

### 2. Select a Conversation

**Purpose:** Open a chat to view messages.

**Step-by-Step Instructions:**

1. **Click on conversation**
   - In sidebar

2. **Chat window loads**
   - Shows message history
   - Most recent at bottom

3. **URL updates**
   - `?chatId=xxx` parameter

---

### 3. Filter Conversations

**Purpose:** Find specific chats quickly.

**Step-by-Step Instructions:**

1. **Use filter chips:**
   - **Unread:** Show only unread chats
   - **Unresponded:** Chats needing response
   - **Human Only:** Hide AI-only conversations
   - **My Location:** Filter by your location (multi-location only)

2. **Click chip to toggle**
   - Blue = active
   - Gray = inactive

3. **Multiple filters combine**

---

### 4. Search Conversations

**Purpose:** Find patient by name.

**Step-by-Step Instructions:**

1. **Locate search box**
   - Below filter chips

2. **Type patient name**
   - Search is debounced (700ms)

3. **Results update automatically**

---

### 5. Start New Chat

**Purpose:** Begin conversation with patient.

**Step-by-Step Instructions:**

1. **Click "New Chat" button**
   - Top right of sidebar

2. **Create Patient modal opens**
   - Or select existing patient

3. **Enter patient details**
   - Phone number required

4. **Chat created**
   - Navigated to new conversation

---

### 6. Send Text Message

**Purpose:** Send SMS to patient.

**Step-by-Step Instructions:**

1. **Select a conversation**

2. **Type message in input**
   - Bottom of chat window

3. **Press Enter to send**
   - Or click send button (arrow)

4. **Message appears in thread**

5. **Shift+Enter for new line**

---

### 7. Attach Files

**Purpose:** Send images or documents.

**Step-by-Step Instructions:**

1. **Click paperclip icon**
   - Next to message input

2. **Select file(s)**
   - Multiple allowed

3. **Files appear above input**
   - With remove button

4. **Click file to preview**
   - Opens fullscreen viewer

5. **Send with message**
   - Files included

---

### 8. Use AI Suggestions

**Purpose:** Send AI-generated responses.

**Step-by-Step Instructions:**

1. **Wait for patient message**

2. **View suggestion below message**
   - AI-generated response

3. **Click to use suggestion**
   - Or modify before sending

4. **Review and send**

---

### 9. Use Quick Reply Templates

**Purpose:** Insert saved message templates.

**Step-by-Step Instructions:**

1. **Start typing in input**

2. **Type "/" to trigger suggestions**
   - Or template shortcut

3. **Select from list:**
   - Patient-specific templates
   - Saved templates
   - Tenant templates
   - Event templates

4. **Template inserts into input**

---

### 10. Handle Multiple Patients (Same Number)

**Purpose:** Manage shared phone numbers.

**Step-by-Step Instructions:**

1. **Notice multi-patient indicator**
   - People icon with count

2. **Hover for patient list**
   - Tooltip shows all patients

3. **Set primary patient**
   - Modal prompts on suggestion use
   - Or manual selection

---

### 11. View Call History in Chat

**Purpose:** See calls mixed with messages.

**Step-by-Step Instructions:**

1. **Scroll through messages**

2. **Calls appear in timeline**
   - Different format than messages
   - Shows call summary

---

### 12. Remove File Before Sending

**Purpose:** Cancel file attachment.

**Step-by-Step Instructions:**

1. **View attached files**
   - Above message input

2. **Click X on file**
   - File removed

3. **Toast confirmation**

---

### 13. Preview Attached File

**Purpose:** View file before sending.

**Step-by-Step Instructions:**

1. **Click on attached file**

2. **Fullscreen dialog opens**
   - Zoom controls available

3. **Click X to close**

---

### 14. Load More Conversations

**Purpose:** See older chats.

**Step-by-Step Instructions:**

1. **Scroll to bottom of sidebar**

2. **"Loading..." appears**
   - Or "Scroll to load more"

3. **More chats load automatically**
   - Infinite scroll

---

## Message Input Features

| Feature | How to Use |
|---------|------------|
| New line | Shift + Enter |
| Send | Enter or click arrow |
| Attachments | Click paperclip |
| Templates | Type "/" |

---

## Conversation Indicators

| Indicator | Meaning |
|-----------|---------|
| Blue dot | Unread message |
| People badge | Multiple patients share number |
| Red ban icon | Opted out of SMS |
| Faded appearance | Opted out |

---

## Chat Filters

| Filter | Shows |
|--------|-------|
| Unread | Chats with unread messages |
| Unresponded | Chats needing your response |
| Human Only | Excludes AI-only conversations |
| My Location | Chats from your location |

---

## Mobile Experience

| Action | Mobile Behavior |
|--------|-----------------|
| View sidebar | Tap "More Chats" button |
| Close sidebar | Tap outside or select chat |
| Auto-close | When selecting a chat |

---

## Opted Out Numbers

When a number is opted out:
- Ban icon displayed
- Chat dimmed
- Message input disabled
- Shows "opted out" message

---

## Permissions

| Action | Admin | Manager | Staff |
|--------|-------|---------|-------|
| View chats | ✓ | ✓ | ✓ |
| Send messages | ✓ | ✓ | ✓ |
| Create new chat | ✓ | ✓ | ✓ |
| Attach files | ✓ | ✓ | ✓ |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| No chats loading | Check filters/location |
| Can't send message | Check if opted out |
| File won't upload | Check file size/type |
| Suggestions not showing | Set primary patient |
| Search not working | Wait for debounce |
