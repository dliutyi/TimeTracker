# TASK-005: Core Domain Models (Freezed)

## Phase
Phase 2: Domain Models & Database

## Dependencies
TASK-003

## Description
Create the core domain models using Freezed for immutability. Define Task, Criterion, and related models according to the domain specification.

## Expected Outcome
- All domain models defined using Freezed
- Models are immutable and type-safe
- JSON serialization support
- Models can be used throughout the application
- Code generation runs successfully

## Implementation Details
1. Create Task model (`lib/core/models/task.dart`):
   - Icon (String or IconData)
   - Name (String)
   - Motto (String, optional)
   - Criteria IDs (List<String>)
   - Created at (DateTime)
   - Updated at (DateTime)
   - Disabled at (DateTime?, optional)
   - ID (String)

2. Create Criterion model (`lib/core/models/criterion.dart`):
   - Icon or emoji (String)
   - Name (String)
   - Type (enum: Discrete or Continuous)
   - For Discrete: selection limit, value list
   - For Continuous: min, max, step
   - Created at (DateTime)
   - Updated at (DateTime)
   - ID (String)

3. Create Session model (`lib/core/models/session.dart`):
   - Task ID (String)
   - Start datetime (DateTime)
   - End datetime (DateTime)
   - Ratings (Map<String, dynamic> - criterion ID to rating value)
   - Created at (DateTime)
   - ID (String)

4. Create supporting enums and unions:
   - CriterionType enum
   - RatingValue union (for discrete vs continuous)

5. Run code generation: `flutter pub run build_runner build`

## Testing Approach
- Create unit tests for model creation
- Test JSON serialization/deserialization
- Test copyWith methods
- Verify immutability
- Test edge cases (null values, empty lists, etc.)

## Notes
- Use Freezed's union types for criterion configuration
- Ensure models are extensible for future changes
- Consider adding validation methods

