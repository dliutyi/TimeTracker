// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker میں خوش آمدید';

  @override
  String get welcomeDescription => 'اپنا وقت ٹریک کریں، کاموں کا انتظام کریں اور آسانی سے اپنی پیداواریت کا تجزیہ کریں۔';

  @override
  String get continueButton => 'جاری رکھیں';

  @override
  String get activeTask => 'فعال کام';

  @override
  String get listOfTasks => 'کاموں کی فہرست';

  @override
  String get statistics => 'اعداد و شمار';

  @override
  String get listOfCriteria => 'معیارات کی فہرست';

  @override
  String get settings => 'ترتیبات';

  @override
  String get addTask => 'کام شامل کریں';

  @override
  String get generalMotto => 'عام مقولہ';

  @override
  String get noTasks => 'ابھی تک کوئی کام نہیں';

  @override
  String get createFirstTask => 'شروع کرنے کے لیے اپنا پہلا کام بنائیں';

  @override
  String get addCriterion => 'معیار شامل کریں';

  @override
  String get noCriteria => 'ابھی تک کوئی معیار نہیں';

  @override
  String get createFirstCriterion => 'شروع کرنے کے لیے اپنا پہلا معیار بنائیں';

  @override
  String get discrete => 'منفصل';

  @override
  String get continuous => 'مسلسل';

  @override
  String get selections => 'انتخابات';

  @override
  String get values => 'اقدار';

  @override
  String get step => 'قدم';

  @override
  String get criterionName => 'معیار کا نام';

  @override
  String get criterionType => 'معیار کی قسم';

  @override
  String get addValue => 'قدر شامل کریں';

  @override
  String get selectionLimit => 'انتخاب کی حد';

  @override
  String get minValue => 'کم از کم قدر';

  @override
  String get maxValue => 'زیادہ سے زیادہ قدر';

  @override
  String get stepValue => 'قدم کی قدر';

  @override
  String get value => 'قدر';

  @override
  String get updateCriterion => 'معیار اپ ڈیٹ کریں';

  @override
  String get discard => 'مسترد کریں';

  @override
  String get nameRequired => 'نام ضروری ہے';

  @override
  String get atLeastOneValue => 'کم از کم ایک قدر ضروری ہے';

  @override
  String get selectionLimitRequired => 'انتخاب کی حد 0 سے زیادہ ہونی چاہیے';

  @override
  String get minMustBeLessThanMax => 'کم از کم قدر زیادہ سے زیادہ قدر سے کم ہونی چاہیے';

  @override
  String get stepMustBeGreaterThanZero => 'قدم کی قدر 0 سے زیادہ ہونی چاہیے';

  @override
  String get deleteCriterion => 'معیار حذف کریں';

  @override
  String get deleteCriterionWarning => 'کیا آپ واقعی اس معیار کو حذف کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String criterionUsedInTasks(int count) {
    return 'یہ معیار $count کاموں میں استعمال ہوتا ہے۔ وابستگی ان کاموں سے ہٹا دی جائے گی۔';
  }

  @override
  String get history => 'تاریخ';

  @override
  String get charts => 'چارٹس';

  @override
  String get noSessions => 'ابھی تک کوئی سیشن نہیں';

  @override
  String get noSessionsDescription => 'اپنے سیشنز یہاں دیکھنے کے لیے وقت ٹریک کرنا شروع کریں';

  @override
  String get noSessionsForPeriod => 'منتخب کردہ وقت کی مدت کے لیے کوئی سیشن نہیں ملا';

  @override
  String get noActiveTask => 'کوئی فعال کام نہیں';

  @override
  String get startTaskFromList => 'ٹریکنگ شروع کرنے کے لیے فہرست سے ایک کام شروع کریں';

  @override
  String get startTime => 'شروع کا وقت';

  @override
  String get endTime => 'ختم ہونے کا وقت';

  @override
  String get stop => 'روکیں';

  @override
  String get endTimeAfterStart => 'ختم ہونے کا وقت شروع کے وقت کے بعد ہونا چاہیے';

  @override
  String get discardSession => 'سیشن مسترد کریں';

  @override
  String get discardSessionMessage => 'کیا آپ واقعی اس سیشن کو مسترد کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get swipeToStop => 'روکنے کے لیے سوائپ کریں';

  @override
  String get filterByTask => 'کام کے لحاظ سے فلٹر کریں';

  @override
  String get allTasks => 'تمام کام';

  @override
  String get filterByCriterion => 'معیار کے لحاظ سے فلٹر کریں';

  @override
  String get allCriteria => 'تمام معیارات';

  @override
  String get timeSpentPerTask => 'ہر کام پر خرچ کیا گیا وقت';

  @override
  String get taskFrequencyOverTime => 'وقت کے ساتھ کام کی تعدد';

  @override
  String get averageCriterionRatings => 'اوسط معیار کی درجہ بندی';

  @override
  String get activityChart => 'سرگرمی چارٹ';

  @override
  String get day => 'دن';

  @override
  String get week => 'ہفتہ';

  @override
  String get month => 'مہینہ';

  @override
  String get year => 'سال';

  @override
  String get all => 'سب';
}
