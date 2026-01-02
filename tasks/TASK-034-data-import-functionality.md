# TASK-034: Data Import Functionality

## Phase
Phase 5: Advanced Features & Polish

## Dependencies
TASK-033, TASK-008, TASK-013

## Description
Implement data import functionality. Allow users to import data from a JSON file. Show confirmation dialog explaining data will be purged, validate import file, purge existing data, import new data, and handle errors with rollback.

## Expected Outcome
- Data import works
- Confirmation dialog shows
- File validation works
- Data purge works
- Data import works
- Error handling with rollback works
- User feedback provided

## Implementation Details
1. Create import service (`lib/core/services/import_service.dart`):
   - Read JSON file
   - Validate file format
   - Parse JSON data
   - Validate data structure
   - Import data to repositories

2. Implement file selection:
   - File picker integration
   - Support JSON files
   - Handle file reading
   - Handle file errors

3. Implement confirmation dialog:
   - Show warning message
   - Explain data purge
   - Explain data replacement
   - Explain irreversibility
   - Import and Cancel buttons

4. Implement data validation:
   - Validate JSON structure
   - Validate data types
   - Validate relationships
   - Check version compatibility
   - Provide error messages

5. Implement data purge:
   - Delete all tasks
   - Delete all criteria
   - Delete all sessions
   - Delete all ratings
   - Delete settings (except import-related)
   - Use transactions for atomicity

6. Implement data import:
   - Import tasks
   - Import criteria
   - Import sessions
   - Import ratings
   - Import settings
   - Handle relationships
   - Use transactions

7. Implement rollback on error:
   - Detect import errors
   - Rollback database changes
   - Restore previous state
   - Show error message
   - Preserve existing data

8. Integrate with settings UI:
   - Connect Import button
   - Show progress indicator
   - Show success/error messages
   - Handle file picker

## Testing Approach
- Test import with valid file
- Test import with invalid file
- Test confirmation dialog
- Test data purge
- Test data import
- Test rollback on error
- Test with various data
- Test on both platforms
- Verify imported data integrity

## Notes
- Ensure data integrity
- Handle version mismatches
- Test with corrupted files
- Consider backup before import
- Document import format
- Test edge cases

