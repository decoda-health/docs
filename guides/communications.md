# Communications Guide

This guide covers how to use the Comms section of Decoda to message patients, review calls, and work with AI-suggested replies.

## Finding Comms

In the left sidebar, click **Comms**. You will see two sub-sections:

- **Chat** -- Your shared inbox for text messages, emails, and conversation history with patients.
- **Calls** -- A log of every phone call your organization makes and receives.

## Chat

### Navigating the Chat Page

The Chat page is split into two areas:

- **Left side** -- A list of conversations. Each entry shows the patient's name, their last message, and a timestamp. Unread conversations have a blue dot.
- **Right side** -- The selected conversation. Click a conversation on the left to open it.

Use the filter chips above the search bar to narrow your list:

- **Unread** -- Conversations with new messages you have not opened.
- **Unresponded** -- Conversations where the patient sent the last message and no staff member has replied.
- **Human Only** -- Hides conversations where only the AI has replied.
- **My Location** -- Shows conversations from patients at your current location (only appears if your organization has multiple locations).

You can also search by patient name using the search bar.

### Sending a Message

1. Click a conversation to open it.
2. Type your message in the box at the bottom.
3. To attach files, click the paperclip icon. You can select multiple files.
4. Press **Enter** to send. Press **Shift+Enter** to add a new line without sending.

### Starting a New Conversation

1. Click the **New Chat** button at the top of the conversation list.
2. Search for an existing patient by name or phone number, or create a new patient record from the same window.
3. A conversation is created for their phone number.

The **New Chat** button requires the **Patients Create** or **Patients Profiles Write** permission.

### Managing Conversations

**Mark as Resolved:** When you have finished a conversation, open it, click the gear icon in the header, and select **Mark as Resolved**. This clears the unread indicator. If the patient sends a new message later, it automatically shows as unread again. You can also mark a resolved conversation as unresolved if follow-up is still needed.

**Opt out of texting:** To permanently stop sending SMS to a phone number, open the conversation, click the gear icon, and select **Opt out of texting**. You will still receive messages the patient sends. This cannot be undone.

### Making a Call from Chat

On the full Chat page, a standalone **phone icon** appears next to the gear icon in the conversation header. Click it to start a call with the patient.

In the mini chat (the small chat windows that appear elsewhere in the platform), the call option is inside the gear menu instead.

### Email in Chat

If your organization uses email integration, emails appear directly in the chat timeline alongside text messages and call summaries. Click an email to open the full thread in a side panel, where you can:

- Read the complete email conversation.
- Reply to any message in the thread.
- Forward a message to another email address.
- View and download attachments.

### Shared Phone Numbers

When multiple patients share a phone number, the conversation header shows how many patients are linked (e.g., "+1 other patient"). Click that label to see all linked patients.

One patient is marked as the primary (shown with a star icon). AI suggestions are tied to the primary patient. Click the star next to a different patient to change who is primary.

If two records are the same person, use **Merge Patients** from the gear menu.

## AI-Suggested Replies

When a patient texts your clinic, the AI assistant can suggest a reply. A highlighted card labeled **Suggested Response** appears below the patient's message with three actions:

- **Use** -- Send the suggestion as your reply. The conversation is automatically marked as resolved.
- **Regenerate** (redo icon) -- Opens a window titled "What is wrong with this response?" where you type feedback. The AI generates a new suggestion based on your instructions.
- **Dismiss** (X icon) -- Removes the suggestion so you can write your own reply.

AI suggestions only appear on the full Chat page (not in mini chat windows) and require a primary patient to be set on the conversation. Your organization also needs a texting assistant configured under **Settings > Assistants > Texting**.

### AI Actions

The AI can also suggest actions instead of text replies -- for example, sending an invoice or notifying the billing team. When this happens, you see the action name, a description, and an **Execute** button. Click **Execute** to carry out the action.

### When to Write Your Own Reply

The AI works well for routine messages like confirming appointments, answering questions about office hours, or sending payment links. Consider writing your own reply when a patient is upset, the message involves clinical decisions, or the suggestion does not match your clinic's voice.

## Calls

### Viewing Call History

The Calls page shows a table of all phone calls, sorted by most recent. Each row includes:

- **Date** -- When the call happened, duration, and call ID. An audio player and transcript link appear for completed calls.
- **From / To** -- Who made and received the call.
- **Status** -- How the call ended: Ongoing, Finished, Voicemail, Transferred, Disconnected, or Failed.
- **Summary** -- An AI-generated summary with tags. If the AI took actions during the call, an **Actions Taken** link appears.

### Filtering Calls

Use the filter bar to narrow results by date, name, patient ID, phone number, call ID, direction (inbound or outbound), status, or tags.

### Listening to Recordings

For completed calls with recordings, click the play button in the Date column to listen.

### Reading Transcripts

Click the **Transcript** link on a completed call. A window opens showing the full conversation in a chat-style layout with speaker names and timestamps. An audio player at the top lets you listen along.

### Reviewing AI Actions

Click the **Actions Taken** link in the Summary column to see what the AI did during a call (e.g., sent an invoice, notified staff). Each action shows its name, inputs, results, and links to related records.

## Bulk Text Messaging

To send a text to multiple patients at once, go to the **Patients** page (not the Comms page):

1. Select the patients you want to message using the checkboxes.
2. Click the **Bulk Text** button that appears.
3. Type your message and send.

## Permissions

Communications features are controlled by these permissions, configured under **Settings > Users & Roles**:

**Chat:**
- **Messaging Chats Read** -- View the Chat page and read conversations.
- **Messaging Chats Write** -- Send messages, mark conversations as resolved, and opt out of texting.

**Calls:**
- **Messaging Calls Read** -- View the Calls page and call history.
- **Messaging Calls Make** -- Make outbound calls to patients.

**Email:**
- **Messaging Emails Read** -- View emails in the chat timeline.
- **Messaging Emails Write** -- Reply to or forward emails.
- **Messaging Emails Read All** -- View emails across all users, not just your own.

**Other:**
- **Patients Create / Patients Profiles Write** -- Use the New Chat button (starting a chat may require creating a patient record).

Admin users have full access to all communication features by default.

## Tips

- **Start your day with the Unresponded filter.** This shows which patients are waiting for a reply, so you can work through them one by one.
- **Always read AI suggestions before sending.** The AI pulls from patient records and clinic settings, but can occasionally get a detail wrong.
- **Check AI-handled calls regularly.** Review the Actions Taken and summaries for AI calls, especially in the first few weeks, to make sure the AI is performing correctly.
- **Keep the first outbound text identifiable.** When texting a patient who has not texted you before, include your clinic name so they recognize the number.
