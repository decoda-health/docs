# Review Page - User Actions Guide

**File Path:** `console/src/app/[tenant]/review/[eventId]/page.tsx`
**Route:** `/[tenant]/review/[eventId]`

---

## Overview

The Review page allows patients to provide feedback about their appointment experience. After submitting, positive reviews may be redirected to external review platforms (Google, Yelp, etc.) while negative reviews are captured internally for service improvement.

---

## Available Actions

### 1. View Review Request

**Purpose:** See the review request and practice information.

**Step-by-Step Instructions:**

1. **Access the review link**
   - Click link from post-visit SMS/email
   - Page loads with practice branding

2. **View the header**
   - Practice logo
   - Practice name
   - "How was your experience?" heading
   - Location name where visit occurred

---

### 2. Select Star Rating

**Purpose:** Rate your overall experience.

**Step-by-Step Instructions:**

1. **Locate the star rating**
   - 5 stars displayed in a row
   - Stars are clickable

2. **Click to select rating**
   - 1 star = Very Poor
   - 2 stars = Poor
   - 3 stars = Average
   - 4 stars = Good
   - 5 stars = Excellent

3. **View visual feedback**
   - Selected stars fill with color
   - Rating is registered

---

### 3. Write Review Comments (Optional)

**Purpose:** Provide detailed feedback about your experience.

**Step-by-Step Instructions:**

1. **Locate the comment box**
   - Text area below star rating
   - Placeholder: "Tell us about your experience..."

2. **Type your feedback**
   - Share specific details
   - Mention what was good or could improve
   - No character limit typically

---

### 4. Submit Your Review

**Purpose:** Send your feedback to the practice.

**Step-by-Step Instructions:**

1. **Ensure rating is selected**
   - At least star rating required

2. **Click "Submit Review"**
   - Button at bottom of form
   - Shows loading state while processing

3. **Wait for submission**
   - Do not refresh or close page

---

### 5. Handle Positive Review Redirect (4-5 Stars)

**Purpose:** Share your positive experience on public platforms.

**What Happens:**

1. **Review submitted successfully**
   - Internal record created

2. **Automatic redirect**
   - Opens external review platform (Google, Yelp, etc.)
   - Your review can help others find the practice

3. **Complete external review (optional)**
   - Sign in to review platform
   - Submit your review there too

**Note:** If no external review link is configured, you'll see the thank you page instead.

---

### 6. View Thank You Message (1-3 Stars or No External Link)

**Purpose:** Receive confirmation of your feedback.

**What You'll See:**

1. **Thank you heading**
   - Appreciation for your feedback

2. **Custom message**
   - Practice's thank you message
   - May include follow-up information

3. **Practice branding**
   - Logo and contact info

**Why Lower Ratings Stay Internal:**
- Allows practice to address concerns directly
- Opportunity for service recovery
- Feedback used for improvement

---

### 7. Handle Review Not Available

**Purpose:** Respond when review link is invalid.

**When This Appears:**
- Event ID is invalid
- Appointment not found
- Review link has expired
- Already submitted a review

**What You'll See:**
- "Review Not Available" message
- Practice contact information
- Explanation of the issue

---

## Review Flow Summary

```
Access Review Link
       ↓
View Practice Info
       ↓
Select Star Rating (1-5)
       ↓
Add Comments (Optional)
       ↓
Submit Review
       ↓
   ┌───┴───┐
   ↓       ↓
4-5 Stars  1-3 Stars
   ↓          ↓
External   Thank You
Redirect     Page
(if link
 exists)
```

---

## Rating Behaviors

| Rating | Behavior |
|--------|----------|
| 1-3 Stars | Shows thank you page, review captured internally |
| 4-5 Stars | Redirects to external review platform (if configured) |
| 4-5 Stars (no external link) | Shows thank you page |

---

## Error Messages

| Error | Meaning |
|-------|---------|
| "Review not found" | Invalid event ID |
| "Failed to submit" | Network error, try again |
| Redirect fails | External link may be invalid |

---

## Mobile Considerations

- Touch-friendly star rating
- Full-width on mobile
- Keyboard appears for comments
- Easy tap targets

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Page won't load | Check URL, refresh page |
| Stars not clickable | Wait for page to fully load |
| Submit fails | Check connection, retry |
| External site won't load | May need to sign in to platform |
| Already reviewed | Each appointment can only be reviewed once |
