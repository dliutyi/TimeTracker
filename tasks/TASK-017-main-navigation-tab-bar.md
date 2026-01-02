# TASK-017: Main Navigation & Tab Bar

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-016, TASK-009

## Description
Implement the main navigation structure with bottom tab bar. Create the tab bar with Apple-inspired liquid glass design. Implement tab switching logic (default to Active Task if active, otherwise List of Tasks).

## Expected Outcome
- Main navigation structure implemented
- Bottom tab bar with 5 tabs
- Liquid glass design aesthetic
- Tab switching works
- Default tab logic implemented
- Smooth tab transitions

## Implementation Details
1. Create main navigation screen (`lib/app/router/main_navigation.dart`):
   - Bottom tab bar
   - Tab content areas
   - Tab switching logic

2. Implement tab bar:
   - 5 tabs: Active Task, List of Tasks, Statistics, List of Criteria, Settings
   - Icons for each tab
   - Labels for each tab
   - Active/inactive states

3. Implement liquid glass design:
   - Glass morphism effects
   - Blur background
   - Translucent appearance
   - Smooth animations

4. Implement default tab logic:
   - Check for active task
   - Open Active Task tab if active task exists
   - Open List of Tasks tab if no active task
   - Update when task becomes active/inactive

5. Create placeholder screens for each tab (to be implemented in later tasks)

6. Set up routing with go_router:
   - Tab-based navigation
   - Deep linking support (optional)

## Testing Approach
- Test tab switching
- Test default tab logic
- Test with active task
- Test without active task
- Test tab bar appearance
- Test on different screen sizes

## Notes
- Ensure tab bar is accessible
- Consider tablet layout (side navigation?)
- Make tab bar visually appealing
- Test with different themes

