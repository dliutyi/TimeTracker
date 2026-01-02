# TASK-022: Active Task Tab

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-021, TASK-011

## Description
Implement the Active Task tab that displays the currently active time-tracking session. Show task details, datetime pickers, and Stop/Discard buttons. Handle session management and navigation.

## Expected Outcome
- Active Task tab implemented
- Displays active task information
- Datetime pickers work
- Stop and Discard buttons functional
- Tab appears/disappears based on active session
- Navigation works correctly

## Implementation Details
1. Create active task screen (`lib/features/sessions/active_task_screen.dart`):
   - Task icon and name display
   - Task motto display
   - Start datetime picker
   - End datetime picker
   - Stop button
   - Discard button

2. Implement datetime pickers:
   - Start datetime (editable, defaults to session start)
   - End datetime (two modes):
     - "Now" option (default, updates in real-time)
     - Custom datetime selection
   - Platform-appropriate date/time pickers

3. Implement session state management:
   - Track active session
   - Update session on datetime changes
   - Handle session lifecycle

4. Implement Stop button:
   - Save session end time
   - Trigger Rate Task widget (to be implemented)
   - Navigate appropriately

5. Implement Discard button:
   - Cancel active session
   - Don't save session
   - Navigate to List of Tasks tab
   - Clear active session state

6. Handle tab visibility:
   - Show tab only when active session exists
   - Update tab bar accordingly
   - Handle tab switching

## Testing Approach
- Test with active session
- Test without active session
- Test datetime pickers
- Test Stop button
- Test Discard button
- Test navigation
- Test real-time updates
- Test on different screen sizes

## Notes
- Ensure datetime validation (end after start)
- Handle timezone considerations
- Provide clear visual feedback
- Test edge cases (very short sessions, etc.)

