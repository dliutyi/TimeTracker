# TASK-027: Criterion Management (Create, Update, Delete)

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-026, TASK-014, TASK-013, TASK-008

## Description
Implement full criterion management functionality including create, update, and delete operations. Handle cascade deletion (remove criterion from tasks). Integrate swipe actions and confirmation dialogs.

## Expected Outcome
- Criterion creation works
- Criterion editing works
- Criterion deletion works (with cascade)
- Swipe actions integrated
- All operations persist to database
- Tasks updated when criterion deleted
- UI updates correctly

## Implementation Details
1. Integrate criterion creation:
   - Connect Add Criterion widget to repository
   - Save new criterion
   - Update UI after creation

2. Integrate criterion editing:
   - Connect Edit Criterion widget to repository
   - Update existing criterion
   - Update UI after edit
   - Handle type changes

3. Implement criterion deletion:
   - Swipe to reveal delete button
   - Show confirmation dialog
   - Warn about permanent deletion
   - Inform about task associations
   - Delete from repository
   - Cascade: Remove from all tasks
   - Update UI

4. Implement cascade deletion logic:
   - Find all tasks using criterion
   - Remove criterion from task criteria lists
   - Update tasks in database
   - Handle gracefully in UI (ignore missing criteria)

5. Handle edge cases:
   - Criteria in active sessions
   - Criteria with ratings
   - Error handling

6. Update usage frequency:
   - Track criterion usage
   - Update frequency on usage
   - Refresh sorting

## Testing Approach
- Test create criterion
- Test edit criterion
- Test delete criterion
- Test cascade deletion
- Test with tasks using criterion
- Test error handling
- Test usage frequency updates

## Notes
- Ensure data consistency
- Handle concurrent operations
- Provide user feedback
- Test with various scenarios
- Document cascade behavior

