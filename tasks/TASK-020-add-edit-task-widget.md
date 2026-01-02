# TASK-020: Add/Edit Task Widget

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-018, TASK-011, TASK-012, TASK-008

## Description
Implement the Add/Edit Task widget. Create a full-screen modal that allows users to create or edit tasks. Include icon selection, name input (with speech), motto input (with speech), criteria selection, and action buttons.

## Expected Outcome
- Add/Edit Task widget implemented
- Icon picker integrated
- Name and motto inputs with speech recognition
- Criteria selection list
- Add/Update and Discard buttons
- Validation (name required)
- Works in both create and edit modes

## Implementation Details
1. Create add/edit task widget (`lib/features/tasks/widgets/add_edit_task_widget.dart`):
   - Modal/bottom sheet layout
   - Four sections as specified
   - No internal scrolling

2. Implement first section:
   - Icon display (clickable)
   - Icon picker integration
   - Name input field with speech recognition

3. Implement second section:
   - Motto input field with speech recognition

4. Implement third section:
   - Criteria selection list
   - Toggle selection for each criterion
   - Sort: selected first, then by frequency
   - Fills available space

5. Implement fourth section (docked bottom):
   - Add/Update button
   - Discard button
   - Validation feedback

6. Handle create vs edit mode:
   - Pre-populate fields in edit mode
   - Update existing task vs create new
   - Handle validation

7. Integrate with task repository:
   - Save task on Add/Update
   - Cancel on Discard

## Testing Approach
- Test creating new task
- Test editing existing task
- Test icon selection
- Test speech recognition
- Test criteria selection
- Test validation
- Test discard functionality
- Test on different screen sizes

## Notes
- Ensure layout fits without scrolling
- Make criteria list scrollable if needed
- Handle keyboard appearance
- Test with many criteria

