// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker-க்கு வரவேற்கிறோம்';

  @override
  String get welcomeDescription => 'நேரத்தை கண்காணிக்கவும், பணிகளை நிர்வகிக்கவும், உதபாக்கத்தை எளிதாக விவரிக்கவும்.';

  @override
  String get continueButton => 'தொடரவும்';

  @override
  String get activeTask => 'செயலில் உள்ள பணி';

  @override
  String get listOfTasks => 'பணிகள் பட்டியல்';

  @override
  String get statistics => 'புள்ளிவிவரங்கள்';

  @override
  String get listOfCriteria => 'அளவுகோல்கள் பட்டியல்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get addTask => 'பணியைச் சேர்';

  @override
  String get generalMotto => 'பொதுவான முக்கியம்';

  @override
  String get noTasks => 'பணிகள் இல்லை';

  @override
  String get createFirstTask => 'தொடங்க உங்கள் முதல் பணியை உருவாக்கவும்';

  @override
  String get addCriterion => 'அளவுகோலைச் சேர்';

  @override
  String get noCriteria => 'அளவுகோல்கள் இல்லை';

  @override
  String get createFirstCriterion => 'தொடங்க உங்கள் முதல் அளவுகோலை உருவாக்கவும்';

  @override
  String get discrete => 'தனித்த';

  @override
  String get continuous => 'தொடர்ச்சியான';

  @override
  String get selections => 'தேர்வுகள்';

  @override
  String get values => 'மதிப்புகள்';

  @override
  String get step => 'படி';

  @override
  String get criterionName => 'அளவுகோல் பெயர்';

  @override
  String get criterionType => 'அளவுகோல் வகை';

  @override
  String get addValue => 'மதிப்பைச் சேர்';

  @override
  String get selectionLimit => 'தேர்ந்தெடுக்கப்பட்ட அளவு';

  @override
  String get minValue => 'குறைந்தபட்ச மதிப்பு';

  @override
  String get maxValue => 'அதிகபட்ச மதிப்பு';

  @override
  String get stepValue => 'படி மதிப்பு';

  @override
  String get value => 'மதிப்பு';

  @override
  String get updateCriterion => 'அளவுகோலை புதுப்பிக்கவும்';

  @override
  String get discard => 'நிராகரி';

  @override
  String get nameRequired => 'பெயர் தேவை';

  @override
  String get atLeastOneValue => 'குறைந்தபட்சம் ஒரு மதிப்பு தேவை';

  @override
  String get selectionLimitRequired => 'தேர்ந்தெடுக்கப்பட்ட அளவு தேவை';

  @override
  String get minMustBeLessThanMax => 'குறைந்தபட்ச மதிப்பு அதிகபட்ச மதிப்பை விட குறைந்ததாக இருக்க வேண்டும்';

  @override
  String get stepMustBeGreaterThanZero => 'படி மதிப்பு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get deleteCriterion => 'அளவுகோலை நீக்கு';

  @override
  String deleteCriterionWarning(Object name) {
    return 'இந்த அளவுகோலை நீக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'இந்த அளவுகோல் $count பணிகளில் பயன்படுத்தப்படுகிறது. அந்த பணிகளிலிருந்து தொடர்பு நீக்கப்படும்.';
  }

  @override
  String get history => 'வரலாறு';

  @override
  String get charts => 'விளக்கப்படங்கள்';

  @override
  String get noSessions => 'அமர்வுகள் இல்லை';

  @override
  String get noSessionsDescription => 'அமர்வுகளை பார்க்க நேரத்தை பின்பற்றவும்';

  @override
  String get noSessionsForPeriod => 'தேர்ந்தெடுக்கப்பட்ட காலாவதியில் அமர்வுகள் இல்லை';

  @override
  String get noActiveTask => 'செயலில் உள்ள பணியை இல்லை';

  @override
  String get startTaskFromList => 'பணிகள் பட்டியலிலிருந்து பணியை தொடங்கவும்';

  @override
  String get startTime => 'தொடக்க நேரம்';

  @override
  String get endTime => 'முடிவு நேரம்';

  @override
  String get stop => 'நிறுத்தவும்';

  @override
  String get endTimeAfterStart => 'முடிவு நேரம் தொடக்க நேரத்திற்குப் பிறகு இருக்க வேண்டும்';

  @override
  String get discardSession => 'அமர்வை நிராகரி';

  @override
  String get discardSessionMessage => 'இந்த அமர்வை நிராகரிக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get swipeToStop => 'நிறுத்தவும்';

  @override
  String get filterByTask => 'பணியால் வடிகட்டு';

  @override
  String get allTasks => 'அனைத்து பணிகள்';

  @override
  String get filterByCriterion => 'அளவுகோலால் வடிகட்டு';

  @override
  String get allCriteria => 'அனைத்து அளவுகோல்கள்';

  @override
  String get timeSpentPerTask => 'பணிக்கு செலவிடப்பட்ட நேரம்';

  @override
  String get taskFrequencyOverTime => 'நேரத்தில் பணிகளின் அடிப்படையில் அமர்வுகள்';

  @override
  String get averageCriterionRatings => 'சராசரி அளவுகோல் மதிப்பீடுகள்';

  @override
  String get activityChart => 'செயல்பாட்டு விளக்கப்படம்';

  @override
  String get day => 'நாள்';

  @override
  String get week => 'வாரம்';

  @override
  String get month => 'மாதம்';

  @override
  String get year => 'ஆண்டு';

  @override
  String get all => 'அனைத்தும்';

  @override
  String get listening => 'செவிக்குறிப்பாக்கு';

  @override
  String get taskName => 'பணிப்பட்டது';

  @override
  String get mottoOptional => 'முக்கியம் (ஒப்பீட்டு)';

  @override
  String get criteria => 'அளவுகோல்கள்';

  @override
  String get noCriteriaAvailable => 'அளவுகோல்கள் இல்லை';

  @override
  String get updateTask => 'பணியை புதுப்பிக்கவும்';

  @override
  String get nameTooLong => 'பெயர் 32 எழுத்துக்களுக்கு மிகவும் நீளமாக இருக்க வேண்டும்';

  @override
  String get mottoTooLong => 'முக்கியம் 128 எழுத்துக்களுக்கு மிகவும் நீளமாக இருக்க வேண்டும்';

  @override
  String get editTask => 'பணியை திருத்து';

  @override
  String get enable => 'செயலில் உள்ளது';

  @override
  String get disable => 'நிறுத்து';

  @override
  String get enableTask => 'பணியை செயலில் உள்ளது';

  @override
  String get disableTask => 'பணியை நிறுத்து';

  @override
  String get enableTaskMessage => 'இந்த பணியை செயலில் உள்ளது விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String get disableTaskMessage => 'இந்த பணியை நிறுத்த விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String taskEnabled(Object name) {
    return 'பணியை செயலில் உள்ளது';
  }

  @override
  String taskDisabled(Object name) {
    return 'பணியை அகரியாத்தாக்கப்பட்டது';
  }

  @override
  String get deleteTask => 'பணியை நீக்கு';

  @override
  String get deleteTaskMessage => 'இந்த பணியை நீக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String taskDeleted(Object name) {
    return 'பணியை நீக்கப்பட்டது';
  }

  @override
  String get anotherTaskActive => 'மற்றொரு பணி செயலில் உள்ளது. முதலில் அதை நிறுத்தவும்.';

  @override
  String errorActivatingTask(String error) {
    return 'பணியை செயலில் உள்ளது விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String get delete => 'நீக்கு';

  @override
  String error(String error) {
    return 'பிழை: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'அமர்வை நிறுத்த விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'அமர்வை நிராகரிக்க விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String get noActiveTaskMessage => 'செயலில் உள்ள பணியை இல்லை';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'அறியப்படாத பணி';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'பணிகளை ஏற்ற விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'அளவுகோல்களை ஏற்ற விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'அமர்வுகளை ஏற்ற விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'அனைத்து அமர்வுகளை ஏற்ற விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String get unknown => 'அறியப்படாத';

  @override
  String get exportData => 'தரவு வெளியேற்று';

  @override
  String get exportAllAppDataToFile => 'அனைத்து தரவுகளை ஒரு கோப்பில் வெளியேற்றவும்';

  @override
  String get importData => 'தரவு செய்திருத்தப்பட்டது';

  @override
  String get importDataFromFile => 'கோப்பிலிருந்து தரவு செய்திருத்தப்பட்டது';

  @override
  String get chooseHowToExportData => 'தரவுத் துவக்க வழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get saveToDevice => 'சாதனத்திற்கு சேமிக்கவும்';

  @override
  String get share => 'பகிர்வு';

  @override
  String get saveExportFile => 'வெளியேற்றும் கோப்பை சேமிக்கவும்';

  @override
  String dataSavedTo(String path) {
    return 'தரவு சேமிக்கப்பட்டது';
  }

  @override
  String get dataExportedSuccessfully => 'தரவு வெளியேற்றப்பட்டது';

  @override
  String errorExportingData(String error) {
    return 'தரவு வெளியேற்ற விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String get dataImportedSuccessfully => 'தரவு செய்திருத்தப்பட்டது';

  @override
  String errorImportingData(String error) {
    return 'தரவு செய்திருத்தப்பட்டது: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'அனைத்து உள்ள தரவு மாறாததாக நீக்கப்படும்.';

  @override
  String get import => 'செய்திருத்தப்பட்டது';

  @override
  String get language => 'மொழி';

  @override
  String get selectLanguage => 'மொழியை தேர்ந்தெடுக்கவும்';

  @override
  String get english => 'ஆங்கிலம்';

  @override
  String get spanish => 'ஸ்பானிஷ்';

  @override
  String get chinese => 'சீனி';

  @override
  String get hindi => 'ஹிந்தி';

  @override
  String get arabic => 'அரபிக்';

  @override
  String get portuguese => 'போர்டுகுஜிஸ்';

  @override
  String get bengali => 'பெங்காலி';

  @override
  String get japanese => 'ஜப்பானியம்';

  @override
  String get punjabi => 'பங்கலி';

  @override
  String get german => 'ஜெர்மன்';

  @override
  String get javanese => 'ஜவானிஸ்';

  @override
  String get korean => 'கோரியன்';

  @override
  String get french => 'பிரெஞ்சு';

  @override
  String get telugu => 'தேலுகு';

  @override
  String get marathi => 'மராத்தி';

  @override
  String get turkish => 'துருக்கி';

  @override
  String get tamil => 'தமிழ்';

  @override
  String get vietnamese => 'வியட்நாமீஸ்';

  @override
  String get urdu => 'உருது';

  @override
  String get ukrainian => 'உக்ரைனியன்';

  @override
  String get italian => 'இத்தாலியன்';

  @override
  String get russian => 'ரஷியன்';

  @override
  String get darkMode => 'இருண்ட பயன்பாட்டு முறை';

  @override
  String get light => 'ஒளியான';

  @override
  String get dark => 'இருண்ட';

  @override
  String get automatic => 'தானியங்கி';

  @override
  String get followSystemSetting => 'அமைப்புகளை பின்பற்று';

  @override
  String get dataManagement => 'தரவு நிர்வகிப்பு';

  @override
  String get version => 'பதிப்பு';

  @override
  String errorSavingTask(String error) {
    return 'பணியை சேமிக்க விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'அளவுகோலை நீக்க விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'அளவுகோல் \"$name\" நீக்கப்பட்டது';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit மதிப்பு',
      one: '1 மதிப்பு',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values மதிப்பு',
      one: '1 மதிப்பு',
    );
    return 'தனித்த: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'தொடர்ச்சியான: $minValue - $maxValue, படி $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'அளவுகோல் \"$name\" நீக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';
  }

  @override
  String valueX(int index) {
    return 'மதிப்பு $index';
  }

  @override
  String get minValueRequired => 'குறைந்தபட்ச மதிப்பு தேவை';

  @override
  String get maxValueRequired => 'அதிகபட்ச மதிப்பு தேவை';

  @override
  String get stepValueRequired => 'படி மதிப்பு தேவை';

  @override
  String get minValueMustBeANumber => 'குறைந்தபட்ச மதிப்பு ஒரு எண்ணாக இருக்க வேண்டும்';

  @override
  String get maxValueMustBeANumber => 'அதிகபட்ச மதிப்பு ஒரு எண்ணாக இருக்க வேண்டும்';

  @override
  String get stepValueMustBeAPositiveNumber => 'படி மதிப்பு ஒரு நேர்மறை எண்ணாக இருக்க வேண்டும்';

  @override
  String get minValueMustBeLessThanMaxValue => 'குறைந்தபட்ச மதிப்பு அதிகபட்ச மதிப்பை விட குறைந்ததாக இருக்க வேண்டும்';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'அதிகபட்ச மதிப்பு குறைந்தபட்ச மதிப்பை விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get stepValueMustBeGreaterThanZero => 'படி மதிப்பு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get valueCannotBeEmpty => 'மதிப்பு இல்லை';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'தேர்ந்தெடுக்கப்பட்ட அளவு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'தேர்ந்தெடுக்கப்பட்ட அளவு ஒரு நேர்மறை எண்ணாக இருக்க வேண்டும்';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'தனித்த அளவுகோல்களுக்கு குறைந்தபட்சம் ஒரு மதிப்பு தேவை';

  @override
  String get selectIconType => 'ஐகோன் வகையை தேர்ந்தெடுக்கவும்';

  @override
  String get icon => 'ஐகோன்';

  @override
  String get emoji => 'இமோஜி';

  @override
  String get enterCriterionName => 'அளவுகோல் பெயரை உள்ளிடவும்';

  @override
  String get type => 'வகை';

  @override
  String get discreteConfiguration => 'தனித்த அமைப்பு';

  @override
  String get howManyValuesCanBeSelected => 'எத்தனை மதிப்புகளை தேர்ந்தெடுக்க முடியும்';

  @override
  String get continuousConfiguration => 'தொடர்ச்சியான அமைப்பு';

  @override
  String get minimumAllowedValue => 'அனுமதிக்கப்பட்ட மதிப்பு';

  @override
  String get maximumAllowedValue => 'அனுமதிக்கப்பட்ட மதிப்பு';

  @override
  String get incrementDecrementStep => 'அதிகரித்தல்/குறைத்தல் படி';

  @override
  String errorSavingCriterion(String error) {
    return 'அளவுகோலை சேமிக்க விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String get editCriterion => 'அளவுகோலை திருத்து';

  @override
  String get selectIcon => 'ஐகோன்தேர்ந்தெடுக்கவும்';

  @override
  String get selectEmoji => 'இமோஜியை தேர்ந்தெடுக்கவும்';

  @override
  String get icons => 'ஐகோன்கள்';

  @override
  String get emojis => 'இமோஜி';

  @override
  String get selectColor => 'வண்ணத்தை தேர்ந்தெடுக்கவும்';

  @override
  String get noCriteriaToRate => 'அளவுகோல்களை மதிப்பீடு செய்ய அளவுகோல்கள் இல்லை';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'இந்த பணிக்கு அளவுகோல்கள் இல்லை';

  @override
  String errorSavingRatings(String error) {
    return 'மதிப்பீடுகளை சேமிக்க விழும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது: $error';
  }

  @override
  String get skip => 'தவிர்க்கவும்';

  @override
  String get save => 'சேமிக்கவும்';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'இடைவிட்டம்: $minValue - $maxValue (படி: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'பணியை மதிப்பீடு செய்யவும்: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'அதிகபட்ச $selectionLimit மதிப்புகளை தேர்ந்தெடுக்கவும்';
  }

  @override
  String get swipeToStart => 'தொடங்கவும்';
}
