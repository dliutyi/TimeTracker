# TASK-018: List of Tasks Tab - Basic UI

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-017, TASK-011, TASK-012

## Description
Implement the basic UI for the List of Tasks tab. Create the header with date/time, editable motto, and add button. Create the task list UI structure (sorting and interactions will be added in later tasks).

## Expected Outcome
- List of Tasks tab UI implemented
- Header with current date/time
- Editable motto field with speech recognition
- Add task button
- Task list structure
- Basic task item display
- Ready for data integration

## Implementation Details
1. Create list of tasks screen (`lib/features/tasks/list_tasks_screen.dart`):
   - Header section
   - Task list section
   - Empty state

2. Implement header:
   - Current date and time display (updates in real-time)
   - General motto field (editable in-place)
   - Speech recognition for motto
   - Add task icon button

3. Create task list:
   - List view or scrollable list
   - Task item widget structure
   - Empty state message

4. Create task item widget (`lib/features/tasks/widgets/task_item.dart`):
   - Task icon
   - Task name
   - Criteria list (second line)
   - Basic layout

5. Integrate with theme:
   - Use theme colors
   - Responsive layout
   - Proper spacing

## Testing Approach
- Test header display
- Test motto editing
- Test speech recognition in motto
- Test add button
- Test empty state
- Test task item display
- Test on different screen sizes

## Notes
- Motto should be saved to settings
- Date/time should update every minute
- Prepare for data integration in next tasks
- Make UI responsive

