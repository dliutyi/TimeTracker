// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'مرحباً بك في YuDi Time Tracker';

  @override
  String get welcomeDescription => 'تتبع وقتك، وإدارة المهام، وتحليل إنتاجيتك بسهولة.';

  @override
  String get continueButton => 'استمرار';

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
  String get selections => 'الاختيارات';

  @override
  String get values => 'القيم';

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
  String get nameRequired => 'اسم المهمة مطلوب';

  @override
  String get atLeastOneValue => 'يجب أن يكون لديك قيمة واحدة على الأقل';

  @override
  String get selectionLimitRequired => 'حد الاختيار مطلوب';

  @override
  String get minMustBeLessThanMax => 'القيمة الدنيا يجب أن تكون أقل من القيمة العليا';

  @override
  String get stepMustBeGreaterThanZero => 'قيمة الخطوة يجب أن يكون أكبر من 0';

  @override
  String get deleteCriterion => 'حذف المعيار';

  @override
  String deleteCriterionWarning(Object name) {
    return 'هل أنت متأكد من أنك تريد حذف هذا المعيار؟ لا يمكن التراجع عن هذا الإجراء.';
  }

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
  String get week => 'الأسبوع';

  @override
  String get month => 'الشهر';

  @override
  String get year => 'السنة';

  @override
  String get all => 'الكل';

  @override
  String get listening => 'الاستماع...';

  @override
  String get taskName => 'اسم المهمة';

  @override
  String get mottoOptional => 'الشعار (اختياري)';

  @override
  String get criteria => 'المعايير';

  @override
  String get noCriteriaAvailable => 'لا توجد معايير متاحة. قم بإنشاء معايير أولاً.';

  @override
  String get updateTask => 'تحديث المهمة';

  @override
  String get nameTooLong => 'اسم المهمة يجب أن يكون أقل من 32 حرف';

  @override
  String get mottoTooLong => 'الشعار يجب أن يكون أقل من 128 حرف';

  @override
  String get editTask => 'تعديل المهمة';

  @override
  String get enable => 'تمكين';

  @override
  String get disable => 'تعطيل';

  @override
  String get enableTask => 'تمكين المهمة';

  @override
  String get disableTask => 'تعطيل المهمة';

  @override
  String get enableTaskMessage => 'هذا سيتمكن المهمة ويجعلها متاحة مرة أخرى.';

  @override
  String get disableTaskMessage => 'هل أنت متأكد من أنك تريد تعطيل هذه المهمة؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String taskEnabled(Object name) {
    return 'تم تمكين المهمة';
  }

  @override
  String taskDisabled(Object name) {
    return 'تم تعطيل المهمة';
  }

  @override
  String get deleteTask => 'حذف المهمة';

  @override
  String get deleteTaskMessage => 'هل أنت متأكد من أنك تريد حذف هذه المهمة؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String taskDeleted(Object name) {
    return 'تم حذف المهمة';
  }

  @override
  String get anotherTaskActive => 'مهمة اخرى مفعلة. قم بإيقافها أولاً.';

  @override
  String errorActivatingTask(String error) {
    return 'خطأ في تنشيط المهمة: $error';
  }

  @override
  String get delete => 'حذف';

  @override
  String error(String error) {
    return 'خطأ: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'خطأ في إيقاف الجلسة: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'خطأ في تجاهل الجلسة: $error';
  }

  @override
  String get noActiveTaskMessage => 'ابدأ مهمة من القائمة لبدء التتبع';

  @override
  String get dateFormat => 'MMMM d • HH:mm';

  @override
  String get unknownTask => 'مهمة غير معروفة';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'خطأ في تحميل المهام: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'خطأ في تحميل المعايير: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'خطأ في تحميل الجلسات: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'خطأ في تحميل جميع الجلسات: $error';
  }

  @override
  String get unknown => 'غير معروف';

  @override
  String get exportData => 'تصدير البيانات';

  @override
  String get exportAllAppDataToFile => 'تصدير جميع بيانات التطبيق إلى ملف';

  @override
  String get importData => 'استيراد البيانات';

  @override
  String get importDataFromFile => 'استيراد البيانات من ملف';

  @override
  String get chooseHowToExportData => 'اختر كيفية التصدير البيانات:';

  @override
  String get saveToDevice => 'حفظ على الجهاز';

  @override
  String get share => 'مشاركة';

  @override
  String get saveExportFile => 'حفظ ملف التصدير';

  @override
  String dataSavedTo(String path) {
    return 'تم حفظ البيانات في: $path';
  }

  @override
  String get dataExportedSuccessfully => 'تم تصدير البيانات بنجاح';

  @override
  String errorExportingData(String error) {
    return 'خطأ في تصدير البيانات: $error';
  }

  @override
  String get dataImportedSuccessfully => 'تم استيراد البيانات بنجاح';

  @override
  String errorImportingData(String error) {
    return 'خطأ في استيراد البيانات: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'جميع البيانات الموجودة سيتم حذفها بشكل دائم.';

  @override
  String get import => 'استيراد';

  @override
  String get language => 'اللغة';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get english => 'الإنجليزية';

  @override
  String get spanish => 'الإسبانية';

  @override
  String get chinese => 'الصينية';

  @override
  String get hindi => 'الهندية';

  @override
  String get arabic => 'العربية';

  @override
  String get portuguese => 'البرتغالية';

  @override
  String get bengali => 'بنغالي';

  @override
  String get japanese => 'اليابانية';

  @override
  String get punjabi => 'البنجابية';

  @override
  String get german => 'الألمانية';

  @override
  String get javanese => 'اليابانية';

  @override
  String get korean => 'الكورية';

  @override
  String get french => 'الفرنسية';

  @override
  String get telugu => 'التلغوية';

  @override
  String get marathi => 'الماراثي';

  @override
  String get turkish => 'التركية';

  @override
  String get tamil => 'التاميلية';

  @override
  String get vietnamese => 'الفيتنامية';

  @override
  String get urdu => 'الأوردوية';

  @override
  String get ukrainian => 'الأوكرانية';

  @override
  String get italian => 'الإيطالية';

  @override
  String get russian => 'الروسية';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get light => 'الفاتح';

  @override
  String get dark => 'داكن';

  @override
  String get automatic => 'تلقائي';

  @override
  String get followSystemSetting => 'اتبع إعدادات النظام';

  @override
  String get dataManagement => 'إدارة البيانات';

  @override
  String get version => 'الإصدار';

  @override
  String errorSavingTask(String error) {
    return 'خطأ في حفظ المهمة: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'خطأ في حذف المعيار: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'المعيار \"$name\" تم حذفه';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit اختيارات',
      one: '1 اختيار',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values قيم',
      one: '1 قيمة',
    );
    return 'منفصل: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'مستمر: $minValue-$maxValue, خطوة $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'هل أنت متأكد من أنك تريد حذف المعيار \"$name\"? لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String valueX(int index) {
    return 'القيمة $index';
  }

  @override
  String get minValueRequired => 'القيمة الدنيا مطلوبة';

  @override
  String get maxValueRequired => 'القيمة العلية مطلوبة';

  @override
  String get stepValueRequired => 'قيمة الخطوة مطلوبة';

  @override
  String get minValueMustBeANumber => 'القيمة الدنيا يجب أن تكون رقما';

  @override
  String get maxValueMustBeANumber => 'القيمة العليا يجب أن تكون رقما';

  @override
  String get stepValueMustBeAPositiveNumber => 'قيمة الخطوة يجب أن يكون رقما موجبا';

  @override
  String get minValueMustBeLessThanMaxValue => 'القيمة الدنيا يجب أن تكون أقل من القيمة العليا';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'القيمة العليا يجب أن تكون أكبر من القيمة الدنيا';

  @override
  String get stepValueMustBeGreaterThanZero => 'قيمة الخطوة يجب أن يكون أكبر من 0';

  @override
  String get valueCannotBeEmpty => 'القيمة لا يمكن أن تكون فارغة';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'حد الاختيار يجب أن يكون أكبر من 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'حد الاختيار يجب أن يكون رقما موجبا';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'يجب أن يكون لديك قيمة واحدة على الأقل للمعايير المنفصلة';

  @override
  String get selectIconType => 'اختر نوع الأيقونة';

  @override
  String get icon => 'الأيقونة';

  @override
  String get emoji => 'الإيموجي';

  @override
  String get enterCriterionName => 'أدخل اسم المعيار';

  @override
  String get type => 'النوع';

  @override
  String get discreteConfiguration => 'المعايير المنفصلة';

  @override
  String get howManyValuesCanBeSelected => 'كم قيمة يمكن اختيارها';

  @override
  String get continuousConfiguration => 'المعايير المستمرة';

  @override
  String get minimumAllowedValue => 'القيمة الدنيا المسموح بها';

  @override
  String get maximumAllowedValue => 'القيمة العليا المسموح بها';

  @override
  String get incrementDecrementStep => 'زيادة/نقصان الخطوة';

  @override
  String errorSavingCriterion(String error) {
    return 'خطأ في حفظ المعيار: $error';
  }

  @override
  String get editCriterion => 'تعديل المعيار';

  @override
  String get selectIcon => 'اختر الأيقونة';

  @override
  String get selectEmoji => 'اختر الإيموجي';

  @override
  String get icons => 'الأيقونات';

  @override
  String get emojis => 'الإيموجيات';

  @override
  String get selectColor => 'اختر اللون';

  @override
  String get noCriteriaToRate => 'لا توجد معايير للتقييم';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'هذه المهمة ليس لديها معايير معينة.';

  @override
  String errorSavingRatings(String error) {
    return 'خطأ في حفظ التقييمات: $error';
  }

  @override
  String get skip => 'تخطي';

  @override
  String get save => 'حفظ';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'المدى: $minValue - $maxValue (خطوة: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'تقييم المهمة';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'اختر حتى $selectionLimit قيمة';
  }

  @override
  String get swipeToStart => 'اسحب للبدء';
}
