// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'Welcome to YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Track your time, manage tasks, and analyze your productivity with ease.';

  @override
  String get continueButton => 'Continue';

  @override
  String get activeTask => 'Active Task';

  @override
  String get listOfTasks => 'List of Tasks';

  @override
  String get statistics => 'Statistics';

  @override
  String get listOfCriteria => 'List of Criteria';

  @override
  String get settings => 'Settings';

  @override
  String get addTask => 'Add Task';

  @override
  String get generalMotto => 'General Motto';

  @override
  String get noTasks => 'No tasks yet';

  @override
  String get createFirstTask => 'Create your first task to get started';

  @override
  String get addCriterion => 'Add Criterion';

  @override
  String get noCriteria => 'No criteria yet';

  @override
  String get createFirstCriterion => 'Create your first criterion to get started';

  @override
  String get discrete => 'Discrete';

  @override
  String get continuous => 'Continuous';

  @override
  String get selections => 'selections';

  @override
  String get values => 'values';

  @override
  String get step => 'step';

  @override
  String get criterionName => 'Criterion Name';

  @override
  String get criterionType => 'Criterion Type';

  @override
  String get addValue => 'Add Value';

  @override
  String get selectionLimit => 'Selection Limit';

  @override
  String get minValue => 'Min Value';

  @override
  String get maxValue => 'Max Value';

  @override
  String get stepValue => 'Step Value';

  @override
  String get value => 'Value';

  @override
  String get updateCriterion => 'Update Criterion';

  @override
  String get discard => 'Discard';

  @override
  String get nameRequired => 'Name is required';

  @override
  String get atLeastOneValue => 'At least one value is required';

  @override
  String get selectionLimitRequired => 'Selection limit must be greater than 0';

  @override
  String get minMustBeLessThanMax => 'Min value must be less than max value';

  @override
  String get stepMustBeGreaterThanZero => 'Step value must be greater than 0';

  @override
  String get deleteCriterion => 'Delete Criterion';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Are you sure you want to delete this criterion? This action cannot be undone.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'This criterion is used in $count task(s). The association will be removed from those tasks.';
  }

  @override
  String get history => 'History';

  @override
  String get charts => 'Charts';

  @override
  String get noSessions => 'No sessions yet';

  @override
  String get noSessionsDescription => 'Start tracking time to see your sessions here';

  @override
  String get noSessionsForPeriod => 'No sessions found for the selected time period';

  @override
  String get noActiveTask => 'No active task';

  @override
  String get startTaskFromList => 'Start a task from the list to begin tracking';

  @override
  String get startTime => 'Start Time';

  @override
  String get endTime => 'End Time';

  @override
  String get stop => 'Stop';

  @override
  String get endTimeAfterStart => 'End time must be after start time';

  @override
  String get discardSession => 'Discard Session';

  @override
  String get discardSessionMessage => 'Are you sure you want to discard this session? This action cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get swipeToStop => 'Swipe to stop';

  @override
  String get filterByTask => 'Filter by Task';

  @override
  String get allTasks => 'All Tasks';

  @override
  String get filterByCriterion => 'Filter by Criterion';

  @override
  String get allCriteria => 'All Criteria';

  @override
  String get timeSpentPerTask => 'Time Spent per Task';

  @override
  String get taskFrequencyOverTime => 'Task Frequency Over Time';

  @override
  String get averageCriterionRatings => 'Average Criterion Ratings';

  @override
  String get activityChart => 'Activity Chart';

  @override
  String get day => 'Day';

  @override
  String get week => 'Week';

  @override
  String get month => 'Month';

  @override
  String get year => 'Year';

  @override
  String get all => 'All';

  @override
  String get listening => 'Listening...';

  @override
  String get taskName => 'Task Name';

  @override
  String get mottoOptional => 'Motto (optional)';

  @override
  String get criteria => 'Criteria';

  @override
  String get noCriteriaAvailable => 'No criteria available. Create criteria first.';

  @override
  String get updateTask => 'Update Task';

  @override
  String get nameTooLong => 'Task name must be 32 characters or less';

  @override
  String get mottoTooLong => 'Motto must be 128 characters or less';

  @override
  String get editTask => 'Edit Task';

  @override
  String get enable => 'Enable';

  @override
  String get disable => 'Disable';

  @override
  String get enableTask => 'Enable Task';

  @override
  String get disableTask => 'Disable Task';

  @override
  String get enableTaskMessage => 'This will enable the task and make it available again.';

  @override
  String get disableTaskMessage => 'This will disable the task. It will be moved to the bottom of the list. You can enable it again later.';

  @override
  String taskEnabled(Object name) {
    return 'Task enabled';
  }

  @override
  String taskDisabled(Object name) {
    return 'Task disabled';
  }

  @override
  String get deleteTask => 'Delete Task';

  @override
  String get deleteTaskMessage => 'This will permanently delete the task and all associated sessions. This action cannot be undone.\n\nConsider disabling the task instead if you\'re not sure.';

  @override
  String taskDeleted(Object name) {
    return 'Task deleted';
  }

  @override
  String get anotherTaskActive => 'Another task is already active. Stop it first.';

  @override
  String errorActivatingTask(String error) {
    return 'Error activating task: $error';
  }

  @override
  String get delete => 'Delete';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Error stopping session: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Error discarding session: $error';
  }

  @override
  String get noActiveTaskMessage => 'Start a task from the List of Tasks to track your time.';

  @override
  String get dateFormat => 'MMMM d • HH:mm';

  @override
  String get unknownTask => 'Unknown Task';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Error loading tasks: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Error loading criteria: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Error loading sessions: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Error loading all sessions: $error';
  }

  @override
  String get unknown => 'Unknown';

  @override
  String get exportData => 'Export Data';

  @override
  String get exportAllAppDataToFile => 'Export all app data to a file';

  @override
  String get importData => 'Import Data';

  @override
  String get importDataFromFile => 'Import data from a file';

  @override
  String get chooseHowToExportData => 'Choose how you want to export the data:';

  @override
  String get saveToDevice => 'Save to Device';

  @override
  String get share => 'Share';

  @override
  String get saveExportFile => 'Save Export File';

  @override
  String dataSavedTo(String path) {
    return 'Data saved to: $path';
  }

  @override
  String get dataExportedSuccessfully => 'Data exported successfully';

  @override
  String errorExportingData(String error) {
    return 'Error exporting data: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Data imported successfully';

  @override
  String errorImportingData(String error) {
    return 'Error importing data: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'All existing data will be permanently deleted.';

  @override
  String get import => 'Import';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get chinese => 'Chinese';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Arabic';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Japanese';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'German';

  @override
  String get javanese => 'Javanese';

  @override
  String get korean => 'Korean';

  @override
  String get french => 'French';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Turkish';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamese';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ukrainian';

  @override
  String get italian => 'Italian';

  @override
  String get russian => 'Russian';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get automatic => 'Automatic';

  @override
  String get followSystemSetting => 'Follow system setting';

  @override
  String get dataManagement => 'Data Management';

  @override
  String get version => 'Version';

  @override
  String errorSavingTask(String error) {
    return 'Error saving task: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Error deleting criterion: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Criterion \"$name\" deleted';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit selections',
      one: '1 selection',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values values',
      one: '1 value',
    );
    return 'Discrete: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Continuous: $minValue-$maxValue, step $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Are you sure you want to delete this criterion \"$name\"? This action cannot be undone.';
  }

  @override
  String valueX(int index) {
    return 'Value $index';
  }

  @override
  String get minValueRequired => 'Min value is required';

  @override
  String get maxValueRequired => 'Max value is required';

  @override
  String get stepValueRequired => 'Step value is required';

  @override
  String get minValueMustBeANumber => 'Min value must be a number';

  @override
  String get maxValueMustBeANumber => 'Max value must be a number';

  @override
  String get stepValueMustBeAPositiveNumber => 'Step value must be a positive number';

  @override
  String get minValueMustBeLessThanMaxValue => 'Min value must be less than max value';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Max value must be greater than min value';

  @override
  String get stepValueMustBeGreaterThanZero => 'Step value must be greater than 0';

  @override
  String get valueCannotBeEmpty => 'Value cannot be empty';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Selection limit must be greater than 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Selection limit must be a positive number';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'At least one value is required for discrete criteria';

  @override
  String get selectIconType => 'Select Icon Type';

  @override
  String get icon => 'Icon';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Enter criterion name';

  @override
  String get type => 'Type';

  @override
  String get discreteConfiguration => 'Discrete Configuration';

  @override
  String get howManyValuesCanBeSelected => 'How many values can be selected';

  @override
  String get continuousConfiguration => 'Continuous Configuration';

  @override
  String get minimumAllowedValue => 'Minimum allowed value';

  @override
  String get maximumAllowedValue => 'Maximum allowed value';

  @override
  String get incrementDecrementStep => 'Increment/decrement step';

  @override
  String errorSavingCriterion(String error) {
    return 'Error saving criterion: $error';
  }

  @override
  String get editCriterion => 'Edit Criterion';

  @override
  String get selectIcon => 'Select Icon';

  @override
  String get selectEmoji => 'Select Emoji';

  @override
  String get icons => 'Icons';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Select Color';

  @override
  String get noCriteriaToRate => 'No criteria to rate';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'This task has no criteria assigned.';

  @override
  String errorSavingRatings(String error) {
    return 'Error saving ratings: $error';
  }

  @override
  String get skip => 'Skip';

  @override
  String get save => 'Save';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Range: $minValue - $maxValue (step: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Rate Task: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Select up to $selectionLimit value(s)';
  }

  @override
  String get swipeToStart => 'Swipe to start';
}
