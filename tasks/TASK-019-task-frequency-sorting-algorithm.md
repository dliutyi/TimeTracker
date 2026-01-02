# TASK-019: Task Frequency Sorting Algorithm

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-018, TASK-008

## Description
Implement the task frequency sorting algorithm. Tasks should be sorted by usage frequency considering: usage rate, time of day, day of week, and day of month. Disabled tasks should appear at the bottom sorted by disable timestamp.

## Expected Outcome
- Frequency sorting algorithm implemented
- Tasks sorted correctly by frequency
- Disabled tasks at bottom
- Algorithm considers multiple factors
- Sorting updates dynamically
- Performance is acceptable

## Implementation Details
1. Create frequency calculation service (`lib/core/services/frequency_service.dart`):
   - Calculate usage frequency score
   - Consider factors:
     - Overall usage rate (total sessions / time)
     - Time of day patterns
     - Day of week patterns
     - Day of month patterns
   - Weight each factor appropriately

2. Implement sorting logic:
   - Calculate frequency score for each task
   - Sort enabled tasks by frequency (highest first)
   - Sort disabled tasks by disable timestamp (most recent first)
   - Combine lists (enabled first, then disabled)

3. Create caching mechanism:
   - Cache frequency scores
   - Update cache when sessions change
   - Invalidate cache appropriately

4. Integrate with task repository:
   - Add sorting method to repository
   - Update UI when sorting changes

5. Optimize performance:
   - Efficient calculations
   - Batch updates
   - Lazy evaluation if needed

## Testing Approach
- Test with various usage patterns
- Test time-based factors
- Test disabled task sorting
- Test performance with many tasks
- Test edge cases (no sessions, etc.)
- Verify sorting accuracy

## Notes
- Algorithm should be tunable (weights)
- Consider machine learning for better predictions (future)
- Document algorithm logic
- Test with real usage patterns

