# Clinical Notes Guide

Create, manage, and organize clinical notes for patient encounters. This guide covers AI-generated notes, manual notes, document uploads, attachments, and the gallery.

## Navigating Notes

Open the **Notes** page from the sidebar. You will see a list of all clinical notes, grouped into **Notes Taken Today** and **Earlier Notes**. Each row shows the patient name, a preview of the note, contributing providers, the template used, visit date, and last edited date. Signed-off notes display a green checkmark. Pinned notes appear at the top.

Use the filter bar to narrow results by note ID, patient name, patient ID, provider, location, template, created date, or sign-off status (signed or unsigned). By default, the list shows notes for your current provider and primary location. Click **Clear Filters** to reset.

Click the three-dot actions menu on any note row to edit, view, print, duplicate, pin, view the linked appointment, resume a recording, or delete the note.

## Creating an AI Scribe Note

AI Scribe records audio during a patient encounter, transcribes it, and uses AI to fill in a structured note based on the template you select.

### Step 1: Start a New AI Note

From the **Notes** page, click **New Note** and select **AI Note**. You can also start an AI note from within a patient's **Medical Notes** tab. Select the patient if not already chosen.

### Step 2: Grant Microphone Access and Select a Device

When prompted, allow your browser to use the microphone. If you previously denied permission, a warning banner will appear with instructions to re-enable it.

After granting access, select a microphone device from the device selector on the note page. An input level meter shows your current volume -- check that it reads "Good volume input" before starting. If the level is too low or too loud, try a different device or adjust your distance from the microphone.

### Step 3: Record the Encounter

Recording begins when you click the play button. Speak naturally during the appointment. You can:

- **Pause** the recording and resume later.
- **Navigate away** from the note page -- the recording continues in the background via the floating Recording PiP (picture-in-picture) mini-player.
- **View the live transcript** in the **Transcript** tab.

**About the Recording PiP:** When a recording is active, a small floating player appears on screen. You can drag it to reposition it. The PiP shows the recording timer, a live audio visualizer, and buttons to pause, resume, stop, switch microphone devices, navigate back to the note, or generate the note directly.

### Step 4: Select a Template

Before generating, select a note template from the template selector on the note page. Favorite templates appear at the top of the list for quick access.

Use the **Note Template** tab to preview the selected template's questions and structure. This tab shows each question's name, description, type, and whether it is required -- helpful for choosing the right template before generating.

### Step 5: Generate the Note

Click the **Generate AI Note** button. The system finalizes the transcription and sends it to the AI model, which fills in each template question based on the conversation. You can navigate away and return later -- the note will be ready when processing completes.

### Step 6: Review and Edit

Once generated, the **Clinician's Note** tab shows structured answers organized by the template's questions. Review each field and make corrections. The AI-generated content is a starting point -- always verify clinical accuracy before finalizing.

### Step 7: Save

Click **Save** to keep your edits. The note tracks unsaved changes and will prompt you if you try to navigate away without saving.

### Refining a Note with AI Chat

After an AI note is generated, use the chat input at the bottom of the note to ask the AI to make changes. For example:

- "Add a note about the patient's allergy to penicillin"
- "Change the dosage to 20mg twice daily"
- "Expand the assessment section"

Each chat interaction creates a new version of the note, so you can always go back to an earlier version.

### Regenerating with a Different Template

If you need to restructure an AI note:

1. Open the note and click the three-dot actions menu in the toolbar.
2. Select **Change Template**.
3. Choose a new template.
4. The AI regenerates the note from the original transcript using the new template, creating a new version.

Regenerating creates a new version. Any manual edits on the current version will not carry over -- the new version is generated fresh from the original transcript.

## Creating a Manual Note

Manual notes are written by hand using a structured template.

### Step 1: Start a New Manual Note

Click **New Note** and select **Manual Note**. If you are inside a patient chart, the patient is pre-selected. Otherwise, search for and select the patient.

### Step 2: Select a Template

Choose a note template. A template is required for manual notes. When a template is selected for a patient, some fields may auto-fill based on existing patient data (such as allergies, medications, or other previously recorded information).

### Step 3: Fill In the Note

The **Doctor's Note** tab shows each question from the template. Depending on the question type, enter free text, select options, check boxes, use on/off switches, enter numbers, pick dates, upload files, or add photo attachments.

### Step 4: Save

Click **Save** to keep the note. The Save button is only enabled when you have made edits.

## Uploading Documents to Create Notes

You can upload images, PDFs, or Word documents to create a note. The system can optionally use AI to extract note content from the uploaded files.

1. Click **New Note** and select **Upload**.
2. Select the patient.
3. Choose files to upload (images, PDFs, or Word documents up to 10 MB each).
4. Optionally select a template and enable AI extraction.
5. The system creates a note with the uploaded content.

The **Upload Notes** permission is required to use this feature.

## Working with Attachments

### Adding and Viewing Attachments

The **Attachments** tab on a note shows all attached photos and images in a grid. You can:

- Upload new images directly to the note.
- Click any thumbnail to open the full-size image.
- Annotate images with drawing tools, text labels, shapes, and arrows.
- Undo, redo, and restore annotations to previous states.

### Template Placeholders

If the note template includes placeholder images, they are automatically converted to real attachments when the template is selected. No manual conversion step is needed.

### Bulk Rename

Select multiple attachments and rename them all at once. You can enter a name that applies to all selected photos or set individual names for each one.

### Image Comparison

Compare two images side by side or using a slider overlay -- useful for before-and-after documentation:

1. Open an attachment and select a second image to compare.
2. Choose **Side-by-side** or **Slider** mode.
3. Adjust zoom, pan, and rotation on each image independently.
4. Save the comparison as a new image in the gallery if needed.

### Documents

The **Documents** section within the Attachments tab lets you attach and manage PDFs, Word files, or images linked to the note.

## Attachments Gallery

The **Gallery** page (accessible from the Notes sidebar) gives you a view of all medical attachments across patients. You can:

- Browse all attachments in a grid layout.
- Filter by patient or date range.
- Upload new images directly from the gallery.
- Click any attachment to view it full-size or open the annotation editor.

## Sign-Off and Versioning

### Signing Off a Note

Notes can be signed off by providers with the **Sign Off Notes** permission. Click the **Sign off** button in the note toolbar to finalize. Signed-off notes display a green checkmark in the notes list.

Providers can enable automatic sign-off in **Settings > Preferences** so notes are signed off automatically upon saving.

### Version History

Each time a note is edited by AI chat or regenerated with a different template, a new version is created. Use the version history (accessible from the note toolbar) to view and switch between previous versions. The current version is labeled, and you can navigate to any earlier version to review it.

When viewing a previous version, a banner indicates you are not on the latest version. To make changes, switch back to the current version.

## Printing and Exporting

From the note toolbar or the notes list actions menu, select **Print / Export to PDF** to print a note or save it as a PDF. This generates a formatted document suitable for printing or sharing.

## Medical Codes

When the **Medical Codes** module is enabled, notes include a **Codes** tab where you can search and attach ICD-10 diagnosis codes and CPT procedure codes. This tab appears for notes that have generated content.

## Quick Notes

Quick notes are short, freeform text notes attached to an appointment from the calendar. Unlike clinical notes, quick notes do not use templates. They are designed for brief observations or reminders (for example, "Patient arrived 10 minutes late"). Quick notes are created from the appointment detail panel on the calendar.

## Best Practices

### Recording Quality

- Record in a quiet environment close to the microphone.
- Speak clearly at a moderate pace.
- Test your microphone input level before starting -- the level meter should read "Good volume input."
- Avoid overlapping conversations and loud background noise.

### Reviewing AI-Generated Notes

- Always review AI output for clinical accuracy before saving.
- Check that drug names, dosages, and the treatment plan are correct.
- Use AI chat to make targeted corrections instead of rewriting entire sections.
- Each AI chat interaction creates a new version, so you can revert if needed.

### Documentation Standards

- Complete notes promptly after the encounter.
- Include all relevant clinical information: chief complaint, findings, assessment, and plan.
- Sign off notes when finalized to indicate they have been reviewed.
- Use templates consistently across providers for standardized documentation.

## Troubleshooting

**"Recording did not start"**
- Confirm that microphone permission is granted in your browser.
- Select a working microphone device from the device selector.
- Check the input level meter to verify audio is being detected.
- Try refreshing the page and starting again.

**"Transcription is inaccurate"**
- Audio quality may be poor -- try recording in a quieter environment.
- Speak more slowly and clearly.
- Review and edit the note manually after generation.

**"Cannot find a note"**
- Check the date range filter on the Notes page.
- Search by patient name or note ID.
- Clear all filters to see the full list.
- The note may still be processing if it was recently generated.
