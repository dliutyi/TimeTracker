// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker سے خوش آمدید';

  @override
  String get welcomeDescription => 'وقت ٹریک کریں، کاموں کو ڈیٹا باکس میں ذخیرہ کریں، اور اپنی پیداوار کو آسانی سے لکھیں۔';

  @override
  String get continueButton => 'جاری رکھیں';

  @override
  String get activeTask => 'فعال کام';

  @override
  String get listOfTasks => 'کاموں کی فہرست';

  @override
  String get statistics => 'آئیٹماتک کی جانب سے';

  @override
  String get listOfCriteria => 'معیاروں کی فہرست';

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
  String get noCriteria => 'کوئی معیار نہیں';

  @override
  String get createFirstCriterion => 'شروع کرنے کے لیے اپنا پہلا معیار بنائیں';

  @override
  String get discrete => 'منفصل';

  @override
  String get continuous => 'مسلسل';

  @override
  String get selections => 'انتخابات';

  @override
  String get values => 'قدرات';

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
  String get minValue => 'کم سے کم قدر';

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
  String get selectionLimitRequired => 'انتخاب کی حد ضروری ہے';

  @override
  String get minMustBeLessThanMax => 'کم سے کم قدر زیادہ سے زیادہ قدر سے کم ہونی چاہیے';

  @override
  String get stepMustBeGreaterThanZero => 'قدم کی قدر 0 سے زیادہ ہونی چاہیے';

  @override
  String get deleteCriterion => 'معیار حذف کریں';

  @override
  String deleteCriterionWarning(Object name) {
    return 'کیا آپ واقعی اس معیار کو حذف کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'یہ معیار $count کاموں میں استعمال ہوتا ہے۔ وابستگی ان کاموں سے ہٹا دی جائے گی۔';
  }

  @override
  String get history => 'تاریخ';

  @override
  String get charts => 'چارٹس';

  @override
  String get noSessions => 'کوئی سیشن نہیں';

  @override
  String get noSessionsDescription => 'سیشنز یہاں دیکھنے کے لیے وقت ٹریک کرنا شروع کریں';

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
  String get swipeToStop => 'سوائپ کریں تاکہ روک سکے';

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

  @override
  String get listening => 'سننے کے لیے';

  @override
  String get taskName => 'کام کا نام';

  @override
  String get mottoOptional => 'مقولہ (آپشنل)';

  @override
  String get criteria => 'معیارات';

  @override
  String get noCriteriaAvailable => 'کوئی معیار نہیں';

  @override
  String get updateTask => 'کام اپ ڈیٹ کریں';

  @override
  String get nameTooLong => 'نام 32 حروف سے زیادہ ہونی چاہیے';

  @override
  String get mottoTooLong => 'مقولہ 128 حروف سے زیادہ ہونی چاہیے';

  @override
  String get editTask => 'کام ترمیم کریں';

  @override
  String get enable => 'فعال کریں';

  @override
  String get disable => 'غیر فعال کریں';

  @override
  String get enableTask => 'کام فعال کریں';

  @override
  String get disableTask => 'کام غیر فعال کریں';

  @override
  String get enableTaskMessage => 'کیا آپ واقعی اس کام کو فعال کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String get disableTaskMessage => 'کیا آپ واقعی اس کام کو غیر فعال کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String taskEnabled(Object name) {
    return 'کام فعال ہو گیا';
  }

  @override
  String taskDisabled(Object name) {
    return 'کام غیر فعال ہو گیا';
  }

  @override
  String get deleteTask => 'کام حذف کریں';

  @override
  String get deleteTaskMessage => 'کیا آپ واقعی اس کام کو حذف کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String taskDeleted(Object name) {
    return 'کام حذف ہو گیا';
  }

  @override
  String get anotherTaskActive => 'بھیڑا کام فعال ہے۔ آغاز کرنے سے پہلے روکیں۔';

  @override
  String errorActivatingTask(String error) {
    return 'کام فعال کرنے میں غلطی: $error';
  }

  @override
  String get delete => 'حذف کریں';

  @override
  String error(String error) {
    return 'غلطی: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'سیشن روکنے میں غلطی: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'سیشن مسترد کرنے میں غلطی';
  }

  @override
  String get noActiveTaskMessage => 'کوئی فعال کام نہیں';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'نامعلوم کام';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'کام لوڈ کرنے میں غلطی: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'معیار لوڈ کرنے میں غلطی: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'سیشن لوڈ کرنے میں غلطی: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'تمام سیشنز لوڈ کرنے میں غلطی: $error';
  }

  @override
  String get unknown => 'نامعلوم';

  @override
  String get exportData => 'ڈیٹا سراغ بھیں سکتے ہیں';

  @override
  String get exportAllAppDataToFile => 'تمام ڈیٹا باکس ڈیٹا کو فائل میں سراغ بھیں سکتے ہیں';

  @override
  String get importData => 'ڈیٹا وارد کریں';

  @override
  String get importDataFromFile => 'فائل سے ڈیٹا اندر آنے میں مطلوبہ کامیابی';

  @override
  String get chooseHowToExportData => 'ڈیٹا کیسے سراغ بھیں سکتے ہیں';

  @override
  String get saveToDevice => 'ڈیٹا باکس ڈیٹا کو سیٹک پر سراغ بھیں سکتے ہیں';

  @override
  String get share => 'شیئر کریں';

  @override
  String get saveExportFile => 'ڈیٹا باکس ڈیٹا کو فائل میں سراغ بھیں سکتے ہیں';

  @override
  String dataSavedTo(String path) {
    return 'ڈیٹا باکس میں محفوظ ہو گیا';
  }

  @override
  String get dataExportedSuccessfully => 'ڈیٹا باکس میں باہر آنے میں مطلوبہ کامیابی';

  @override
  String errorExportingData(String error) {
    return 'ڈیٹا باکس میں باہر آنے میں غلطی: $error';
  }

  @override
  String get dataImportedSuccessfully => 'ڈیٹا باکس میں اندر آنے میں مطلوبہ کامیابی';

  @override
  String errorImportingData(String error) {
    return 'ڈیٹا اندر آنے میں غلطی: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'تمام ڈیٹا بھی جدید سے جا سکتا ہے۔';

  @override
  String get import => 'وارد کریں';

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get english => 'انگریزی';

  @override
  String get spanish => 'اسپینیش';

  @override
  String get chinese => 'چینی';

  @override
  String get hindi => 'ہندی';

  @override
  String get arabic => 'اردو';

  @override
  String get portuguese => 'پورتگالی';

  @override
  String get bengali => 'بنگالی';

  @override
  String get japanese => 'جاپانی';

  @override
  String get punjabi => 'پنجابی';

  @override
  String get german => 'جرمن';

  @override
  String get javanese => 'جاوانی';

  @override
  String get korean => 'کوریائی';

  @override
  String get french => 'فرنسی';

  @override
  String get telugu => 'تلگو';

  @override
  String get marathi => 'مراتھی';

  @override
  String get turkish => 'ترکی';

  @override
  String get tamil => 'تامیل';

  @override
  String get vietnamese => 'ویتنامی';

  @override
  String get urdu => 'اردو';

  @override
  String get ukrainian => 'یوکرینی';

  @override
  String get italian => 'ایٹالی';

  @override
  String get russian => 'روسی';

  @override
  String get darkMode => 'تاریک رنگ';

  @override
  String get light => 'لاطیک';

  @override
  String get dark => 'تاریک';

  @override
  String get automatic => 'خودکار';

  @override
  String get followSystemSetting => 'سسٹم سیٹنگز کو پیروی کریں';

  @override
  String get dataManagement => 'ڈیٹا مینیجمنٹ';

  @override
  String get version => 'ورژن';

  @override
  String errorSavingTask(String error) {
    return 'کام ذخیرہ کرنے میں غلطی: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'معیار حذف کرنے میں غلطی: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'معیار \"$name\" حذف ہو گیا';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit قدم',
      one: '1 قدم',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values قدم',
      one: '1 قدم',
    );
    return 'منفصل معیار: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'مسلسل معیار: $minValue - $maxValue (قدم: $stepValue)';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'کیا آپ واقعی اس معیار کو حذف کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';
  }

  @override
  String valueX(int index) {
    return 'قدر $index';
  }

  @override
  String get minValueRequired => 'کم سے کم قدر ضروری ہے';

  @override
  String get maxValueRequired => 'زیادہ سے زیادہ قدر ضروری ہے';

  @override
  String get stepValueRequired => 'قدم کی قدر ضروری ہے';

  @override
  String get minValueMustBeANumber => 'کم سے کم قدر ایک نمبر ہونی چاہیے';

  @override
  String get maxValueMustBeANumber => 'زیادہ سے زیادہ قدر ایک نمبر ہونی چاہیے';

  @override
  String get stepValueMustBeAPositiveNumber => 'قدم کی قدر ایک مثبت نمبر ہونی چاہیے';

  @override
  String get minValueMustBeLessThanMaxValue => 'کم سے کم قدر زیادہ سے زیادہ قدر سے کم ہونی چاہیے';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'زیادہ سے زیادہ قدر کم سے کم قدر سے زیادہ ہونی چاہیے';

  @override
  String get stepValueMustBeGreaterThanZero => 'قدم کی قدر 0 سے زیادہ ہونی چاہیے';

  @override
  String get valueCannotBeEmpty => 'قدر خالی ہونی چاہیے';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'انتخاب کی حد 0 سے زیادہ ہونی چاہیے';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'انتخاب کی حد ایک مثبت نمبر ہونی چاہیے';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'منفصل معیارات کے لیے کم از کم ایک قدر ضروری ہے';

  @override
  String get selectIconType => 'ایک ایکون کی قسم منتخب کریں';

  @override
  String get icon => 'ایکون';

  @override
  String get emoji => 'ایموجی';

  @override
  String get enterCriterionName => 'معیار کا نام درج کریں';

  @override
  String get type => 'قسم';

  @override
  String get discreteConfiguration => 'منفصل ترتیب';

  @override
  String get howManyValuesCanBeSelected => 'کتنے قدرات منتخب کر سکتے ہیں؟';

  @override
  String get continuousConfiguration => 'مسلسل ترتیب';

  @override
  String get minimumAllowedValue => 'کم سے کم قدر';

  @override
  String get maximumAllowedValue => 'زیادہ سے زیادہ قدر';

  @override
  String get incrementDecrementStep => 'افزائش/کم کرنے کے لیے قدم';

  @override
  String errorSavingCriterion(String error) {
    return 'معیار ذخیرہ کرنے میں غلطی: $error';
  }

  @override
  String get editCriterion => 'معیار ترمیم کریں';

  @override
  String get selectIcon => 'ایک ایکون منتخب کریں';

  @override
  String get selectEmoji => 'ایموجی منتخب کریں';

  @override
  String get icons => 'ایک ایکون';

  @override
  String get emojis => 'ایموجی';

  @override
  String get selectColor => 'رنگ منتخب کریں';

  @override
  String get noCriteriaToRate => 'کوئی معیار نہیں';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'یہ کام کے لیے کوئی معیار نہیں ہے';

  @override
  String errorSavingRatings(String error) {
    return 'درجہ بندی ذخیرہ کرنے میں غلطی: $error';
  }

  @override
  String get skip => 'چھوڑیں';

  @override
  String get save => 'حفظ کریں';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'مدد: $minValue - $maxValue (قدم: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'کام کی درجہ بندی کریں: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'کم از کم $selectionLimit قدر منتخب کریں';
  }

  @override
  String get swipeToStart => 'سوائپ کریں تاکہ شروع ہو سکے';

  @override
  String get resumeSession => 'سیشن کو پھر آغاز کریں';

  @override
  String get resumeSessionMessage => 'کیا آپ واقعی اس سیشن کو پھر آغاز کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String get deleteSession => 'سیشن کو حذف کریں';

  @override
  String get deleteSessionMessage => 'کیا آپ واقعی اس سیشن کو حذف کرنا چاہتے ہیں؟ اس عمل کو واپس نہیں کیا جا سکتا۔';

  @override
  String get resume => 'پھر آغاز کریں';
}
