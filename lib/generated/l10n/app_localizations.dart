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
import 'app_localizations_jv.dart';
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
    Locale('jv'),
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
  /// **'YuDi Time Tracker'**
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

  /// Settings tab label
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
  /// **'values'**
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
  String get deleteCriterionWarning;

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
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'de', 'en', 'es', 'fr', 'hi', 'it', 'ja', 'jv', 'ko', 'mr', 'pa', 'pt', 'ru', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'zh'].contains(locale.languageCode);

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
    case 'jv': return AppLocalizationsJv();
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
