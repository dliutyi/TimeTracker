# TASK-006: Database Schema Design (Drift)

## Phase
Phase 2: Domain Models & Database

## Dependencies
TASK-005

## Description
Design and define the Drift database schema for storing tasks, criteria, sessions, and settings. Ensure the schema is extensible and supports all required operations.

## Expected Outcome
- Database schema defined using Drift
- Tables for: tasks, criteria, sessions, ratings, settings
- Relationships properly defined
- Schema is ready for implementation

## Implementation Details
1. Create database file (`lib/core/database/app_database.dart`):
   - Define database class extending GeneratedDatabase

2. Create Tasks table:
   - id (String, primary key)
   - icon (String)
   - name (String)
   - motto (String, nullable)
   - created_at (DateTime)
   - updated_at (DateTime)
   - disabled_at (DateTime, nullable)

3. Create Criteria table:
   - id (String, primary key)
   - icon (String)
   - name (String)
   - type (String - 'discrete' or 'continuous')
   - created_at (DateTime)
   - updated_at (DateTime)

4. Create CriterionConfig table (for criterion configuration):
   - criterion_id (String, foreign key)
   - For discrete: selection_limit (int), values (JSON)
   - For continuous: min_value (double), max_value (double), step_value (double)

5. Create TaskCriteria junction table:
   - task_id (String, foreign key)
   - criterion_id (String, foreign key)
   - Composite primary key

6. Create Sessions table:
   - id (String, primary key)
   - task_id (String, foreign key)
   - start_datetime (DateTime)
   - end_datetime (DateTime)
   - created_at (DateTime)

7. Create Ratings table:
   - id (String, primary key)
   - session_id (String, foreign key)
   - criterion_id (String, foreign key)
   - value (String - JSON for discrete, double for continuous)
   - created_at (DateTime)

8. Create Settings table:
   - key (String, primary key)
   - value (String - JSON)

9. Define indexes for performance:
   - Sessions by task_id and datetime
   - TaskCriteria by task_id and criterion_id

## Testing Approach
- Verify schema compiles without errors
- Check that all relationships are correct
- Verify indexes are defined
- Test schema generation

## Notes
- Use JSON columns for flexible data storage where needed
- Consider migration strategy for future schema changes
- Ensure foreign key constraints are properly set up

