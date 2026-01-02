# TASK-008: Repository Layer

## Phase
Phase 2: Domain Models & Database

## Dependencies
TASK-007

## Description
Create repository layer that abstracts database operations. Implement repositories for tasks, criteria, sessions, and settings. This provides a clean interface between the UI and data layer.

## Expected Outcome
- Repository interfaces defined
- Repository implementations complete
- All CRUD operations available
- Business logic encapsulated in repositories
- Ready for use by UI layer

## Implementation Details
1. Create repository interfaces:
   - `TaskRepository`: CRUD for tasks
   - `CriterionRepository`: CRUD for criteria
   - `SessionRepository`: CRUD for sessions
   - `SettingsRepository`: Settings management

2. Implement TaskRepository:
   - Create task
   - Update task
   - Delete task
   - Disable/enable task
   - Get all tasks
   - Get task by ID
   - Get active task
   - Update task criteria associations

3. Implement CriterionRepository:
   - Create criterion
   - Update criterion
   - Delete criterion (with cascade handling)
   - Get all criteria
   - Get criterion by ID
   - Get criteria by usage frequency

4. Implement SessionRepository:
   - Create session
   - Update session
   - Delete session
   - Get sessions by task
   - Get sessions by date range
   - Save ratings for session

5. Implement SettingsRepository:
   - Get setting
   - Set setting
   - Get all settings

6. Create repository provider using Riverpod

## Testing Approach
- Create unit tests for each repository
- Test all CRUD operations
- Test error handling
- Test cascade deletions
- Mock database for testing

## Notes
- Repositories should handle data conversion between models and database entities
- Consider caching strategies
- Handle edge cases (deleted criteria, etc.)

