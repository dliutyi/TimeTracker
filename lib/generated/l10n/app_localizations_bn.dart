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
}
