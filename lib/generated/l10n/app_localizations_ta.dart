// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker-க்கு வரவேற்கிறோம்';

  @override
  String get welcomeDescription => 'உங்கள் நேரத்தை கண்காணிக்கவும், பணிகளை நிர்வகிக்கவும் மற்றும் உங்கள் உற்பத்தித்திறனை எளிதாக பகுப்பாய்வு செய்யவும்।';

  @override
  String get continueButton => 'தொடரவும்';

  @override
  String get activeTask => 'செயலில் உள்ள பணி';

  @override
  String get listOfTasks => 'பணிகளின் பட்டியல்';

  @override
  String get statistics => 'புள்ளிவிவரங்கள்';

  @override
  String get listOfCriteria => 'அளவுகோல்களின் பட்டியல்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get addTask => 'பணியைச் சேர்';

  @override
  String get generalMotto => 'பொதுவான குறிக்கோள்';

  @override
  String get noTasks => 'இன்னும் பணிகள் இல்லை';

  @override
  String get createFirstTask => 'தொடங்க உங்கள் முதல் பணியை உருவாக்கவும்';

  @override
  String get addCriterion => 'அளவுகோலைச் சேர்';

  @override
  String get noCriteria => 'இன்னும் அளவுகோல்கள் இல்லை';

  @override
  String get createFirstCriterion => 'தொடங்க உங்கள் முதல் அளவுகோலை உருவாக்கவும்';

  @override
  String get discrete => 'தனித்த';

  @override
  String get continuous => 'தொடர்ச்சியான';

  @override
  String get selections => 'தேர்வுகள்';

  @override
  String get values => 'மதிப்புகள்';

  @override
  String get step => 'படி';

  @override
  String get criterionName => 'அளவுகோல் பெயர்';

  @override
  String get criterionType => 'அளவுகோல் வகை';

  @override
  String get addValue => 'மதிப்பைச் சேர்';

  @override
  String get selectionLimit => 'தேர்வு வரம்பு';

  @override
  String get minValue => 'குறைந்தபட்ச மதிப்பு';

  @override
  String get maxValue => 'அதிகபட்ச மதிப்பு';

  @override
  String get stepValue => 'படி மதிப்பு';

  @override
  String get value => 'மதிப்பு';

  @override
  String get updateCriterion => 'அளவுகோலைப் புதுப்பி';

  @override
  String get discard => 'நிராகரி';

  @override
  String get nameRequired => 'பெயர் தேவையானது';

  @override
  String get atLeastOneValue => 'குறைந்தபட்சம் ஒரு மதிப்பு தேவை';

  @override
  String get selectionLimitRequired => 'தேர்வு வரம்பு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get minMustBeLessThanMax => 'குறைந்தபட்ச மதிப்பு அதிகபட்ச மதிப்பை விட குறைவாக இருக்க வேண்டும்';

  @override
  String get stepMustBeGreaterThanZero => 'படி மதிப்பு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get deleteCriterion => 'அளவுகோலை நீக்கு';

  @override
  String get deleteCriterionWarning => 'இந்த அளவுகோலை நீக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String criterionUsedInTasks(int count) {
    return 'இந்த அளவுகோல் $count பணிகளில் பயன்படுத்தப்படுகிறது. அந்த பணிகளிலிருந்து தொடர்பு நீக்கப்படும்.';
  }

  @override
  String get history => 'வரலாறு';

  @override
  String get charts => 'விளக்கப்படங்கள்';

  @override
  String get noSessions => 'இன்னும் அமர்வுகள் இல்லை';

  @override
  String get noSessionsDescription => 'உங்கள் அமர்வுகளை இங்கே பார்க்க நேரத்தை கண்காணிக்கத் தொடங்கவும்';

  @override
  String get noSessionsForPeriod => 'தேர்ந்தெடுக்கப்பட்ட காலத்திற்கு அமர்வுகள் கிடைக்கவில்லை';

  @override
  String get noActiveTask => 'செயலில் உள்ள பணி இல்லை';

  @override
  String get startTaskFromList => 'கண்காணிப்பைத் தொடங்க பட்டியலிலிருந்து ஒரு பணியைத் தொடங்கவும்';

  @override
  String get startTime => 'தொடக்க நேரம்';

  @override
  String get endTime => 'முடிவு நேரம்';

  @override
  String get stop => 'நிறுத்து';

  @override
  String get endTimeAfterStart => 'முடிவு நேரம் தொடக்க நேரத்திற்குப் பிறகு இருக்க வேண்டும்';

  @override
  String get discardSession => 'அமர்வை நிராகரி';

  @override
  String get discardSessionMessage => 'இந்த அமர்வை நிராகரிக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get swipeToStop => 'நிறுத்த ஸ்வைப் செய்யவும்';

  @override
  String get filterByTask => 'பணியால் வடிகட்டு';

  @override
  String get allTasks => 'அனைத்து பணிகள்';

  @override
  String get filterByCriterion => 'அளவுகோலால் வடிகட்டு';

  @override
  String get allCriteria => 'அனைத்து அளவுகோல்கள்';

  @override
  String get timeSpentPerTask => 'ஒவ்வொரு பணிக்கும் செலவழித்த நேரம்';

  @override
  String get taskFrequencyOverTime => 'காலப்போக்கில் பணி அதிர்வெண்';

  @override
  String get averageCriterionRatings => 'சராசரி அளவுகோல் மதிப்பீடுகள்';

  @override
  String get activityChart => 'செயல்பாட்டு விளக்கப்படம்';

  @override
  String get day => 'நாள்';

  @override
  String get week => 'வாரம்';

  @override
  String get month => 'மாதம்';

  @override
  String get year => 'ஆண்டு';

  @override
  String get all => 'அனைத்தும்';

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
  String get taskEnabled => 'Task enabled';

  @override
  String get taskDisabled => 'Task disabled';

  @override
  String get deleteTask => 'Delete Task';

  @override
  String get deleteTaskMessage => 'This will permanently delete the task and all associated sessions. This action cannot be undone.\n\nConsider disabling the task instead if you\'re not sure.';

  @override
  String get taskDeleted => 'Task deleted';

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
