# YuDi Time Tracker - Project Description

## Overview

YuDi Time Tracker is a mobile application designed for tracking user time with support for multiple localizations. The app provides an intuitive interface for managing tasks, rating activities with customizable criteria, and analyzing time usage through comprehensive statistics. The app features speech recognition for all text inputs and data export/import functionality for seamless device migration.

## Core Domain Model

### Task
A task represents an activity that users can track time for. Each task contains:
- **Icon**: Selected from a default list of icons
- **Name**: User-defined task name
- **Motto**: Optional motivational phrase or description
- **Criteria List**: Collection of criteria associated with the task (if a criterion is deleted, it should be gracefully ignored when encountered)

### Criterion (plural: Criteria)
A criterion is a rating mechanism that can be applied to tasks. Each criterion contains:
- **Icon**: Selected from a default list of icons, OR an emoji/smile
- **Name**: User-defined criterion name
- **Type**: Either `discrete` or `continuous`

#### Discrete Type Criteria
- **Selection Limit**: Number of values that can be selected simultaneously
- **Value List**: Predefined list of selectable values

#### Continuous Type Criteria
- **Min Value**: Minimum allowed value
- **Max Value**: Maximum allowed value
- **Step Value**: Increment/decrement step size

## Application Screens

### Screen 1: Welcome Page

**Purpose**: First-time user onboarding

**Behavior**:
- Displayed only on first app launch
- After user proceeds, this screen should not be shown again (unless app data is cleared)

**UI Components**:
- App logo
- App name
- Brief description of the app's purpose
- Proceed button (e.g., "Continue", "Start", "Let's Go")

### Screen 2: Main Page (Tab Navigation)

**Purpose**: Primary application interface with bottom tab navigation

**Behavior**:
- Default entry point after welcome screen (or when returning to the app)
- Features a bottom tab bar with Apple-inspired liquid glass design aesthetic
- Tab selection logic:
  - If an active task exists: "Active Task" tab is open by default
  - If no active task exists: "List of Tasks" tab is open by default

**Tab Structure**:
1. Active Task
2. List of Tasks
3. Statistics
4. List of Criteria
5. Settings

#### Tab 1: Active Task

**Purpose**: Display and manage the currently active time-tracking session

**UI Components**:
- Task icon and name
- Task motto
- Start datetime picker (defaults to when task was started, but user can modify)
- End datetime picker with two modes:
  - "Now" option (default) - sets end time to current moment
  - Custom datetime selection
- Stop button (saves the session and triggers rating widget)
- Discard button (cancels the session without saving)

**Behavior**:
- When "Stop" is clicked:
  - Save the time session
  - Display the "Rate Task" widget with all criteria assigned to this task
- When "Discard" is clicked:
  - Cancel the active session without saving
  - Return to appropriate tab (typically "List of Tasks")

#### Tab 2: List of Tasks

**Purpose**: Browse, manage, and activate tasks

**UI Components**:
- **Header**:
  - Current date and time display
  - General motto (editable in-place with speech recognition microphone button)
  - Add task icon button
- **Task List**:
  - Tasks sorted by usage frequency (algorithm considers: usage rate, time of day, day of week, day of month)
  - Disabled tasks appear at the bottom, sorted by disable timestamp (most recently disabled first)
  - Each task item displays:
    - Task icon/logo
    - Task name
    - Second line: list of associated criteria (icons/names)

**Interactions**:
- **Swipe Right (Left to Right)**: Activate the task
  - Creates a new active session
  - Transitions to "Active Task" tab
- **Swipe Left (Right to Left)**: Reveal action buttons
  - **Settings**: Opens "Add Task" widget in edit mode with pre-populated task data
  - **Disable**: Shows confirmation dialog explaining what will happen (buttons: "Disable", "Discard")
  - **Delete**: Shows warning dialog with:
    - Warning about permanent deletion
    - Suggestion to disable instead if unsure
    - Buttons: "Disable", "Delete", "Discard"

#### Tab 3: Statistics

**Purpose**: Visualize time tracking history and patterns

**Features**:
- **Time Period Filters**: Day, Week, Month, Year
- **History View**: Chronological list of tracked sessions
- **Diagram Types** (examples):
  - Time spent on specific tasks per period
  - Criterion ratings per task per period
  - Task frequency over time
  - Criterion value distributions
  - Additional analytics as needed

**UI Requirements**:
- Interactive charts and graphs
- Filterable and drill-down capabilities
- Export capabilities (optional, but recommended)

#### Tab 4: List of Criteria

**Purpose**: Manage all available criteria

**UI Components**:
- **Header**:
  - Tab title
  - Add criterion icon button
- **Criteria List**:
  - Sorted by usage frequency (most frequently used first)
  - Each criterion item displays:
    - Icon or emoji
    - Criterion name
    - Second line: type and configuration details (e.g., "Discrete: 2 selections, 5 values" or "Continuous: 0-10, step 0.5")

**Interactions**:
- **Swipe Left (Right to Left)**: Reveal action buttons
  - **Settings**: Opens "Add Criterion" widget in edit mode with pre-populated criterion data
  - **Delete**: Shows confirmation dialog with:
    - Warning about permanent deletion
    - Information that tasks using this criterion will lose the association
    - Buttons: "Delete", "Discard"
  - **Cascade Behavior**: When a criterion is deleted, all tasks that reference it should have it removed from their criteria list

#### Tab 5: Settings

**Purpose**: Application configuration and preferences

**UI Components**:
- **Dark Mode**: Radio buttons or segmented control
  - Light
  - Dark
  - Automatic (follows system setting)
- **Localization**: Dropdown/picker with list of supported languages
- **Data Management**:
  - **Export Data**: Button to export all app data to a file
    - Allows user to transfer data to a new device
    - Exports all tasks, criteria, sessions, ratings, and settings
    - File format: JSON (recommended) or platform-native format
    - File can be saved to device storage or shared via system share sheet
  - **Import Data**: Button to import data from a file
    - User selects file from device storage or file picker
    - Shows confirmation dialog before import with clear explanation:
      - All existing data will be permanently deleted
      - All current tasks, criteria, sessions, and settings will be lost
      - Data will be replaced with imported data
      - This action cannot be undone
    - Dialog buttons: "Import" (proceed with purge and import), "Cancel"
    - After confirmation: 
      1. Validates import file format
      2. Purges all existing data from database
      3. Imports new data from file
      4. Shows success/error message
    - If import fails: Existing data should remain intact (rollback on error)
- **App Version**: Displayed at the bottom (docked)

## Widgets (Modal/Overlay Screens)

### Widget 1: Rate Task

**Purpose**: Collect criterion ratings after completing a task session

**Display**:
- Almost full-screen modal/overlay
- Appears after stopping an active task

**UI Components**:
- **Criteria List**:
  - For **Discrete** criteria:
    - Checkboxes (or similar multi-select UI)
    - Selection limit enforced based on criterion configuration
    - Optional: Slider with manual value input field (values rounded to 1 decimal place if needed)
  - For **Continuous** criteria:
    - Slider control with min/max/step constraints
    - Manual value input field (values rounded to 1 decimal place)
- **Action Buttons** (docked at bottom):
  - Skip button (saves session without ratings)
  - Save button (saves session with ratings)

### Widget 2: Add/Edit Task

**Purpose**: Create new tasks or edit existing ones

**Display**:
- Almost full-screen modal/overlay
- No internal scrolling (content should fit within viewport)

**UI Layout** (from top to bottom):
1. **First Section**:
   - Icon (clickable to change icon)
   - Name input field (with speech recognition microphone button)
2. **Second Section**:
   - Motto input field (with speech recognition microphone button)
3. **Third Section** (fills available space between second and fourth):
   - Criteria selection list
     - Each criterion can be selected/deselected (toggle)
     - Sorting: Selected criteria first, then by usage frequency
4. **Fourth Section** (docked at bottom):
   - Add/Update button
   - Discard button

**Behavior**:
- In edit mode: All fields pre-populated with existing task data
- Validation: Name is required

### Widget 3: Add/Edit Criterion

**Purpose**: Create new criteria or edit existing ones

**Display**:
- Almost full-screen modal/overlay

**UI Layout** (from top to bottom):
1. **First Section**:
   - Icon or emoji selector (clickable to change)
   - Name input field (with speech recognition microphone button)
2. **Second Section**:
   - Criterion type selector: Discrete or Continuous (radio buttons or segmented control)
3. **Third Section** (dynamic based on type):
   - **If Discrete**:
     - Add value button/input (one value per row, with speech recognition microphone button)
     - List of values with ability to remove
     - Selection limit input (how many values can be selected)
   - **If Continuous**:
     - Min value field (with description/label)
     - Max value field (with description/label)
     - Step value field (with description/label)

**Behavior**:
- In edit mode: All fields pre-populated with existing criterion data
- Validation: Name is required, type-specific validations (e.g., min < max for continuous)

## Technical Stack

### Core Framework & Libraries
- **Flutter**: Cross-platform mobile framework
- **go_router**: Navigation and routing
- **freezed**: Immutable data classes and unions
- **drift**: Type-safe SQLite database (formerly Moor)
- **intl**: Internationalization and localization
- **riverpod**: State management
- **speech_to_text**: Speech recognition for text input (or platform-native speech recognition APIs)

### Additional Considerations
- Use most recent stable versions of all libraries
- Ensure compatibility across Android (phones & tablets) and iOS (iPhone & iPad)
- Support responsive design for different screen sizes

## Code Structure

The `lib` folder should follow this structure:

```
lib/
├── app/          # Application-level configuration, routing, theme
├── core/         # Core utilities, constants, base classes
├── features/     # Feature modules (organized by domain)
├── i18n/         # Internationalization files and translations
└── shared/       # Shared widgets, models, utilities
```

### File Organization Principles
- Each object/model description in a separate file
- Monitor file line count (target: under several hundred lines per file)
- Modular architecture for easy extension
- Clear separation of concerns

## Development Guidelines

### Code Quality
- **Modularity**: Code must be modular and easy to extend
- **Maintainability**: Easy to maintain and extend with new functionality
  - Pay special attention to Freezed and Drift schemas for extensibility
- **Testing**: Comprehensive unit test coverage
  - Each task should include unit tests
  - Tests must pass before task completion
  - New features should not break existing tests

### UI/UX Standards
- **Modern Design**: Contemporary UI with smooth animations and transitions
- **Fancy UI Elements**: Polished, engaging visual elements
- **Responsive**: Works seamlessly on phones and tablets (Android & iOS)
- **Accessibility**: Follow platform accessibility guidelines
- **Speech Recognition**: All text input fields support speech-to-text functionality
  - Custom input field component with microphone button on the right side
  - Speech recording activates while user holds the microphone button
  - Text is filled in real-time as speech is recognized
  - Works for all text inputs: task names, mottos, criterion names, discrete values, etc.

### Internationalization
- **Supported Languages**: Top 20 localizations
- **Default Behavior**: App opens with system locale by default
- **Localization Files**: Organized in `lib/i18n/`

### Version Control & CI/CD
- **Versioning**: Semantic versioning (MAJOR.MINOR.PATCH)
- **Repository**: GitHub
- **CI/CD**: GitHub Actions for automated builds
- **Commits**: Each task should have its own commit

### Task Management Process

After project description approval:

1. **Task Breakdown**:
   - Divide all work into self-sufficient tasks
   - Each task should be independently testable on a device
   - Consider dependencies (e.g., "Active Task" tab requires "List of Tasks" tab first)

2. **Task Documentation**:
   - Each task has its own document describing:
     - Task description
     - Expected outcome
     - Dependencies
     - Testing approach
   - Developer can extend task document to note major bugs or issues

3. **Task Completion Criteria**:
   - Build succeeds without errors
   - All tests pass (new and existing)
   - Feature works as expected on device
   - Code follows all guidelines

4. **Development Workflow**:
   - One task per commit
   - Test-driven development where applicable
   - Regular builds and test runs

### Development Environment
- **IDE**: Cursor (with guidelines/rules configured for this project)
- **Platforms**: Android (phones & tablets) and iOS (iPhone & iPad)
- **Security**: Use most recent library versions to minimize security risks
- **Performance**: Optimize for smooth app performance

## Future Considerations

- Extensibility: Architecture should support adding new features without major refactoring
- Scalability: Database schema and state management should handle growing data
- Performance: Optimize for large datasets and long-term usage
- Analytics: Consider adding usage analytics (privacy-compliant)

