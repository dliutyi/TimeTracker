// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker में आपका स्वागत है';

  @override
  String get welcomeDescription => 'अपने समय को ट्रैक करें, कार्यों का प्रबंधन करें और आसानी से अपनी उत्पादकता का विश्लेषण करें।';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get activeTask => 'सक्रिय कार्य';

  @override
  String get listOfTasks => 'कार्यों की सूची';

  @override
  String get statistics => 'आंकड़े';

  @override
  String get listOfCriteria => 'मानदंडों की सूची';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get addTask => 'कार्य जोड़ें';

  @override
  String get generalMotto => 'सामान्य आदर्श वाक्य';

  @override
  String get noTasks => 'अभी तक कोई कार्य नहीं';

  @override
  String get createFirstTask => 'शुरू करने के लिए अपना पहला कार्य बनाएं';

  @override
  String get addCriterion => 'मानदंड जोड़ें';

  @override
  String get noCriteria => 'अभी तक कोई मानदंड नहीं';

  @override
  String get createFirstCriterion => 'शुरू करने के लिए अपना पहला मानदंड बनाएं';

  @override
  String get discrete => 'असतत';

  @override
  String get continuous => 'निरंतर';

  @override
  String get selections => 'चयन';

  @override
  String get values => 'मान';

  @override
  String get step => 'चरण';

  @override
  String get criterionName => 'मानदंड का नाम';

  @override
  String get criterionType => 'मानदंड का प्रकार';

  @override
  String get addValue => 'मान जोड़ें';

  @override
  String get selectionLimit => 'चयन सीमा';

  @override
  String get minValue => 'न्यूनतम मान';

  @override
  String get maxValue => 'अधिकतम मान';

  @override
  String get stepValue => 'चरण मान';

  @override
  String get value => 'मान';

  @override
  String get updateCriterion => 'मानदंड अपडेट करें';

  @override
  String get discard => 'त्यागें';

  @override
  String get nameRequired => 'नाम आवश्यक है';

  @override
  String get atLeastOneValue => 'कम से कम एक मान आवश्यक है';

  @override
  String get selectionLimitRequired => 'चयन सीमा 0 से अधिक होनी चाहिए';

  @override
  String get minMustBeLessThanMax => 'न्यूनतम मान अधिकतम मान से कम होना चाहिए';

  @override
  String get stepMustBeGreaterThanZero => 'चरण मान 0 से अधिक होना चाहिए';

  @override
  String get deleteCriterion => 'मानदंड हटाएं';

  @override
  String get deleteCriterionWarning => 'क्या आप वाकई इस मानदंड को हटाना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String criterionUsedInTasks(int count) {
    return 'यह मानदंड $count कार्य(ों) में उपयोग किया जाता है। उन कार्यों से संबंध हटा दिया जाएगा।';
  }

  @override
  String get history => 'इतिहास';

  @override
  String get charts => 'चार्ट';

  @override
  String get noSessions => 'अभी तक कोई सत्र नहीं';

  @override
  String get noSessionsDescription => 'समय ट्रैक करना शुरू करें यहां अपने सत्र देखने के लिए';

  @override
  String get noSessionsForPeriod => 'चयनित समय अवधि के लिए कोई सत्र नहीं मिला';

  @override
  String get noActiveTask => 'कोई सक्रिय कार्य नहीं';

  @override
  String get startTaskFromList => 'ट्रैकिंग शुरू करने के लिए सूची से एक कार्य शुरू करें';

  @override
  String get startTime => 'प्रारंभ समय';

  @override
  String get endTime => 'समाप्ति समय';

  @override
  String get stop => 'रोकें';

  @override
  String get endTimeAfterStart => 'समाप्ति समय प्रारंभ समय के बाद होना चाहिए';

  @override
  String get discardSession => 'सत्र त्यागें';

  @override
  String get discardSessionMessage => 'क्या आप वाकई इस सत्र को त्यागना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get swipeToStop => 'रोकने के लिए स्वाइप करें';

  @override
  String get filterByTask => 'कार्य से फ़िल्टर करें';

  @override
  String get allTasks => 'सभी कार्य';

  @override
  String get filterByCriterion => 'मानदंड से फ़िल्टर करें';

  @override
  String get allCriteria => 'सभी मानदंड';

  @override
  String get timeSpentPerTask => 'प्रति कार्य खर्च किया गया समय';

  @override
  String get taskFrequencyOverTime => 'समय के साथ कार्य आवृत्ति';

  @override
  String get averageCriterionRatings => 'औसत मानदंड रेटिंग';

  @override
  String get activityChart => 'गतिविधि चार्ट';

  @override
  String get day => 'दिन';

  @override
  String get week => 'सप्ताह';

  @override
  String get month => 'महीना';

  @override
  String get year => 'वर्ष';

  @override
  String get all => 'सभी';

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
