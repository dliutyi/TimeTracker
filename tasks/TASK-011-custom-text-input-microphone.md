# TASK-011: Custom Text Input with Microphone

## Phase
Phase 3: Shared Components & Utilities

## Dependencies
TASK-010

## Description
Create a reusable custom text input widget that includes a microphone button on the right side. The button should activate speech recognition when held down and fill the text field in real-time.

## Expected Outcome
- Custom text input widget created
- Microphone button integrated
- Speech recognition activates on button hold
- Text fills in real-time during recognition
- Widget is reusable across the app
- Works for all text input needs

## Implementation Details
1. Create custom text input widget (`lib/shared/widgets/speech_text_field.dart`):
   - Text input field
   - Microphone button on the right
   - Integration with speech service
   - Real-time text updates

2. Implement button behavior:
   - Show pressed state when held
   - Start recognition on press
   - Stop recognition on release
   - Visual feedback during recording

3. Handle text updates:
   - Append recognized text
   - Replace or append based on cursor position
   - Handle punctuation and formatting

4. Add visual indicators:
   - Recording animation
   - Error states
   - Permission prompts

5. Make widget configurable:
   - Label/hint text
   - Validation
   - Max length
   - Text input type

## Testing Approach
- Test widget in isolation
- Test speech recognition integration
- Test button hold/release behavior
- Test text updates
- Test on different screen sizes
- Test error states

## Notes
- Ensure widget follows Material/Cupertino design guidelines
- Handle edge cases (rapid press/release, etc.)
- Consider accessibility
- Make it easy to use throughout the app

