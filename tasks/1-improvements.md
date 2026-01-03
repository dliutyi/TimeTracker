# Tasks List

## Task 1 [x]
Change the main color of the app (make sure it works fine in dark mode): #a1ff5f. Make sure it is applied for all necessary elements: Activte Task, List of Tasks, Statistics (History and Charts), List of Criteria, Settings, Add/Edit task, Add/Edit criteria, Rate task, tabs bar, shared components, and it would be nice if the colors are taken from the common place. 

## Task 2 [x]
Update Task domain model. It should include color. Which can be selected in the Add Task Widget. And the color should be used as a background for the icon background. Task name should be no more than 32 symbols, motto no more than 128 symbols.

## Task 3 [x]
Update text input fields so that by default the first letter is capitalized when keyboard is open.

## Task 4 [x]
Update swipeable_item so that action button are smaller with no background instead icons should be colored to the corresponding background color. The design of buttons should rounded as the swipeable_item itself, otherwise it is confused. Activation should also align with the design of the swipeable_item, because now it looks as if the rounded swipeable_item is dragging and a new rectangular is appearing...

## Task 5 [x]
Update 'Active Task' tab.

Visualization should be redeveloped:
- Remove redundant header
- Background of the screen should correspond to the color of the active task
- Stack of elements (full width), elements shouldn't have their own background or additional borders or grouped: 
    - task duration in the center
    - task icon and name in the center
    - task motto in the center
    - start time (edittable as now)
    - end time (edittable as now)
    - docked in the bottom two full width button:
        - in the very bottom Discard button
        - the rest of free vertical (between Discard and end time) space Stop button
- Font should be contrast to the background color (so that if the background is black, black font color will not be visible)
- When task is stopped and there is no criteria, no need to show Rate task widget.
- Make sure all text is available for localization and make sure everything is translated there

## Task 6 [ ]
Update 'List of Criteria' tab

- Move '+' action to the floating action button
- Remove redundant header as it duplicates the text in the tab bar
- Make sure all text is available for localization and make sure everything is translated there
- Fix an exception in Add/Edit Criteria for continuous type in _AddEditCriterionWidgetState: LateInitializationError: Field _minValueController has not been initialzied
- Error overlay is behind the Add/Edit criterion widget and should disappear quicker.

## Task 7 [ ]
Update 'List of Tasks' tab

- Move '+' action to the floating action button
- Current datetime should be shown differently:
    - In one row two columns: 
        - Calendar icon and day of week
        - Clock icon and current time (the format should depend on phone localization)
- Icon background should be taken from the task color
- Each task should enumerate assigned criteria instead of just N criteria
- When the task is active - show task duration not just Active
- Disable button should spawn a confirmation dialog with Disable color schema (orange)
- Delete button should spawn a confirmation dialog with Delete color schema (red)
- Make sure all text is available for localization and make sure everything is translated there
- Make sure when the task icon, color, name, motto, criteria are changed, it is live updated in Active Task and Statistics
- Error overlay is behind the Add/Edit task widget and should disappear quicker.

## Task 8 [ ]
Update 'Statistics' tab

- Remove redundant header
- Add a filter for tasks in History
- Fix criteria icon/smile in the history tasks (they are not fit to the size)
- Charts:
    - Add a filter per task and per criteria
    - Add a chart as in github activity
    - Charts axis texts are not very neat, values overlap on each other in the horizontal and vertical axis.
- Make sure all text is available for localization and make sure everything is translated there

## Task 9 [ ]
Update 'Settings' tab

- Remove redundant header
- Export Data should offer local device saving (not only share)

## Task 10 [ ]
Update welcome page

I don't like the gradient, the background color should be as a primary app color with contrast text, maybe text should contain shadow. Button is not nice, black and no visible text. 

## Task 11 [ ]
Make sure that all text is available for localization and make sure that all translations are provided. If something is missed, please translate