# TASK-024: Rate Task Widget

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-023, TASK-008

## Description
Implement the Rate Task widget that appears after stopping an active task. Display all criteria assigned to the task and allow users to rate them. Support both discrete and continuous criteria types.

## Expected Outcome
- Rate Task widget implemented
- Displays task criteria
- Discrete criteria rating works
- Continuous criteria rating works
- Skip and Save buttons functional
- Ratings saved to session
- Almost full-screen modal

## Implementation Details
1. Create rate task widget (`lib/features/sessions/widgets/rate_task_widget.dart`):
   - Almost full-screen modal
   - Criteria list
   - Action buttons

2. Implement discrete criteria rating:
   - Checkboxes or multi-select UI
   - Enforce selection limit
   - Optional: slider with manual input
   - Round values to 1 decimal if needed

3. Implement continuous criteria rating:
   - Slider control
   - Min/max/step constraints
   - Manual value input field
   - Round values to 1 decimal

4. Handle rating state:
   - Track ratings for each criterion
   - Validate ratings
   - Handle missing criteria gracefully

5. Implement action buttons:
   - Skip button: Save session without ratings
   - Save button: Save session with ratings
   - Navigate appropriately after save

6. Integrate with session repository:
   - Save ratings to session
   - Update session in database
   - Handle errors

## Testing Approach
- Test with discrete criteria
- Test with continuous criteria
- Test selection limits
- Test value rounding
- Test Skip button
- Test Save button
- Test with no criteria
- Test with missing criteria
- Test validation

## Notes
- Handle edge cases (deleted criteria, etc.)
- Provide clear visual feedback
- Make rating intuitive
- Test with various criterion configurations

