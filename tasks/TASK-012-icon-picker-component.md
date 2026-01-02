# TASK-012: Icon Picker Component

## Phase
Phase 3: Shared Components & Utilities

## Dependencies
TASK-009

## Description
Create an icon picker widget that allows users to select icons from a default list. The picker should support both regular icons and emojis for criteria. Provide a modal/bottom sheet interface for selection.

## Expected Outcome
- Icon picker widget implemented
- Default icon list defined
- Modal/bottom sheet interface
- Support for both icons and emojis
- Selected icon can be returned to parent
- Visually appealing and easy to use

## Implementation Details
1. Create default icon list (`lib/core/constants/icons.dart`):
   - List of icon identifiers
   - Categories (optional)
   - Emoji list for criteria

2. Create icon picker widget (`lib/shared/widgets/icon_picker.dart`):
   - Grid/list of icons
   - Search functionality (optional)
   - Category filtering (optional)
   - Selection indicator

3. Create emoji picker (if separate):
   - Emoji grid
   - Search functionality
   - Recent emojis (optional)

4. Implement picker modal:
   - Bottom sheet or dialog
   - Smooth animations
   - Responsive layout

5. Handle selection:
   - Return selected icon/emoji
   - Update UI immediately
   - Save selection

## Testing Approach
- Test icon selection
- Test emoji selection
- Test modal appearance
- Test on different screen sizes
- Test search functionality (if implemented)

## Notes
- Use Material Icons or similar icon set
- Consider icon licensing
- Make icon list easily extensible
- Ensure good visual feedback

