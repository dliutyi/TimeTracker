# TASK-033: Data Export Functionality

## Phase
Phase 5: Advanced Features & Polish

## Dependencies
TASK-028, TASK-008

## Description
Implement data export functionality. Allow users to export all app data (tasks, criteria, sessions, ratings, settings) to a JSON file. Support file sharing and saving to device storage.

## Expected Outcome
- Data export works
- All data exported correctly
- JSON format is valid
- File can be saved/shared
- Export button functional
- User feedback provided

## Implementation Details
1. Create export service (`lib/core/services/export_service.dart`):
   - Collect all data from repositories
   - Structure data for export
   - Convert to JSON
   - Validate JSON

2. Implement data collection:
   - Export all tasks
   - Export all criteria
   - Export all sessions
   - Export all ratings
   - Export settings
   - Include metadata (version, export date)

3. Implement JSON serialization:
   - Use existing model serialization
   - Create export data structure
   - Handle relationships
   - Include version information

4. Implement file operations:
   - Create file
   - Write JSON to file
   - Handle file permissions
   - Support file sharing
   - Support saving to device

5. Integrate with settings UI:
   - Connect Export button
   - Show progress indicator
   - Show success/error messages
   - Handle file picker/share sheet

6. Add error handling:
   - Handle export failures
   - Handle permission issues
   - Handle storage issues
   - Provide user feedback

## Testing Approach
- Test export with data
- Test export with no data
- Test JSON format
- Test file saving
- Test file sharing
- Test error handling
- Test on both platforms
- Verify exported data integrity

## Notes
- Ensure data privacy
- Consider file size limits
- Document export format
- Test with large datasets
- Consider compression if needed

