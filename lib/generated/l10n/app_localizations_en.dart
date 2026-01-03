// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

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
  String get deleteCriterionWarning => 'Are you sure you want to delete this criterion? This action cannot be undone.';

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
}
