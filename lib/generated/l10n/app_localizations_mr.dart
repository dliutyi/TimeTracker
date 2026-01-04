// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker मध्ये आपले स्वागत आहे';

  @override
  String get welcomeDescription => 'आपला वेळ ट्रॅक करा, कार्ये व्यवस्थापित करा आणि सहजतेने आपली उत्पादकता विश्लेषण करा।';

  @override
  String get continueButton => 'सुरू ठेवा';

  @override
  String get activeTask => 'सक्रिय कार्य';

  @override
  String get listOfTasks => 'कार्यांची यादी';

  @override
  String get statistics => 'आकडेवारी';

  @override
  String get listOfCriteria => 'मापदंडांची यादी';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get addTask => 'कार्य जोडा';

  @override
  String get generalMotto => 'सामान्य बोधवाक्य';

  @override
  String get noTasks => 'अद्याप कोणतीही कार्ये नाहीत';

  @override
  String get createFirstTask => 'प्रारंभ करण्यासाठी आपले पहिले कार्य तयार करा';

  @override
  String get addCriterion => 'मापदंड जोडा';

  @override
  String get noCriteria => 'अद्याप कोणतेही मापदंड नाहीत';

  @override
  String get createFirstCriterion => 'प्रारंभ करण्यासाठी आपला पहिला मापदंड तयार करा';

  @override
  String get discrete => 'विभक्त';

  @override
  String get continuous => 'सतत';

  @override
  String get selections => 'निवडी';

  @override
  String get values => 'मूल्ये';

  @override
  String get step => 'पाऊल';

  @override
  String get criterionName => 'मापदंडाचे नाव';

  @override
  String get criterionType => 'मापदंडाचा प्रकार';

  @override
  String get addValue => 'मूल्य जोडा';

  @override
  String get selectionLimit => 'निवड मर्यादा';

  @override
  String get minValue => 'किमान मूल्य';

  @override
  String get maxValue => 'कमाल मूल्य';

  @override
  String get stepValue => 'पाऊल मूल्य';

  @override
  String get value => 'मूल्य';

  @override
  String get updateCriterion => 'मापदंड अद्यतनित करा';

  @override
  String get discard => 'रद्द करा';

  @override
  String get nameRequired => 'नाव आवश्यक आहे';

  @override
  String get atLeastOneValue => 'किमान एक मूल्य आवश्यक आहे';

  @override
  String get selectionLimitRequired => 'निवड मर्यादा 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get minMustBeLessThanMax => 'किमान मूल्य कमाल मूल्यापेक्षा कमी असणे आवश्यक आहे';

  @override
  String get stepMustBeGreaterThanZero => 'पाऊल मूल्य 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get deleteCriterion => 'मापदंड हटवा';

  @override
  String get deleteCriterionWarning => 'आपण खात्री आहे की आपण हा मापदंड हटवू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String criterionUsedInTasks(int count) {
    return 'हा मापदंड $count कार्यांमध्ये वापरला जातो. संबंध त्या कार्यांमधून काढला जाईल.';
  }

  @override
  String get history => 'इतिहास';

  @override
  String get charts => 'आलेख';

  @override
  String get noSessions => 'अद्याप कोणतेही सत्रे नाहीत';

  @override
  String get noSessionsDescription => 'आपली सत्रे येथे पाहण्यासाठी वेळ ट्रॅक करणे सुरू करा';

  @override
  String get noSessionsForPeriod => 'निवडलेल्या कालावधीसाठी सत्रे सापडली नाहीत';

  @override
  String get noActiveTask => 'कोणतेही सक्रिय कार्य नाही';

  @override
  String get startTaskFromList => 'ट्रॅकिंग सुरू करण्यासाठी यादीतून कार्य सुरू करा';

  @override
  String get startTime => 'प्रारंभ वेळ';

  @override
  String get endTime => 'समाप्ती वेळ';

  @override
  String get stop => 'थांबवा';

  @override
  String get endTimeAfterStart => 'समाप्ती वेळ प्रारंभ वेळेनंतर असणे आवश्यक आहे';

  @override
  String get discardSession => 'सत्र रद्द करा';

  @override
  String get discardSessionMessage => 'आपण खात्री आहे की आपण हे सत्र रद्द करू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get swipeToStop => 'थांबवण्यासाठी स्वाइप करा';

  @override
  String get filterByTask => 'कार्यानुसार फिल्टर करा';

  @override
  String get allTasks => 'सर्व कार्ये';

  @override
  String get filterByCriterion => 'मापदंडानुसार फिल्टर करा';

  @override
  String get allCriteria => 'सर्व मापदंड';

  @override
  String get timeSpentPerTask => 'प्रति कार्य खर्च केलेला वेळ';

  @override
  String get taskFrequencyOverTime => 'कालांतराने कार्य वारंवारता';

  @override
  String get averageCriterionRatings => 'सरासरी मापदंड रेटिंग';

  @override
  String get activityChart => 'क्रियाकलाप आलेख';

  @override
  String get day => 'दिवस';

  @override
  String get week => 'आठवडा';

  @override
  String get month => 'महिना';

  @override
  String get year => 'वर्ष';

  @override
  String get all => 'सर्व';

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
