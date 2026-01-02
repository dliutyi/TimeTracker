# TASK-026: Add/Edit Criterion Widget

## Phase
Phase 4: UI Screens & Core Features

## Dependencies
TASK-025, TASK-011, TASK-012, TASK-008

## Description
Implement the Add/Edit Criterion widget. Create a full-screen modal for creating or editing criteria. Support both discrete and continuous types with appropriate configuration options.

## Expected Outcome
- Add/Edit Criterion widget implemented
- Icon/emoji selector integrated
- Name input with speech recognition
- Type selector (Discrete/Continuous)
- Discrete configuration UI
- Continuous configuration UI
- Validation working
- Works in both create and edit modes

## Implementation Details
1. Create add/edit criterion widget (`lib/features/criteria/widgets/add_edit_criterion_widget.dart`):
   - Modal/bottom sheet layout
   - Three sections as specified

2. Implement first section:
   - Icon or emoji selector (clickable)
   - Name input field with speech recognition

3. Implement second section:
   - Type selector (Discrete or Continuous)
   - Radio buttons or segmented control
   - Dynamic UI based on selection

4. Implement third section - Discrete:
   - Add value input (one per row)
   - Speech recognition for values
   - List of values with remove option
   - Selection limit input

5. Implement third section - Continuous:
   - Min value field (with description)
   - Max value field (with description)
   - Step value field (with description)

6. Handle create vs edit mode:
   - Pre-populate fields in edit mode
   - Update existing criterion vs create new
   - Handle validation

7. Implement validation:
   - Name required
   - For discrete: at least one value, selection limit > 0
   - For continuous: min < max, step > 0

8. Integrate with criterion repository:
   - Save criterion on Add/Update
   - Cancel on Discard

## Testing Approach
- Test creating discrete criterion
- Test creating continuous criterion
- Test editing criterion
- Test type switching
- Test validation
- Test speech recognition
- Test on different screen sizes

## Notes
- Ensure layout is clear
- Handle dynamic UI changes
- Make value management intuitive
- Test edge cases

