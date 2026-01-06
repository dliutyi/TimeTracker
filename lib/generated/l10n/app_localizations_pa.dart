// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker ਵਿੱਚ ਤੁਹਾਡਾ ਸਵਾਗਤ ਹੈ';

  @override
  String get welcomeDescription => 'ਆਪਣੇ ਸਮਾਂ ਟਰੈਕ ਕਰੋ, ਕੰਮ ਪਰਿਚਾਲਨ ਅਤੇ ਆਪਣੀ ਉਤਪਾਦਕਤਾ ਆਸਾਨੀ ਨਾਲ ਵਿਸ਼ਲੇ਷ਣ ਕਰੋ।';

  @override
  String get continueButton => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get activeTask => 'ਸਰਗਰਮ ਕੰਮ';

  @override
  String get listOfTasks => 'ਕੰਮਾਂ ਦਾ ਸੂਚੀ';

  @override
  String get statistics => 'ਸਾਂਖਿਕ ਦਰਸ਼ਨ';

  @override
  String get listOfCriteria => 'ਮਾਪਦੰਡਾਂ ਦਾ ਸੂਚੀ';

  @override
  String get settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get addTask => 'ਕੰਮ ਜੋੜੋ';

  @override
  String get generalMotto => 'ਸਾਮਾਨਿਕ ਆਦਰਸ਼ ਵਾਕ';

  @override
  String get noTasks => 'ਕੋਈ ਕੰਮ ਨਹੀਂ';

  @override
  String get createFirstTask => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਆਪਣਾ ਪਹਿਲਾ ਕੰਮ ਬਣਾਓ';

  @override
  String get addCriterion => 'ਮਾਪਦੰਡ ਜੋੜੋ';

  @override
  String get noCriteria => 'ਕੋਈ ਮਾਪਦੰਡ ਨਹੀਂ';

  @override
  String get createFirstCriterion => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਆਪਣਾ ਪਹਿਲਾ ਮਾਪਦੰਡ ਬਣਾਓ';

  @override
  String get discrete => 'ਵੱਖਰਾ';

  @override
  String get continuous => 'ਲਗਾਤਾਰ';

  @override
  String get selections => 'ਚੁਣਾਂ';

  @override
  String get values => 'ਮੁੱਲਾਂ';

  @override
  String get step => 'ਕਦਮ';

  @override
  String get criterionName => 'ਮਾਪਦੰਡ ਦਾ ਨਾਮ';

  @override
  String get criterionType => 'ਮਾਪਦੰਡ ਦਾ ਕਿਸਮ';

  @override
  String get addValue => 'ਮੁੱਲ ਜੋੜੋ';

  @override
  String get selectionLimit => 'ਚੁਣਨ ਮਰਯਾਦ';

  @override
  String get minValue => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ';

  @override
  String get maxValue => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ';

  @override
  String get stepValue => 'ਕਦਮ ਮੁੱਲ';

  @override
  String get value => 'ਮੁੱਲ';

  @override
  String get updateCriterion => 'ਮਾਪਦੰਡ ਅਦਿਤ ਕਰੋ';

  @override
  String get discard => 'ਰੱਦ ਕਰੋ';

  @override
  String get nameRequired => 'ਨਾਮ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get atLeastOneValue => 'ਘੱਟੋ-ਘੱਟ ਇੱਕ ਮੁੱਲ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get selectionLimitRequired => 'ਚੁਣਨ ਮਰਯਾਦ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get minMustBeLessThanMax => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get stepMustBeGreaterThanZero => 'ਕਦਮ ਮੁੱਲ 0 ਤੋਂ ਜ਼ਿਆਦਾ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get deleteCriterion => 'ਮਾਪਦੰਡ ਹਟਾਓ';

  @override
  String deleteCriterionWarning(Object name) {
    return 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਸ ਮਾਪਦੰਡ ਨੂੰ ਹਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'ਇਹ ਮਾਪਦੰਡ $count ਕੰਮਾਂ ਵਿੱਚ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ। ਸੰਬੰਧ ਉਨ੍ਹਾਂ ਕੰਮਾਂ ਤੋਂ ਹਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ।';
  }

  @override
  String get history => 'ਇਤਿਹਾਸ';

  @override
  String get charts => 'ਚਾਰਟ';

  @override
  String get noSessions => 'ਕੋਈ ਸੈਸ਼ਨ ਨਹੀਂ';

  @override
  String get noSessionsDescription => 'ਸਮਾਂ ਟਰੈਕ ਕਰਨ ਲਈ ਸ਼ੁਰੂ ਕਰੋ ਅਤੇ ਇਥੇ ਆਪਣੇ ਸੈਸ਼ਨਾਂ ਨੂੰ ਦੇਖੋ';

  @override
  String get noSessionsForPeriod => 'ਨਿਰਬੈਠਿਤ ਸਮਾਂ ਅੰਤਰ ਲਈ ਕੋਈ ਸੈਸ਼ਨ ਉਪਲੱਬਧ ਨਹੀਂ ਹੈ';

  @override
  String get noActiveTask => 'ਕੋਈ ਸਰਗਰਮ ਕੰਮ ਨਹੀਂ';

  @override
  String get startTaskFromList => 'ਕੰਮ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਕੰਮਾਂ ਦਾ ਸੂਚੀ ਤੋਂ ਕੰਮ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get startTime => 'ਸਮਾਪਤੀ ਸਮਾਂ';

  @override
  String get endTime => 'ਸਮਾਪਤੀ ਸਮਾਂ';

  @override
  String get stop => 'ਥਾਂਬਾਓ';

  @override
  String get endTimeAfterStart => 'ਸਮਾਪਤੀ ਸਮਾਂ ਬਾਅਦ ਸਮਾਂ';

  @override
  String get discardSession => 'ਸੈਸ਼ਨ ਰੱਦ ਕਰੋ';

  @override
  String get discardSessionMessage => 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਸ ਸੈਸ਼ਨ ਨੂੰ ਰੱਦ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get swipeToStop => 'ਸਵਾਇਪ ਕਰੋ ਥਾਂਬਾਓ';

  @override
  String get filterByTask => 'ਕੰਮ ਦੁਆਰਾ ਫਿਲਟਰ ਕਰੋ';

  @override
  String get allTasks => 'ਸਾਰੇ ਕੰਮ';

  @override
  String get filterByCriterion => 'ਮਾਪਦੰਡ ਦੁਆਰਾ ਫਿਲਟਰ ਕਰੋ';

  @override
  String get allCriteria => 'ਸਾਰੇ ਮਾਪਦੰਡ';

  @override
  String get timeSpentPerTask => 'ਕੰਮ ਦੇ ਵਰਤੇ ਸਮਾਂ';

  @override
  String get taskFrequencyOverTime => 'ਸਮਾਂ ਦੇ ਦਰਸ਼ਨ ਕੰਮ ਵਾਰਵਾਰਤਾ';

  @override
  String get averageCriterionRatings => 'ਔਸਤ ਮਾਪਦੰਡ ਰੇਟਿੰਗ';

  @override
  String get activityChart => 'ਗਤੀਵਿਧੀ ਚਾਰਟ';

  @override
  String get day => 'ਦਿਨ';

  @override
  String get week => 'ਹਫਤ';

  @override
  String get month => 'ਮਹੀਨਾ';

  @override
  String get year => 'ਸਾਲ';

  @override
  String get all => 'ਸਾਰਾ';

  @override
  String get listening => 'ਸ਼ਬਦੀ';

  @override
  String get taskName => 'ਕੰਮ ਦਾ ਨਾਮ';

  @override
  String get mottoOptional => 'ਆਦਰਸ਼ (ਵਰਤੋਂਕਾਰੀ)';

  @override
  String get criteria => 'ਮਾਪਦੰਡ';

  @override
  String get noCriteriaAvailable => 'ਕੋਈ ਮਾਪਦੰਡ ਉਪਲੱਬਧ ਨਹੀਂ ਹੈ';

  @override
  String get updateTask => 'ਕੰਮ ਅਦਿਤ ਕਰੋ';

  @override
  String get nameTooLong => 'ਨਾਮ 32 ਅੰਕਾਂ ਤੋਂ ਘੱਟ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get mottoTooLong => 'ਮਾਤਰਾ 128 ਅੰਕਾਂ ਤੋਂ ਘੱਟ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get editTask => 'ਕੰਮ ਸੋਧੋ';

  @override
  String get enable => 'ਸਕਰਿਯਾਤ ਕਰੋ';

  @override
  String get disable => 'ਅਕਰਿਯਾਤ ਕਰੋ';

  @override
  String get enableTask => 'ਕੰਮ ਸਕਰਿਯਾਤ ਕਰੋ';

  @override
  String get disableTask => 'ਕੰਮ ਅਕਰਿਯਾਤ ਕਰੋ';

  @override
  String get enableTaskMessage => 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਸ ਕੰਮ ਨੂੰ ਸਕਰਿਯਾਤ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get disableTaskMessage => 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਸ ਕੰਮ ਨੂੰ ਅਕਰਿਯਾਤ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String taskEnabled(Object name) {
    return 'ਕੰਮ ਸਕਰਿਯਾਤ ਕਰਾਇਆ ਗਿਆ ਹੈ';
  }

  @override
  String taskDisabled(Object name) {
    return 'ਕੰਮ ਅਕਰਿਯਾਤ ਕਰਾਇਆ ਗਿਆ ਹੈ';
  }

  @override
  String get deleteTask => 'ਕੰਮ ਹਟਾਓ';

  @override
  String get deleteTaskMessage => 'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਸ ਕੰਮ ਨੂੰ ਹਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String taskDeleted(Object name) {
    return 'ਕੰਮ ਹਟਾਇਆ ਗਿਆ ਹੈ';
  }

  @override
  String get anotherTaskActive => 'ਹੋਰ ਕੰਮ ਸਰਗਰਮ ਹੈ। ਕੋਈ ਕੰਮ ਰੋਕੋ।';

  @override
  String errorActivatingTask(String error) {
    return 'ਕੰਮ ਸਕਰਿਯਾਤ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get delete => 'ਹਟਾਓ';

  @override
  String error(String error) {
    return 'ਤਰੰਗ: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'ਸੈਸ਼ਨ ਥਾਂਬਣ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'ਸੈਸ਼ਨ ਰੱਦ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get noActiveTaskMessage => 'ਕੰਮ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਕੰਮਾਂ ਦੀ ਸੂਚੀ ਤੋਂ ਕੰਮ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'ਅਣਜਾਣ ਕੰਮ';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'ਕੰਮ ਲੋਡ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'ਮਾਪਦੰਡ ਲੋਡ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'ਸੈਸ਼ਨ ਲੋਡ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'ਸਾਰੇ ਸੈਸ਼ਨ ਲੋਡ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get unknown => 'ਅਣਜਾਣ';

  @override
  String get exportData => 'ਡਾਟਾ ਨਿਰਯਾਤ ਕਰੋ';

  @override
  String get exportAllAppDataToFile => 'ਸਾਰੇ ਡਾਟਾ ਫਾਈਲ ਨਿਰਯਾਤ ਕਰੋ';

  @override
  String get importData => 'ਡਾਟਾ ਆਯਾਤ ਕਰੋ';

  @override
  String get importDataFromFile => 'ਫਾਈਲ ਤੋਂ ਡਾਟਾ ਆਯਾਤ ਕਰੋ';

  @override
  String get chooseHowToExportData => 'ਡਾਟਾ ਨਿਰਯਾਤ ਕਰਨ ਦੀ ਵਰਤੋਂ ਕਰੋ';

  @override
  String get saveToDevice => 'ਡਿਵਾਈਸ ਤੋਂ ਸਹੇਜਣ';

  @override
  String get share => 'ਸਾਂਝਾ ਕਰੋ';

  @override
  String get saveExportFile => 'ਨਿਰਯਾਤ ਫਾਈਲ ਸਹੇਜਣ';

  @override
  String dataSavedTo(String path) {
    return 'ਡਾਟਾ ਸਹੇਜਿਆ ਗਿਆ ਹੈ';
  }

  @override
  String get dataExportedSuccessfully => 'ਡਾਟਾ ਨਿਰਯਾਤ ਕੀਤਾ ਗਿਆ ਹੈ';

  @override
  String errorExportingData(String error) {
    return 'ਡਾਟਾ ਨਿਰਯਾਤ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get dataImportedSuccessfully => 'ਡਾਟਾ ਆਯਾਤ ਕੀਤਾ ਗਿਆ ਹੈ';

  @override
  String errorImportingData(String error) {
    return 'ਡਾਟਾ ਆਯਾਤ ਕਰਨ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'ਸਾਰੇ ਡਾਟਾ ਸਥायਤ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ।';

  @override
  String get import => 'ਆਯਾਤ ਕਰੋ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get selectLanguage => 'ਭਾ਷ਾ ਚੁਣੋ';

  @override
  String get english => 'ਇੰਗਲਿਸ਼';

  @override
  String get spanish => 'ਸਪੈਨਿਸ਼';

  @override
  String get chinese => 'ਚੀਨੀ';

  @override
  String get hindi => 'ਹਿੰਦੀ';

  @override
  String get arabic => 'ਅਰਬੀ';

  @override
  String get portuguese => 'ਪੋਰਟਗੀਜ';

  @override
  String get bengali => 'ਬੰਗਾਲੀ';

  @override
  String get japanese => 'ਜਾਪਾਨੀ';

  @override
  String get punjabi => 'ਪੰਜਾਬੀ';

  @override
  String get german => 'ਜਰਮਨ';

  @override
  String get javanese => 'ਜਵਾਹਰੀ';

  @override
  String get korean => 'ਕੋਰੀਅਨ';

  @override
  String get french => 'ਫਰੈਂਚ';

  @override
  String get telugu => 'ਤੇਲੁਗੁ';

  @override
  String get marathi => 'ਮਰਾਠੀ';

  @override
  String get turkish => 'ਤੁਰਕੀ';

  @override
  String get tamil => 'ਤਮਿਲ';

  @override
  String get vietnamese => 'ਵਿਏਟਨਾਮੀ';

  @override
  String get urdu => 'ਉਰਦੂ';

  @override
  String get ukrainian => 'ਯੁਕਰੀਨੀਆਈ';

  @override
  String get italian => 'ਇਤਾਲੀਆਈ';

  @override
  String get russian => 'ਰੂਸੀ';

  @override
  String get darkMode => 'ਗੂੰਮ ਮੋਡ';

  @override
  String get light => 'ਹਲਕਾ';

  @override
  String get dark => 'ਗੂੰਮ';

  @override
  String get automatic => 'ਆਪਣੀ ਕਾਰਵਾਈ';

  @override
  String get followSystemSetting => 'ਸਿਸਟਮ ਸੈਟਿੰਗ ਅਨੁਸਾਰ';

  @override
  String get dataManagement => 'ਡਾਟਾ ਪ੍ਰਬੰਧਨ';

  @override
  String get version => 'ਸਂਸਕਰਣ';

  @override
  String errorSavingTask(String error) {
    return 'ਕੰਮ ਸਹੇਜਣ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'ਮਾਪਦੰਡ ਹਟਾਉਣ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'ਮਾਪਦੰਡ \"$name\" ਹਟਾਇਆ ਗਿਆ ਹੈ';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit ਮੁੱਲ',
      one: '1 ਮੁੱਲ',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values ਮੁੱਲ',
      one: '1 ਮੁੱਲ',
    );
    return 'ਵੱਖਰਾ ਮਾਪਦੰਡ: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'ਲਗਾਤਾਰ ਮਾਪਦੰਡ';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'ਮਾਪਦੰਡ \"$name\" ਹਟਾਨੀ ਲਈ ਸੁਨਿਸ਼ਚਿਤ ਕਰੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਵਾਪਸ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';
  }

  @override
  String valueX(int index) {
    return 'ਮੁੱਲ $index';
  }

  @override
  String get minValueRequired => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get maxValueRequired => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get stepValueRequired => 'ਕਦਮ ਮੁੱਲ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get minValueMustBeANumber => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get maxValueMustBeANumber => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get stepValueMustBeAPositiveNumber => 'ਕਦਮ ਮੁੱਲ ਧਨਾਤਮਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get minValueMustBeLessThanMaxValue => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get stepValueMustBeGreaterThanZero => 'ਕਦਮ ਮੁੱਲ 0 ਤੋਂ ਜ਼ਿਆਦਾ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get valueCannotBeEmpty => 'ਮੁੱਲ ਖਾਲੀ ਹਨ ਨਹੀਂ ਸਕਦਾ';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'ਚੁਣਨ ਮਰਯਾਦ 0 ਤੋਂ ਜ਼ਿਆਦਾ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'ਚੁਣਨ ਮਰਯਾਦ ਧਨਾਤਮਕ ਸੰਖਿਆ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'ਵੱਖਰਾ ਮਾਪਦੰਡ ਲਈ ਘੱਟੋ-ਘੱਟ ਇੱਕ ਮੁੱਲ ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get selectIconType => 'ਆਈਕਾਨ ਕਿਸਮ ਚੁਣੋ';

  @override
  String get icon => 'ਆਈਕਾਨ';

  @override
  String get emoji => 'ਇਮੋਜੀ';

  @override
  String get enterCriterionName => 'ਮਾਪਦੰਡ ਦਾ ਨਾਮ ਦਿਓ';

  @override
  String get type => 'ਕਿਸਮ';

  @override
  String get discreteConfiguration => 'ਵੱਖਰਾ ਸੰਰਚਨਾ';

  @override
  String get howManyValuesCanBeSelected => 'ਕਿੰਨੇ ਮੁੱਲਾਂ ਚੁਣਨੇ ਸਕਦੇ ਹੋਂ?';

  @override
  String get continuousConfiguration => 'ਲਗਾਤਾਰ ਸੰਰਚਨਾ';

  @override
  String get minimumAllowedValue => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ';

  @override
  String get maximumAllowedValue => 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ';

  @override
  String get incrementDecrementStep => 'ਵੱਧ/ਘੱਟ ਕਰਨ ਲਈ ਕਦਮ';

  @override
  String errorSavingCriterion(String error) {
    return 'ਮਾਪਦੰਡ ਸਹੇਜਣ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get editCriterion => 'ਮਾਪਦੰਡ ਸੋਧੋ';

  @override
  String get selectIcon => 'ਆਈਕਾਨ ਚੁਣੋ';

  @override
  String get selectEmoji => 'ਇਮੋਜੀ ਚੁਣੋ';

  @override
  String get icons => 'ਆਈਕਾਨ';

  @override
  String get emojis => 'ਇਮੋਜੀ';

  @override
  String get selectColor => 'ਰੰਗ ਚੁਣੋ';

  @override
  String get noCriteriaToRate => 'ਮਾਪਦੰਡ ਰੇਟਿੰਗ ਕਰਨ ਲਈ ਕੋਈ ਮਾਪਦੰਡ ਉਪਲੱਬਧ ਨਹੀਂ ਹੈ';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'ਇਹ ਕੰਮ ਲਈ ਕੋਈ ਮਾਪਦੰਡ ਨਹੀਂ ਹੈ';

  @override
  String errorSavingRatings(String error) {
    return 'ਰੇਟਿੰਗ ਸਹੇਜਣ ਲਈ ਤਰੰਗ: $error';
  }

  @override
  String get skip => 'ਛੋਡੋ';

  @override
  String get save => 'ਸਹੇਜਣ';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'ਰੇਂਜ: $minValue - $maxValue (ਕਦਮ: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'ਕੰਮ ਰੇਟਿੰਗ ਕਰੋ';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'ਅਧੀਨਾਂ ਦਾ ਮੁੱਲ $selectionLimit ਚੁਣੋ';
  }

  @override
  String get swipeToStart => 'ਸਵਾਇਪ ਕਰੋ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get resumeSession => 'ਸਤਰ ਪੁਨਰਾਰਂਭ ਕਰੋ';

  @override
  String get resumeSessionMessage => 'ਕੀ ਤੁਸੀਂ ਵਾਕੀ ਇਸ ਸਤਰ ਨੂੰ ਪੁਨਰਾਰਂਭ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਪੂਰਵਵਤ ਨਹੀਂ ਕਿਆ ਜਾ ਸਕਦਾ।';

  @override
  String get deleteSession => 'ਸਤਰ ਹਟਾਓ';

  @override
  String get deleteSessionMessage => 'ਕੀ ਤੁਸੀਂ ਵਾਕੀ ਇਸ ਸਤਰ ਨੂੰ ਹਟਾਓ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਪੂਰਵਵਤ ਨਹੀਂ ਕਿਆ ਜਾ ਸਕਦਾ।';

  @override
  String get resume => 'ਪੁਨਰਾਰਂਭ ਕਰੋ';
}
