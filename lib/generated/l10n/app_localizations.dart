import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('mr'),
    Locale('pa'),
    Locale('pt'),
    Locale('ru'),
    Locale('ta'),
    Locale('te'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh')
  ];

  /// The application name
  ///
  /// In en, this message translates to:
  /// **'YuDi\nTime Tracker'**
  String get appName;

  /// Welcome screen title
  ///
  /// In en, this message translates to:
  /// **'Welcome to YuDi Time Tracker'**
  String get welcomeTitle;

  /// Welcome screen description
  ///
  /// In en, this message translates to:
  /// **'Track your time, manage tasks, and analyze your productivity with ease.'**
  String get welcomeDescription;

  /// Continue button text
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Active Task tab label
  ///
  /// In en, this message translates to:
  /// **'Active Task'**
  String get activeTask;

  /// List of Tasks tab label
  ///
  /// In en, this message translates to:
  /// **'List of Tasks'**
  String get listOfTasks;

  /// Statistics tab label
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// List of Criteria tab label
  ///
  /// In en, this message translates to:
  /// **'List of Criteria'**
  String get listOfCriteria;

  /// Settings button label
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Add task button label
  ///
  /// In en, this message translates to:
  /// **'Add Task'**
  String get addTask;

  /// General motto field label
  ///
  /// In en, this message translates to:
  /// **'General Motto'**
  String get generalMotto;

  /// Empty state message when no tasks exist
  ///
  /// In en, this message translates to:
  /// **'No tasks yet'**
  String get noTasks;

  /// Empty state helper text
  ///
  /// In en, this message translates to:
  /// **'Create your first task to get started'**
  String get createFirstTask;

  /// Add criterion button label
  ///
  /// In en, this message translates to:
  /// **'Add Criterion'**
  String get addCriterion;

  /// Empty state message when no criteria exist
  ///
  /// In en, this message translates to:
  /// **'No criteria yet'**
  String get noCriteria;

  /// Empty state helper text
  ///
  /// In en, this message translates to:
  /// **'Create your first criterion to get started'**
  String get createFirstCriterion;

  /// Discrete criterion type label
  ///
  /// In en, this message translates to:
  /// **'Discrete'**
  String get discrete;

  /// Continuous criterion type label
  ///
  /// In en, this message translates to:
  /// **'Continuous'**
  String get continuous;

  /// Selections label for discrete criteria
  ///
  /// In en, this message translates to:
  /// **'selections'**
  String get selections;

  /// Values label for discrete criteria
  ///
  /// In en, this message translates to:
  /// **'Values'**
  String get values;

  /// Step label for continuous criteria
  ///
  /// In en, this message translates to:
  /// **'step'**
  String get step;

  /// Criterion name field label
  ///
  /// In en, this message translates to:
  /// **'Criterion Name'**
  String get criterionName;

  /// Criterion type field label
  ///
  /// In en, this message translates to:
  /// **'Criterion Type'**
  String get criterionType;

  /// Add value button for discrete criteria
  ///
  /// In en, this message translates to:
  /// **'Add Value'**
  String get addValue;

  /// Selection limit field label
  ///
  /// In en, this message translates to:
  /// **'Selection Limit'**
  String get selectionLimit;

  /// Minimum value field label
  ///
  /// In en, this message translates to:
  /// **'Min Value'**
  String get minValue;

  /// Maximum value field label
  ///
  /// In en, this message translates to:
  /// **'Max Value'**
  String get maxValue;

  /// Step value field label
  ///
  /// In en, this message translates to:
  /// **'Step Value'**
  String get stepValue;

  /// Value field label
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get value;

  /// Update criterion button label
  ///
  /// In en, this message translates to:
  /// **'Update Criterion'**
  String get updateCriterion;

  /// Discard button label
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discard;

  /// Validation error for required name
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get nameRequired;

  /// Validation error for discrete criteria
  ///
  /// In en, this message translates to:
  /// **'At least one value is required'**
  String get atLeastOneValue;

  /// Validation error for selection limit
  ///
  /// In en, this message translates to:
  /// **'Selection limit must be greater than 0'**
  String get selectionLimitRequired;

  /// Validation error for continuous criteria
  ///
  /// In en, this message translates to:
  /// **'Min value must be less than max value'**
  String get minMustBeLessThanMax;

  /// Validation error for step value
  ///
  /// In en, this message translates to:
  /// **'Step value must be greater than 0'**
  String get stepMustBeGreaterThanZero;

  /// Delete criterion button label
  ///
  /// In en, this message translates to:
  /// **'Delete Criterion'**
  String get deleteCriterion;

  /// Delete criterion warning message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this criterion? This action cannot be undone.'**
  String deleteCriterionWarning(Object name);

  /// Message about criterion being used in tasks
  ///
  /// In en, this message translates to:
  /// **'This criterion is used in {count} task(s). The association will be removed from those tasks.'**
  String criterionUsedInTasks(int count);

  /// History tab label in statistics screen
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// Charts tab label in statistics screen
  ///
  /// In en, this message translates to:
  /// **'Charts'**
  String get charts;

  /// Empty state message when no sessions exist
  ///
  /// In en, this message translates to:
  /// **'No sessions yet'**
  String get noSessions;

  /// Empty state helper text for no sessions
  ///
  /// In en, this message translates to:
  /// **'Start tracking time to see your sessions here'**
  String get noSessionsDescription;

  /// Empty state message when no sessions exist for selected period
  ///
  /// In en, this message translates to:
  /// **'No sessions found for the selected time period'**
  String get noSessionsForPeriod;

  /// Message when no task is currently active
  ///
  /// In en, this message translates to:
  /// **'No active task'**
  String get noActiveTask;

  /// Helper text when no task is active
  ///
  /// In en, this message translates to:
  /// **'Start a task from the list to begin tracking'**
  String get startTaskFromList;

  /// Start time label
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get startTime;

  /// End time label
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get endTime;

  /// Stop button label
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// Validation error for end time
  ///
  /// In en, this message translates to:
  /// **'End time must be after start time'**
  String get endTimeAfterStart;

  /// Discard session dialog title
  ///
  /// In en, this message translates to:
  /// **'Discard Session'**
  String get discardSession;

  /// Discard session confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to discard this session? This action cannot be undone.'**
  String get discardSessionMessage;

  /// Cancel button label
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Instruction text for swipe to stop action
  ///
  /// In en, this message translates to:
  /// **'Swipe to stop'**
  String get swipeToStop;

  /// Task filter label in history view
  ///
  /// In en, this message translates to:
  /// **'Filter by Task'**
  String get filterByTask;

  /// All tasks option in filter
  ///
  /// In en, this message translates to:
  /// **'All Tasks'**
  String get allTasks;

  /// Criterion filter label in charts view
  ///
  /// In en, this message translates to:
  /// **'Filter by Criterion'**
  String get filterByCriterion;

  /// All criteria option in filter
  ///
  /// In en, this message translates to:
  /// **'All Criteria'**
  String get allCriteria;

  /// Chart title for time spent per task
  ///
  /// In en, this message translates to:
  /// **'Time Spent per Task'**
  String get timeSpentPerTask;

  /// Chart title for task frequency over time
  ///
  /// In en, this message translates to:
  /// **'Task Frequency Over Time'**
  String get taskFrequencyOverTime;

  /// Chart title for average criterion ratings
  ///
  /// In en, this message translates to:
  /// **'Average Criterion Ratings'**
  String get averageCriterionRatings;

  /// Chart title for GitHub-style activity chart
  ///
  /// In en, this message translates to:
  /// **'Activity Chart'**
  String get activityChart;

  /// Day time period label
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// Week time period label
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// Month time period label
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// Year time period label
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// All time period label
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// Listening text
  ///
  /// In en, this message translates to:
  /// **'Listening...'**
  String get listening;

  /// Task name field label
  ///
  /// In en, this message translates to:
  /// **'Task Name'**
  String get taskName;

  /// Motto field label
  ///
  /// In en, this message translates to:
  /// **'Motto (optional)'**
  String get mottoOptional;

  /// Criteria field label
  ///
  /// In en, this message translates to:
  /// **'Criteria'**
  String get criteria;

  /// Message when no criteria are available
  ///
  /// In en, this message translates to:
  /// **'No criteria available. Create criteria first.'**
  String get noCriteriaAvailable;

  /// Update task button label
  ///
  /// In en, this message translates to:
  /// **'Update Task'**
  String get updateTask;

  /// Validation error for task name
  ///
  /// In en, this message translates to:
  /// **'Task name must be 32 characters or less'**
  String get nameTooLong;

  /// Validation error for motto
  ///
  /// In en, this message translates to:
  /// **'Motto must be 128 characters or less'**
  String get mottoTooLong;

  /// Edit task button label
  ///
  /// In en, this message translates to:
  /// **'Edit Task'**
  String get editTask;

  /// Enable button label
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// Disable button label
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disable;

  /// Enable task button label
  ///
  /// In en, this message translates to:
  /// **'Enable Task'**
  String get enableTask;

  /// Disable task button label
  ///
  /// In en, this message translates to:
  /// **'Disable Task'**
  String get disableTask;

  /// Message for enabling task
  ///
  /// In en, this message translates to:
  /// **'This will enable the task and make it available again.'**
  String get enableTaskMessage;

  /// Message for disabling task
  ///
  /// In en, this message translates to:
  /// **'This will disable the task. It will be moved to the bottom of the list. You can enable it again later.'**
  String get disableTaskMessage;

  /// Message for task enabled
  ///
  /// In en, this message translates to:
  /// **'Task enabled'**
  String taskEnabled(Object name);

  /// Message for task disabled
  ///
  /// In en, this message translates to:
  /// **'Task disabled'**
  String taskDisabled(Object name);

  /// Delete task button label
  ///
  /// In en, this message translates to:
  /// **'Delete Task'**
  String get deleteTask;

  /// Message for deleting task
  ///
  /// In en, this message translates to:
  /// **'This will permanently delete the task and all associated sessions. This action cannot be undone.\n\nConsider disabling the task instead if you\'re not sure.'**
  String get deleteTaskMessage;

  /// Message for task deleted
  ///
  /// In en, this message translates to:
  /// **'Task deleted'**
  String taskDeleted(Object name);

  /// Message when another task is active
  ///
  /// In en, this message translates to:
  /// **'Another task is already active. Stop it first.'**
  String get anotherTaskActive;

  /// Message for error activating task
  ///
  /// In en, this message translates to:
  /// **'Error activating task: {error}'**
  String errorActivatingTask(String error);

  /// Delete button label
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Error message
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String error(String error);

  /// Message for error stopping session
  ///
  /// In en, this message translates to:
  /// **'Error stopping session: {error}'**
  String errorStoppingSession(String error);

  /// Message for error discarding session
  ///
  /// In en, this message translates to:
  /// **'Error discarding session: {error}'**
  String errorDiscardingSession(String error);

  /// Message when no task is active
  ///
  /// In en, this message translates to:
  /// **'Start a task from the List of Tasks to track your time.'**
  String get noActiveTaskMessage;

  /// Date format
  ///
  /// In en, this message translates to:
  /// **'MMMM d • HH:mm'**
  String get dateFormat;

  /// Message when task is unknown
  ///
  /// In en, this message translates to:
  /// **'Unknown Task'**
  String get unknownTask;

  /// Date format in session history
  ///
  /// In en, this message translates to:
  /// **'MMM d, HH:mm'**
  String get dateFormatInSessionHistory;

  /// Message for error loading tasks
  ///
  /// In en, this message translates to:
  /// **'Error loading tasks: {error}'**
  String errorLoadingTasks(String error);

  /// Message for error loading criteria
  ///
  /// In en, this message translates to:
  /// **'Error loading criteria: {error}'**
  String errorLoadingCriteria(String error);

  /// Message for error loading sessions
  ///
  /// In en, this message translates to:
  /// **'Error loading sessions: {error}'**
  String errorLoadingSessions(String error);

  /// Message for error loading all sessions
  ///
  /// In en, this message translates to:
  /// **'Error loading all sessions: {error}'**
  String errorLoadingAllSessions(String error);

  /// Message when unknown
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// Export data button label
  ///
  /// In en, this message translates to:
  /// **'Export Data'**
  String get exportData;

  /// Export all app data to a file label
  ///
  /// In en, this message translates to:
  /// **'Export all app data to a file'**
  String get exportAllAppDataToFile;

  /// Import data button label
  ///
  /// In en, this message translates to:
  /// **'Import Data'**
  String get importData;

  /// Import data from a file label
  ///
  /// In en, this message translates to:
  /// **'Import data from a file'**
  String get importDataFromFile;

  /// Choose how to export data label
  ///
  /// In en, this message translates to:
  /// **'Choose how you want to export the data:'**
  String get chooseHowToExportData;

  /// Save to device button label
  ///
  /// In en, this message translates to:
  /// **'Save to Device'**
  String get saveToDevice;

  /// Share button label
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Save export file dialog title
  ///
  /// In en, this message translates to:
  /// **'Save Export File'**
  String get saveExportFile;

  /// Data saved to label
  ///
  /// In en, this message translates to:
  /// **'Data saved to: {path}'**
  String dataSavedTo(String path);

  /// Message for data exported successfully
  ///
  /// In en, this message translates to:
  /// **'Data exported successfully'**
  String get dataExportedSuccessfully;

  /// Message for error exporting data
  ///
  /// In en, this message translates to:
  /// **'Error exporting data: {error}'**
  String errorExportingData(String error);

  /// Message for data imported successfully
  ///
  /// In en, this message translates to:
  /// **'Data imported successfully'**
  String get dataImportedSuccessfully;

  /// Message for error importing data
  ///
  /// In en, this message translates to:
  /// **'Error importing data: {error}'**
  String errorImportingData(String error);

  /// Message for all existing data will be permanently deleted
  ///
  /// In en, this message translates to:
  /// **'All existing data will be permanently deleted.'**
  String get allExistingDataWillBePermanentlyDeleted;

  /// Import button label
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// Language label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Select language dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// English language name
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Spanish language name
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// Chinese language name
  ///
  /// In en, this message translates to:
  /// **'Chinese'**
  String get chinese;

  /// Hindi language name
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get hindi;

  /// Arabic language name
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// Portuguese language name
  ///
  /// In en, this message translates to:
  /// **'Portuguese'**
  String get portuguese;

  /// Bengali language name
  ///
  /// In en, this message translates to:
  /// **'Bengali'**
  String get bengali;

  /// Japanese language name
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get japanese;

  /// Punjabi language name
  ///
  /// In en, this message translates to:
  /// **'Punjabi'**
  String get punjabi;

  /// German language name
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// Javanese language name
  ///
  /// In en, this message translates to:
  /// **'Javanese'**
  String get javanese;

  /// Korean language name
  ///
  /// In en, this message translates to:
  /// **'Korean'**
  String get korean;

  /// French language name
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// Telugu language name
  ///
  /// In en, this message translates to:
  /// **'Telugu'**
  String get telugu;

  /// Marathi language name
  ///
  /// In en, this message translates to:
  /// **'Marathi'**
  String get marathi;

  /// Turkish language name
  ///
  /// In en, this message translates to:
  /// **'Turkish'**
  String get turkish;

  /// Tamil language name
  ///
  /// In en, this message translates to:
  /// **'Tamil'**
  String get tamil;

  /// Vietnamese language name
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get vietnamese;

  /// Urdu language name
  ///
  /// In en, this message translates to:
  /// **'Urdu'**
  String get urdu;

  /// Ukrainian language name
  ///
  /// In en, this message translates to:
  /// **'Ukrainian'**
  String get ukrainian;

  /// Italian language name
  ///
  /// In en, this message translates to:
  /// **'Italian'**
  String get italian;

  /// Russian language name
  ///
  /// In en, this message translates to:
  /// **'Russian'**
  String get russian;

  /// Dark mode label
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// Light mode label
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// Dark mode label
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// Automatic mode label
  ///
  /// In en, this message translates to:
  /// **'Automatic'**
  String get automatic;

  /// Follow system setting label
  ///
  /// In en, this message translates to:
  /// **'Follow system setting'**
  String get followSystemSetting;

  /// Data management label
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagement;

  /// Version label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// Message for error saving task
  ///
  /// In en, this message translates to:
  /// **'Error saving task: {error}'**
  String errorSavingTask(String error);

  /// Message for error deleting criterion
  ///
  /// In en, this message translates to:
  /// **'Error deleting criterion: {error}'**
  String errorDeletingCriterion(String error);

  /// Message for criterion deleted
  ///
  /// In en, this message translates to:
  /// **'Criterion \"{name}\" deleted'**
  String criterionDeleted(String name);

  /// Message for discrete criterion with pluralized words
  ///
  /// In en, this message translates to:
  /// **'Discrete: {selectionLimit, plural, =1{1 selection} other{{selectionLimit} selections}}, {values, plural, =1{1 value} other{{values} values}}'**
  String discreteCriterion(int selectionLimit, int values);

  /// Message for continuous criterion
  ///
  /// In en, this message translates to:
  /// **'Continuous: {minValue}-{maxValue}, step {stepValue}'**
  String continuousCriterion(double minValue, double maxValue, double stepValue);

  /// Message for delete criterion warning
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this criterion \"{name}\"? This action cannot be undone.'**
  String deleteCriterionWarningWithName(String name);

  /// Value label for discrete criteria
  ///
  /// In en, this message translates to:
  /// **'Value {index}'**
  String valueX(int index);

  /// Validation error for required min value
  ///
  /// In en, this message translates to:
  /// **'Min value is required'**
  String get minValueRequired;

  /// Validation error for required max value
  ///
  /// In en, this message translates to:
  /// **'Max value is required'**
  String get maxValueRequired;

  /// Validation error for required step value
  ///
  /// In en, this message translates to:
  /// **'Step value is required'**
  String get stepValueRequired;

  /// Validation error for min value must be a number
  ///
  /// In en, this message translates to:
  /// **'Min value must be a number'**
  String get minValueMustBeANumber;

  /// Validation error for max value must be a number
  ///
  /// In en, this message translates to:
  /// **'Max value must be a number'**
  String get maxValueMustBeANumber;

  /// Validation error for step value must be a positive number
  ///
  /// In en, this message translates to:
  /// **'Step value must be a positive number'**
  String get stepValueMustBeAPositiveNumber;

  /// Validation error for min value must be less than max value
  ///
  /// In en, this message translates to:
  /// **'Min value must be less than max value'**
  String get minValueMustBeLessThanMaxValue;

  /// Validation error for max value must be greater than min value
  ///
  /// In en, this message translates to:
  /// **'Max value must be greater than min value'**
  String get maxValueMustBeGreaterThanMinValue;

  /// Validation error for step value must be greater than 0
  ///
  /// In en, this message translates to:
  /// **'Step value must be greater than 0'**
  String get stepValueMustBeGreaterThanZero;

  /// Validation error for value cannot be empty
  ///
  /// In en, this message translates to:
  /// **'Value cannot be empty'**
  String get valueCannotBeEmpty;

  /// Validation error for selection limit must be greater than 0
  ///
  /// In en, this message translates to:
  /// **'Selection limit must be greater than 0'**
  String get selectionLimitMustBeGreaterThanZero;

  /// Validation error for selection limit must be a positive number
  ///
  /// In en, this message translates to:
  /// **'Selection limit must be a positive number'**
  String get selectionLimitMustBeAPositiveNumber;

  /// Validation error for at least one value is required for discrete criteria
  ///
  /// In en, this message translates to:
  /// **'At least one value is required for discrete criteria'**
  String get atLeastOneValueForDiscreteCriteria;

  /// Select icon type label
  ///
  /// In en, this message translates to:
  /// **'Select Icon Type'**
  String get selectIconType;

  /// Icon label
  ///
  /// In en, this message translates to:
  /// **'Icon'**
  String get icon;

  /// Emoji label
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get emoji;

  /// Enter criterion name label
  ///
  /// In en, this message translates to:
  /// **'Enter criterion name'**
  String get enterCriterionName;

  /// Type label
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// Discrete configuration label
  ///
  /// In en, this message translates to:
  /// **'Discrete Configuration'**
  String get discreteConfiguration;

  /// How many values can be selected label
  ///
  /// In en, this message translates to:
  /// **'How many values can be selected'**
  String get howManyValuesCanBeSelected;

  /// Continuous configuration label
  ///
  /// In en, this message translates to:
  /// **'Continuous Configuration'**
  String get continuousConfiguration;

  /// Minimum allowed value label
  ///
  /// In en, this message translates to:
  /// **'Minimum allowed value'**
  String get minimumAllowedValue;

  /// Maximum allowed value label
  ///
  /// In en, this message translates to:
  /// **'Maximum allowed value'**
  String get maximumAllowedValue;

  /// Increment/decrement step label
  ///
  /// In en, this message translates to:
  /// **'Increment/decrement step'**
  String get incrementDecrementStep;

  /// Message for error saving criterion
  ///
  /// In en, this message translates to:
  /// **'Error saving criterion: {error}'**
  String errorSavingCriterion(String error);

  /// Edit criterion button label
  ///
  /// In en, this message translates to:
  /// **'Edit Criterion'**
  String get editCriterion;

  /// Select icon label
  ///
  /// In en, this message translates to:
  /// **'Select Icon'**
  String get selectIcon;

  /// Select emoji label
  ///
  /// In en, this message translates to:
  /// **'Select Emoji'**
  String get selectEmoji;

  /// Icons label
  ///
  /// In en, this message translates to:
  /// **'Icons'**
  String get icons;

  /// Emojis label
  ///
  /// In en, this message translates to:
  /// **'Emojis'**
  String get emojis;

  /// Select color label
  ///
  /// In en, this message translates to:
  /// **'Select Color'**
  String get selectColor;

  /// No criteria to rate label
  ///
  /// In en, this message translates to:
  /// **'No criteria to rate'**
  String get noCriteriaToRate;

  /// This task has no criteria assigned label
  ///
  /// In en, this message translates to:
  /// **'This task has no criteria assigned.'**
  String get thisTaskHasNoCriteriaAssigned;

  /// Message for error saving ratings
  ///
  /// In en, this message translates to:
  /// **'Error saving ratings: {error}'**
  String errorSavingRatings(String error);

  /// Skip button label
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Save button label
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Range label for continuous criteria
  ///
  /// In en, this message translates to:
  /// **'Range: {minValue} - {maxValue} (step: {stepValue})'**
  String rangeXToXStepY(double minValue, double maxValue, double stepValue);

  /// Rate task label
  ///
  /// In en, this message translates to:
  /// **'Rate Task: {taskName}'**
  String rateTask(String taskName);

  /// Select up to x values label
  ///
  /// In en, this message translates to:
  /// **'Select up to {selectionLimit} value(s)'**
  String selectUpToXValues(int selectionLimit);

  /// Swipe to start label
  ///
  /// In en, this message translates to:
  /// **'Swipe to start'**
  String get swipeToStart;

  /// Resume session dialog title
  ///
  /// In en, this message translates to:
  /// **'Resume Session'**
  String get resumeSession;

  /// Resume session confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to resume this session?'**
  String get resumeSessionMessage;

  /// Delete session dialog title
  ///
  /// In en, this message translates to:
  /// **'Delete Session'**
  String get deleteSession;

  /// Delete session confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this session? This action cannot be undone.'**
  String get deleteSessionMessage;

  /// Resume button label
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resume;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'de', 'en', 'es', 'fr', 'hi', 'it', 'ja', 'ko', 'mr', 'pa', 'pt', 'ru', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'bn': return AppLocalizationsBn();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
    case 'mr': return AppLocalizationsMr();
    case 'pa': return AppLocalizationsPa();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
    case 'tr': return AppLocalizationsTr();
    case 'uk': return AppLocalizationsUk();
    case 'ur': return AppLocalizationsUr();
    case 'vi': return AppLocalizationsVi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
