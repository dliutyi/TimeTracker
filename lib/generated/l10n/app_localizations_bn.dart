// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker-এ স্বাগতম';

  @override
  String get welcomeDescription => 'আপনার সময় ট্র্যাক করুন, কাজগুলি পরিচালনা করুন এবং সহজেই আপনার উত্পাদনশীলতা বিশ্লেষণ করুন।';

  @override
  String get continueButton => 'চালিয়ে যান';

  @override
  String get activeTask => 'সক্রিয় কাজ';

  @override
  String get listOfTasks => 'কাজের তালিকা';

  @override
  String get statistics => 'পরিসংখ্যান';

  @override
  String get listOfCriteria => 'মাপকাঠির তালিকা';

  @override
  String get settings => 'সেটিংস';

  @override
  String get addTask => 'কাজ যোগ করুন';

  @override
  String get generalMotto => 'সাধারণ মূলমন্ত্র';

  @override
  String get noTasks => 'এখনও কোন কাজ নেই';

  @override
  String get createFirstTask => 'শুরু করতে আপনার প্রথম কাজ তৈরি করুন';

  @override
  String get addCriterion => 'মাপকাঠি যোগ করুন';

  @override
  String get noCriteria => 'এখনও কোন মাপকাঠি নেই';

  @override
  String get createFirstCriterion => 'শুরু করতে আপনার প্রথম মাপকাঠি তৈরি করুন';

  @override
  String get discrete => 'বিচ্ছিন্ন';

  @override
  String get continuous => 'অবিচ্ছিন্ন';

  @override
  String get selections => 'নির্বাচন';

  @override
  String get values => 'মান';

  @override
  String get step => 'ধাপ';

  @override
  String get criterionName => 'মাপকাঠির নাম';

  @override
  String get criterionType => 'মাপকাঠির ধরন';

  @override
  String get addValue => 'মান যোগ করুন';

  @override
  String get selectionLimit => 'নির্বাচন সীমা';

  @override
  String get minValue => 'সর্বনিম্ন মান';

  @override
  String get maxValue => 'সর্বোচ্চ মান';

  @override
  String get stepValue => 'ধাপ মান';

  @override
  String get value => 'মান';

  @override
  String get updateCriterion => 'মাপকাঠি আপডেট করুন';

  @override
  String get discard => 'বাতিল করুন';

  @override
  String get nameRequired => 'নাম প্রয়োজন';

  @override
  String get atLeastOneValue => 'অন্তত একটি মান প্রয়োজন';

  @override
  String get selectionLimitRequired => 'নির্বাচন সীমা 0 এর চেয়ে বেশি হতে হবে';

  @override
  String get minMustBeLessThanMax => 'সর্বনিম্ন মান সর্বোচ্চ মানের চেয়ে কম হতে হবে';

  @override
  String get stepMustBeGreaterThanZero => 'ধাপ মান 0 এর চেয়ে বেশি হতে হবে';

  @override
  String get deleteCriterion => 'মাপকাঠি মুছুন';

  @override
  String get deleteCriterionWarning => 'আপনি কি নিশ্চিত যে আপনি এই মাপকাঠিটি মুছতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String criterionUsedInTasks(int count) {
    return 'এই মাপকাঠিটি $count কাজে ব্যবহৃত হয়। সংযোগ সেই কাজগুলি থেকে সরানো হবে।';
  }

  @override
  String get history => 'ইতিহাস';

  @override
  String get charts => 'চার্ট';

  @override
  String get noSessions => 'এখনও কোন সেশন নেই';

  @override
  String get noSessionsDescription => 'আপনার সেশন এখানে দেখতে সময় ট্র্যাক করা শুরু করুন';

  @override
  String get noSessionsForPeriod => 'নির্বাচিত সময়কালের জন্য কোন সেশন পাওয়া যায়নি';

  @override
  String get noActiveTask => 'কোন সক্রিয় কাজ নেই';

  @override
  String get startTaskFromList => 'ট্র্যাকিং শুরু করতে তালিকা থেকে একটি কাজ শুরু করুন';

  @override
  String get startTime => 'শুরুর সময়';

  @override
  String get endTime => 'শেষের সময়';

  @override
  String get stop => 'বন্ধ করুন';

  @override
  String get endTimeAfterStart => 'শেষের সময় শুরুর সময়ের পরে হতে হবে';

  @override
  String get discardSession => 'সেশন বাতিল করুন';

  @override
  String get discardSessionMessage => 'আপনি কি নিশ্চিত যে আপনি এই সেশনটি বাতিল করতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get cancel => 'বাতিল';

  @override
  String get swipeToStop => 'বন্ধ করতে সোয়াইপ করুন';

  @override
  String get filterByTask => 'কাজ দ্বারা ফিল্টার';

  @override
  String get allTasks => 'সব কাজ';

  @override
  String get filterByCriterion => 'মাপকাঠি দ্বারা ফিল্টার';

  @override
  String get allCriteria => 'সব মাপকাঠি';

  @override
  String get timeSpentPerTask => 'প্রতি কাজে ব্যয় করা সময়';

  @override
  String get taskFrequencyOverTime => 'সময়ের সাথে কাজের ফ্রিকোয়েন্সি';

  @override
  String get averageCriterionRatings => 'গড় মাপকাঠি রেটিং';

  @override
  String get activityChart => 'কার্যক্রম চার্ট';

  @override
  String get day => 'দিন';

  @override
  String get week => 'সপ্তাহ';

  @override
  String get month => 'মাস';

  @override
  String get year => 'বছর';

  @override
  String get all => 'সব';

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
