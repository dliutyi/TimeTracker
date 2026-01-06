// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'আপনাকে স্বাগতম যিনি YuDi Time Tracker ব্যবহার করছেন';

  @override
  String get welcomeDescription => 'আপনার সময় ট্র্যাক করা, কাজ পরিচালনা এবং আপনার উত্পাদনশীলতা বিশ্লেষণ সহজে করুন।';

  @override
  String get continueButton => 'চালিয়ে যান';

  @override
  String get activeTask => 'সক্রিয় কাজ';

  @override
  String get listOfTasks => 'কাজ তালিকা';

  @override
  String get statistics => 'পরিসংখ্যান';

  @override
  String get listOfCriteria => 'মাপকাঠি তালিকা';

  @override
  String get settings => 'সেটিংস';

  @override
  String get addTask => 'কাজ যোগ করুন';

  @override
  String get generalMotto => 'সাধারণ মূলমন্ত্র';

  @override
  String get noTasks => 'কোন কাজ নেই';

  @override
  String get createFirstTask => 'শুরু করতে আপনার প্রথম কাজ তৈরি করুন';

  @override
  String get addCriterion => 'মাপকাঠি যোগ করুন';

  @override
  String get noCriteria => 'কোন মাপকাঠি নেই';

  @override
  String get createFirstCriterion => 'শুরু করতে আপনার প্রথম মাপকাঠি তৈরি করুন';

  @override
  String get discrete => 'বিচ্ছিন্ন';

  @override
  String get continuous => 'অবিচ্ছিন্ন';

  @override
  String get selections => 'বাছাই';

  @override
  String get values => 'মানস';

  @override
  String get step => 'ধাপ';

  @override
  String get criterionName => 'মাপকাঠির নাম';

  @override
  String get criterionType => 'মাপকাঠির ধরন';

  @override
  String get addValue => 'মান যোগ করুন';

  @override
  String get selectionLimit => 'বাছাই সীমা';

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
  String get selectionLimitRequired => 'বাছাই সীমা প্রয়োজন';

  @override
  String get minMustBeLessThanMax => 'সর্বনিম্ন মান সর্বোচ্চ মানের চেয়ে কম হতে হবে';

  @override
  String get stepMustBeGreaterThanZero => 'ধাপ হতে হবে বেশি হতে হবে 0';

  @override
  String get deleteCriterion => 'মাপকাঠি মুছে ফেলুন';

  @override
  String deleteCriterionWarning(Object name) {
    return 'আপনি কি নিশ্চিত যে আপনি এই মাপকাঠিটি মুছতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'এই মাপকাঠি এখানে $count টি কাজে ব্যবহার করা হয়েছে। এই কাজগুলি থেকে সংযোজন সরান।';
  }

  @override
  String get history => 'ইতিহাস';

  @override
  String get charts => 'চার্ট';

  @override
  String get noSessions => 'কোন সেশন নেই';

  @override
  String get noSessionsDescription => 'আপনার সেশন এখানে দেখতে সময় ট্র্যাক করা শুরু করুন';

  @override
  String get noSessionsForPeriod => 'নির্বাচিত সময়কালের জন্য কোন সেশন পাওয়া যায়নি';

  @override
  String get noActiveTask => 'কোন কাজ সক্রিয় নেই';

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
  String get cancel => 'বাতিল করুন';

  @override
  String get swipeToStop => 'স্টপ করতে সোয়াইপ করুন';

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
  String get taskFrequencyOverTime => 'কাজের ফ্রিকোয়েন্সি সময়ের মধ্যে';

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
  String get listening => 'শ্রদ্ধারাহিত হচ্ছে...';

  @override
  String get taskName => 'কাজের নাম';

  @override
  String get mottoOptional => 'মূলমন্ত্র (বাছাইযোগ্য)';

  @override
  String get criteria => 'মাপকাঠি';

  @override
  String get noCriteriaAvailable => 'কোন মাপকাঠি পাওয়া যায়নি';

  @override
  String get updateTask => 'কাজ আপডেট করুন';

  @override
  String get nameTooLong => 'নাম হতে হবে কমপক্ষে 32 টি অক্ষর';

  @override
  String get mottoTooLong => 'মূলমন্ত্র হতে হবে কমপক্ষে 128 টি অক্ষর';

  @override
  String get editTask => 'কাজ সম্পাদন করুন';

  @override
  String get enable => 'সক্রিয় করুন';

  @override
  String get disable => 'নিষ্ক্রিয় করুন';

  @override
  String get enableTask => 'কাজ সক্রিয় করুন';

  @override
  String get disableTask => 'কাজ নিষ্ক্রিয় করুন';

  @override
  String get enableTaskMessage => 'আপনি কি নিশ্চিত যে আপনি এই কাজটি সক্রিয় করতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get disableTaskMessage => 'আপনি কি নিশ্চিত যে আপনি এই কাজটি নিষ্ক্রিয় করতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String taskEnabled(Object name) {
    return 'কাজ সক্রিয় করা হয়েছে';
  }

  @override
  String taskDisabled(Object name) {
    return 'কাজ নিষ্ক্রিয় করা হয়েছে';
  }

  @override
  String get deleteTask => 'কাজ মুছে ফেলুন';

  @override
  String get deleteTaskMessage => 'আপনি কি নিশ্চিত যে আপনি এই কাজটি মুছতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String taskDeleted(Object name) {
    return 'কাজ মুছে ফেলা হয়েছে';
  }

  @override
  String get anotherTaskActive => 'অন্যান্য কাজ সক্রিয় রয়েছে। প্রথমে তা বন্ধ করুন।';

  @override
  String errorActivatingTask(String error) {
    return 'কাজ সক্রিয় করতে ত্রুটি: $error';
  }

  @override
  String get delete => 'মুছে ফেলুন';

  @override
  String error(String error) {
    return 'ত্রুটি: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'সেশন বন্ধ করতে ত্রুটি: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'সেশন বাতিল করতে ত্রুটি: $error';
  }

  @override
  String get noActiveTaskMessage => 'কাজ শুরু করতে তালিকা থেকে একটি কাজ শুরু করুন';

  @override
  String get dateFormat => 'MMMM d • HH:mm';

  @override
  String get unknownTask => 'অজানা কাজ';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'কাজ লোড করতে ত্রুটি: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'মাপকাঠি লোড করতে ত্রুটি: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'সেশন লোড করতে ত্রুটি: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'সমস্ত সেশন লোড করতে ত্রুটি: $error';
  }

  @override
  String get unknown => 'অজানা';

  @override
  String get exportData => 'ডাটা এক্সপোর্ট করুন';

  @override
  String get exportAllAppDataToFile => 'সমস্ত অ্যাপলিকেশন ডাটা ফাইলে এক্সপোর্ট করুন';

  @override
  String get importData => 'ডাটা ইম্পোর্ট করুন';

  @override
  String get importDataFromFile => 'ফাইল থেকে ডাটা ইম্পোর্ট করুন';

  @override
  String get chooseHowToExportData => 'ডাটা এক্সপোর্ট করতে কিভাবে চয়ন করুন';

  @override
  String get saveToDevice => 'ডিভাইসে সংরক্ষণ করুন';

  @override
  String get share => 'শেয়ার করুন';

  @override
  String get saveExportFile => 'এক্সপোর্ট ফাইল সংরক্ষণ করুন';

  @override
  String dataSavedTo(String path) {
    return 'ডাটা সংরক্ষণ করা হয়েছে';
  }

  @override
  String get dataExportedSuccessfully => 'ডাটা সফলভাবে এক্সপোর্ট করা হয়েছে';

  @override
  String errorExportingData(String error) {
    return 'ডাটা এক্সপোর্ট করতে ত্রুটি: $error';
  }

  @override
  String get dataImportedSuccessfully => 'ডাটা সফলভাবে ইম্পোর্ট করা হয়েছে';

  @override
  String errorImportingData(String error) {
    return 'ডাটা ইম্পোর্ট করতে ত্রুটি: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'সমস্ত বিদ্যমান ডাটা স্থায়ীভাবে মুছে ফেলা হবে।';

  @override
  String get import => 'ইম্পোর্ট';

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা বাছাই করুন';

  @override
  String get english => 'ইংরেজি';

  @override
  String get spanish => 'স্প্যানিশ';

  @override
  String get chinese => 'চীনি';

  @override
  String get hindi => 'হিন্দি';

  @override
  String get arabic => 'আরবি';

  @override
  String get portuguese => 'পোর্টুগালীজ';

  @override
  String get bengali => 'বাংলা';

  @override
  String get japanese => 'জাপানি';

  @override
  String get punjabi => 'পঞ্জাবি';

  @override
  String get german => 'জার্মান';

  @override
  String get javanese => 'জাভানীস';

  @override
  String get korean => 'করিয়ান';

  @override
  String get french => 'ফরাসি';

  @override
  String get telugu => 'তেলুগু';

  @override
  String get marathi => 'মারাঠি';

  @override
  String get turkish => 'তুর্কি';

  @override
  String get tamil => 'তামিল';

  @override
  String get vietnamese => 'ভিয়েতনামিজ';

  @override
  String get urdu => 'উরদু';

  @override
  String get ukrainian => 'ইউক্রেনিয়ান';

  @override
  String get italian => 'ইতালিয়ান';

  @override
  String get russian => 'রাশিয়ান';

  @override
  String get darkMode => 'ডার্ক মোড';

  @override
  String get light => 'লাইট';

  @override
  String get dark => 'ডার্ক';

  @override
  String get automatic => 'স্বয়ংক্রিয়';

  @override
  String get followSystemSetting => 'সিস্টেম সেটিং অনুসরণ করুন';

  @override
  String get dataManagement => 'ডাটা ম্যানেজমেন্ট';

  @override
  String get version => 'সংস্করণ';

  @override
  String errorSavingTask(String error) {
    return 'কাজ সংরক্ষণ করতে ত্রুটি: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'মাপকাঠি মুছতে ত্রুটি: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'মাপকাঠি\"$name\" মুছে ফেলা হয়েছে';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit মান',
      one: '1 মান',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values মান',
      one: '1 মান',
    );
    return 'বিচ্ছিন্ন: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'অবিচ্ছিন্ন মাপকাঠি';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'আপনি কি নিশ্চিত যে আপনি এই মাপকাঠি\"$name\" মুছতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String valueX(int index) {
    return 'মান $index';
  }

  @override
  String get minValueRequired => 'সর্বনিম্ন মান প্রয়োজন';

  @override
  String get maxValueRequired => 'সর্বোচ্চ মান প্রয়োজন';

  @override
  String get stepValueRequired => 'ধাপ মান প্রয়োজন';

  @override
  String get minValueMustBeANumber => 'সর্বনিম্ন মান হতে হবে একটি সংখ্যা';

  @override
  String get maxValueMustBeANumber => 'সর্বোচ্চ মান হতে হবে একটি সংখ্যা';

  @override
  String get stepValueMustBeAPositiveNumber => 'ধাপ মান হতে হবে একটি ধনাত্মক সংখ্যা';

  @override
  String get minValueMustBeLessThanMaxValue => 'সর্বনিম্ন মান সর্বোচ্চ মানের চেয়ে কম হতে হবে';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'সর্বোচ্চ মান সর্বনিম্ন মানের চেয়ে বেশি হতে হবে';

  @override
  String get stepValueMustBeGreaterThanZero => 'ধাপ মান হতে হবে বেশি হতে হবে 0';

  @override
  String get valueCannotBeEmpty => 'মান হতে হবে না খালি';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'বাছাই সীমা হতে হবে বেশি হতে হবে 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'বাছাই সীমা হতে হবে একটি ধনাত্মক সংখ্যা';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'বিচ্ছিন্ন মাপকাঠির জন্য অন্তত একটি মান প্রয়োজন';

  @override
  String get selectIconType => 'আইকন ধরন বাছাই করুন';

  @override
  String get icon => 'আইকন';

  @override
  String get emoji => 'ইমোজি';

  @override
  String get enterCriterionName => 'মাপকাঠির নাম দিন';

  @override
  String get type => 'ধরন';

  @override
  String get discreteConfiguration => 'বিচ্ছিন্ন কনফিগারেশন';

  @override
  String get howManyValuesCanBeSelected => 'কতটি মান নির্বাচন করা যাবে';

  @override
  String get continuousConfiguration => 'অবিচ্ছিন্ন কনফিগারেশন';

  @override
  String get minimumAllowedValue => 'সর্বনিম্ন মান প্রয়োজন';

  @override
  String get maximumAllowedValue => 'সর্বোচ্চ মান প্রয়োজন';

  @override
  String get incrementDecrementStep => 'বাড়ানো/কমানো ধাপ';

  @override
  String errorSavingCriterion(String error) {
    return 'মাপকাঠি সংরক্ষণ করতে ত্রুটি: $error';
  }

  @override
  String get editCriterion => 'মাপকাঠি সম্পাদন করুন';

  @override
  String get selectIcon => 'আইকন বাছাই করুন';

  @override
  String get selectEmoji => 'ইমোজি বাছাই করুন';

  @override
  String get icons => 'আইকনস';

  @override
  String get emojis => 'ইমোজি';

  @override
  String get selectColor => 'রঙ বাছাই করুন';

  @override
  String get noCriteriaToRate => 'মাপকাঠি রেটিং করতে কোন মাপকাঠি পাওয়া যায়নি';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'এই কাজটি কোন মাপকাঠি বরাদ্দ করা হয়েছে না।';

  @override
  String errorSavingRatings(String error) {
    return 'মাপকাঠি রেটিং সংরক্ষণ করতে ত্রুটি: $error';
  }

  @override
  String get skip => 'ছোড়ান';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'পরিসীমা: $minValue - $maxValue (ধাপ: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'কাজ রেটিং করুন';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'বাছাই সীমা পর্যন্ত $selectionLimit মান';
  }

  @override
  String get swipeToStart => 'স্টার্ট করতে সোয়াইপ করুন';

  @override
  String get resumeSession => 'সেশন পুনরায় শুরু করুন';

  @override
  String get resumeSessionMessage => 'আপনি কি নিশ্চিত যে আপনি এই সেশনটি পুনরায় শুরু করতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get deleteSession => 'সেশন মুছে ফেলুন';

  @override
  String get deleteSessionMessage => 'আপনি কি নিশ্চিত যে আপনি এই সেশনটি মুছতে চান? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get resume => 'পুনরায় শুরু করুন';
}
