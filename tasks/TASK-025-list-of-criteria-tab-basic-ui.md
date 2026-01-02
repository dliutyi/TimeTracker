# TASK-025: List of Criteria Tab - Basic UI

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-017, TASK-014

## Description
Implement the basic UI for the List of Criteria tab. Create the header with title and add button. Create the criteria list structure with sorting by usage frequency.

## Expected Outcome
- List of Criteria tab UI implemented
- Header with title and add button
- Criteria list structure
- Basic criterion item display
- Sorting by usage frequency
- Ready for data integration

## Implementation Details
1. Create list of criteria screen (`lib/features/criteria/list_criteria_screen.dart`):
   - Header section
   - Criteria list section
   - Empty state

2. Implement header:
   - Tab title
   - Add criterion icon button

3. Create criteria list:
   - List view
   - Criterion item widget
   - Empty state message

4. Create criterion item widget (`lib/features/criteria/widgets/criterion_item.dart`):
   - Icon or emoji
   - Criterion name
   - Type and configuration (second line)
   - Format: "Discrete: 2 selections, 5 values" or "Continuous: 0-10, step 0.5"

5. Implement usage frequency sorting:
   - Sort by frequency (most used first)
   - Update when criteria usage changes

6. Integrate with theme:
   - Use theme colors
   - Responsive layout
   - Proper spacing

## Testing Approach
- Test header display
- Test add button
- Test empty state
- Test criterion item display
- Test sorting
- Test on different screen sizes

## Notes
- Prepare for swipe actions in next task
- Make UI responsive
- Test with various criterion types
- Consider pagination if many criteria

