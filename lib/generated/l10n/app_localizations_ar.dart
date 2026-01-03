// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'مرحباً بك في YuDi Time Tracker';

  @override
  String get welcomeDescription => 'تتبع وقتك، وإدارة المهام، وتحليل إنتاجيتك بسهولة.';

  @override
  String get continueButton => 'متابعة';

  @override
  String get activeTask => 'المهمة النشطة';

  @override
  String get listOfTasks => 'قائمة المهام';

  @override
  String get statistics => 'الإحصائيات';

  @override
  String get listOfCriteria => 'قائمة المعايير';

  @override
  String get settings => 'الإعدادات';

  @override
  String get addTask => 'إضافة مهمة';

  @override
  String get generalMotto => 'الشعار العام';

  @override
  String get noTasks => 'لا توجد مهام بعد';

  @override
  String get createFirstTask => 'أنشئ مهمتك الأولى للبدء';

  @override
  String get addCriterion => 'إضافة معيار';

  @override
  String get noCriteria => 'لا توجد معايير بعد';

  @override
  String get createFirstCriterion => 'أنشئ معيارك الأول للبدء';

  @override
  String get discrete => 'منفصل';

  @override
  String get continuous => 'مستمر';

  @override
  String get selections => 'اختيارات';

  @override
  String get values => 'قيم';

  @override
  String get step => 'خطوة';

  @override
  String get criterionName => 'اسم المعيار';

  @override
  String get criterionType => 'نوع المعيار';

  @override
  String get addValue => 'إضافة قيمة';

  @override
  String get selectionLimit => 'حد الاختيار';

  @override
  String get minValue => 'القيمة الدنيا';

  @override
  String get maxValue => 'القيمة العليا';

  @override
  String get stepValue => 'قيمة الخطوة';

  @override
  String get value => 'القيمة';

  @override
  String get updateCriterion => 'تحديث المعيار';

  @override
  String get discard => 'تجاهل';

  @override
  String get nameRequired => 'الاسم مطلوب';

  @override
  String get atLeastOneValue => 'يُطلب قيمة واحدة على الأقل';

  @override
  String get selectionLimitRequired => 'يجب أن يكون حد الاختيار أكبر من 0';

  @override
  String get minMustBeLessThanMax => 'يجب أن تكون القيمة الدنيا أقل من القيمة العليا';

  @override
  String get stepMustBeGreaterThanZero => 'يجب أن تكون قيمة الخطوة أكبر من 0';

  @override
  String get deleteCriterion => 'حذف المعيار';

  @override
  String get deleteCriterionWarning => 'هل أنت متأكد من أنك تريد حذف هذا المعيار؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String criterionUsedInTasks(int count) {
    return 'يُستخدم هذا المعيار في $count مهمة. سيتم إزالة الارتباط من تلك المهام.';
  }

  @override
  String get history => 'السجل';

  @override
  String get charts => 'الرسوم البيانية';

  @override
  String get noSessions => 'لا توجد جلسات بعد';

  @override
  String get noSessionsDescription => 'ابدأ تتبع الوقت لرؤية جلساتك هنا';

  @override
  String get noSessionsForPeriod => 'لم يتم العثور على جلسات للفترة الزمنية المحددة';

  @override
  String get noActiveTask => 'لا توجد مهمة نشطة';

  @override
  String get startTaskFromList => 'ابدأ مهمة من القائمة لبدء التتبع';

  @override
  String get startTime => 'وقت البدء';

  @override
  String get endTime => 'وقت الانتهاء';

  @override
  String get stop => 'إيقاف';

  @override
  String get endTimeAfterStart => 'يجب أن يكون وقت الانتهاء بعد وقت البدء';

  @override
  String get discardSession => 'تجاهل الجلسة';

  @override
  String get discardSessionMessage => 'هل أنت متأكد من أنك تريد تجاهل هذه الجلسة؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get cancel => 'إلغاء';

  @override
  String get swipeToStop => 'اسحب للإيقاف';

  @override
  String get filterByTask => 'تصفية حسب المهمة';

  @override
  String get allTasks => 'جميع المهام';

  @override
  String get filterByCriterion => 'تصفية حسب المعيار';

  @override
  String get allCriteria => 'جميع المعايير';

  @override
  String get timeSpentPerTask => 'الوقت المستغرق لكل مهمة';

  @override
  String get taskFrequencyOverTime => 'تكرار المهام بمرور الوقت';

  @override
  String get averageCriterionRatings => 'متوسط تقييمات المعايير';

  @override
  String get activityChart => 'مخطط النشاط';

  @override
  String get day => 'يوم';

  @override
  String get week => 'أسبوع';

  @override
  String get month => 'شهر';

  @override
  String get year => 'سنة';

  @override
  String get all => 'الكل';
}
