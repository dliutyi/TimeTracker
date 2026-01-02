# TASK-021: Task Management (Create, Update, Delete, Disable)

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-020, TASK-014, TASK-013, TASK-008

## Description
Implement full task management functionality including create, update, delete, and disable operations. Integrate swipe actions, confirmation dialogs, and connect everything to the repository layer.

## Expected Outcome
- Task creation works
- Task editing works
- Task deletion works (with confirmation)
- Task disable/enable works (with confirmation)
- Swipe actions integrated
- All operations persist to database
- UI updates correctly

## Implementation Details
1. Integrate task creation:
   - Connect Add Task widget to repository
   - Save new task
   - Update UI after creation
   - Navigate appropriately

2. Integrate task editing:
   - Connect Edit Task widget to repository
   - Update existing task
   - Update UI after edit
   - Handle criteria changes

3. Implement task deletion:
   - Swipe to reveal delete button
   - Show confirmation dialog
   - Warn about permanent deletion
   - Suggest disable option
   - Delete from repository
   - Update UI

4. Implement task disable/enable:
   - Swipe to reveal disable button
   - Show confirmation dialog
   - Disable/enable in repository
   - Update UI (move to bottom if disabled)
   - Update sorting

5. Implement swipe to activate:
   - Swipe right gesture
   - Create active session
   - Navigate to Active Task tab
   - Update UI

6. Handle edge cases:
   - Tasks with active sessions
   - Tasks with many criteria
   - Error handling

## Testing Approach
- Test create task
- Test edit task
- Test delete task (with confirmation)
- Test disable task (with confirmation)
- Test enable task
- Test swipe to activate
- Test error handling
- Test with active sessions

## Notes
- Ensure data consistency
- Handle concurrent operations
- Provide user feedback
- Test with various scenarios

