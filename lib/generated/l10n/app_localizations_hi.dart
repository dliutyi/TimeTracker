// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker में आपका स्वागत है';

  @override
  String get welcomeDescription => 'आपका समय ट्रैक करना, कार्य प्रबंधन और आपकी उत्पादन क्षमता का विश्लेषण आसानी से करें।';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get activeTask => 'सक्रिय कार्य';

  @override
  String get listOfTasks => 'कार्य सूची';

  @override
  String get statistics => 'आंकड़े';

  @override
  String get listOfCriteria => 'मानदंड सूची';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get addTask => 'कार्य जोड़ें';

  @override
  String get generalMotto => 'सामान्य आदर्श वाक्य';

  @override
  String get noTasks => 'कोई कार्य नहीं';

  @override
  String get createFirstTask => 'शुरू करने के लिए अपना पहला मानदंड बनाएं';

  @override
  String get addCriterion => 'मानदंड जोड़ें';

  @override
  String get noCriteria => 'कोई मानदंड नहीं';

  @override
  String get createFirstCriterion => 'शुरू करने के लिए अपना पहला मानदंड बनाएं';

  @override
  String get discrete => 'असतत';

  @override
  String get continuous => 'निरंतर';

  @override
  String get selections => 'चयन';

  @override
  String get values => 'मान';

  @override
  String get step => 'चरण';

  @override
  String get criterionName => 'मानदंड का नाम';

  @override
  String get criterionType => 'मानदंड का प्रकार';

  @override
  String get addValue => 'मान जोड़ें';

  @override
  String get selectionLimit => 'चयन सीमा';

  @override
  String get minValue => 'न्यूनतम मान';

  @override
  String get maxValue => 'अधिकतम मान';

  @override
  String get stepValue => 'चरण मान';

  @override
  String get value => 'मान';

  @override
  String get updateCriterion => 'मानदंड अपडेट करें';

  @override
  String get discard => 'त्यागें';

  @override
  String get nameRequired => 'नाम आवश्यक है';

  @override
  String get atLeastOneValue => 'कम से कम एक मान आवश्यक है';

  @override
  String get selectionLimitRequired => 'चयन सीमा आवश्यक है';

  @override
  String get minMustBeLessThanMax => 'न्यूनतम मान अधिकतम मान से कम होना चाहिए';

  @override
  String get stepMustBeGreaterThanZero => 'चरण मान 0 से अधिक होना चाहिए';

  @override
  String get deleteCriterion => 'मानदंड हटाएं';

  @override
  String deleteCriterionWarning(Object name) {
    return 'मानदंड \"$name\" हटाने के लिए सुनिश्चित करें? इस क्रिया को पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'इस मानदंड का उपयोग इस कार्य में किया गया है';
  }

  @override
  String get history => 'इतिहास';

  @override
  String get charts => 'चार्ट';

  @override
  String get noSessions => 'कोई सत्र नहीं';

  @override
  String get noSessionsDescription => 'सत्र ट्रैक करने के लिए एक कार्य शुरू करें';

  @override
  String get noSessionsForPeriod => 'चयनित समय अवधि के लिए कोई सत्र नहीं मिला';

  @override
  String get noActiveTask => 'कोई सक्रिय कार्य नहीं';

  @override
  String get startTaskFromList => 'ट्रैकिंग शुरू करने के लिए सूची से एक कार्य शुरू करें';

  @override
  String get startTime => 'समय शुरू करें';

  @override
  String get endTime => 'समाप्ति समय';

  @override
  String get stop => 'रोकें';

  @override
  String get endTimeAfterStart => 'समाप्ति समय प्रारंभ समय के बाद होना चाहिए';

  @override
  String get discardSession => 'सत्र त्यागें';

  @override
  String get discardSessionMessage => 'क्या आप वाकई इस सत्र को त्यागना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get swipeToStop => 'स्वाइप करें रोकने के लिए';

  @override
  String get filterByTask => 'कार्य से फ़िल्टर करें';

  @override
  String get allTasks => 'सभी कार्य';

  @override
  String get filterByCriterion => 'मानदंड से फ़िल्टर करें';

  @override
  String get allCriteria => 'सभी मानदंड';

  @override
  String get timeSpentPerTask => 'प्रति कार्य खर्च किया गया समय';

  @override
  String get taskFrequencyOverTime => 'कार्य आवृत्ति समय के साथ';

  @override
  String get averageCriterionRatings => 'औसत मानदंड रेटिंग';

  @override
  String get activityChart => 'गतिविधि चार्ट';

  @override
  String get day => 'दिन';

  @override
  String get week => 'सप्ताह';

  @override
  String get month => 'महीना';

  @override
  String get year => 'वर्ष';

  @override
  String get all => 'सभी';

  @override
  String get listening => 'सुनना';

  @override
  String get taskName => 'कार्य का नाम';

  @override
  String get mottoOptional => 'आदर्श वाक्य (वैकल्पिक)';

  @override
  String get criteria => 'मानदंड';

  @override
  String get noCriteriaAvailable => 'कोई मानदंड उपलब्ध नहीं';

  @override
  String get updateTask => 'कार्य अपडेट करें';

  @override
  String get nameTooLong => 'नाम 32 अक्षरों से अधिक नहीं होना चाहिए';

  @override
  String get mottoTooLong => 'आदर्श वाक्य 128 अक्षरों से अधिक नहीं होना चाहिए';

  @override
  String get editTask => 'कार्य संपादित करें';

  @override
  String get enable => 'सक्रिय करें';

  @override
  String get disable => 'अक्रिय करें';

  @override
  String get enableTask => 'कार्य सक्रिय करें';

  @override
  String get disableTask => 'कार्य अक्रिय करें';

  @override
  String get enableTaskMessage => 'क्या आप वाकई इस कार्य को सक्रिय करना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String get disableTaskMessage => 'क्या आप वाकई इस कार्य को अक्रिय करना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String taskEnabled(Object name) {
    return 'कार्य क्रिय करें';
  }

  @override
  String taskDisabled(Object name) {
    return 'कार्य अक्रिय करें';
  }

  @override
  String get deleteTask => 'कार्य हटाएं';

  @override
  String get deleteTaskMessage => 'क्या आप वाकई इस कार्य को हटाना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String taskDeleted(Object name) {
    return 'कार्य हटाया गया';
  }

  @override
  String get anotherTaskActive => 'अन्य कार्य सक्रिय है। कृपया इसे पहले रोकें।';

  @override
  String errorActivatingTask(String error) {
    return 'कार्य सक्रिय करने में त्रुटि: $error';
  }

  @override
  String get delete => 'हटाएं';

  @override
  String error(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'सत्र रोकने में त्रुटि: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'सत्र त्यागने में त्रुटि: $error';
  }

  @override
  String get noActiveTaskMessage => 'कोई सक्रिय कार्य नहीं';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'अज्ञात कार्य';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'कार्य लोड करने में त्रुटि: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'मानदंड लोड करने में त्रुटि: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'सत्र लोड करने में त्रुटि: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'सभी सत्र लोड करने में त्रुटि: $error';
  }

  @override
  String get unknown => 'अज्ञात';

  @override
  String get exportData => 'डेटा निर्यात करें';

  @override
  String get exportAllAppDataToFile => 'सभी डेटा फ़ाइल में निर्यात करें';

  @override
  String get importData => 'डेटा आयात करें';

  @override
  String get importDataFromFile => 'डेटा फ़ाइल से आयात करें';

  @override
  String get chooseHowToExportData => 'डेटा निर्यात करने का तरीका चुनें';

  @override
  String get saveToDevice => 'डिवाइस में सहेजें';

  @override
  String get share => 'साझा करें';

  @override
  String get saveExportFile => 'डेटा निर्यात फ़ाइल में सहेजें';

  @override
  String dataSavedTo(String path) {
    return 'डेटा सफलतापूर्वक सहेजा गया';
  }

  @override
  String get dataExportedSuccessfully => 'डेटा सफलतापूर्वक निर्यात किया गया';

  @override
  String errorExportingData(String error) {
    return 'डेटा निर्यात करने में त्रुटि: $error';
  }

  @override
  String get dataImportedSuccessfully => 'डेटा सफलतापूर्वक आयात किया गया';

  @override
  String errorImportingData(String error) {
    return 'डेटा आयात करने में त्रुटि: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'सभी डेटा सहेजें हमेशा हटाया जाएंगे।';

  @override
  String get import => 'आयात';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get english => 'इंग्लिश';

  @override
  String get spanish => 'स्पेनिश';

  @override
  String get chinese => 'चीनी';

  @override
  String get hindi => 'हिंदी';

  @override
  String get arabic => 'अरबी';

  @override
  String get portuguese => 'पुर्तगाली';

  @override
  String get bengali => 'बंगाली';

  @override
  String get japanese => 'जापानी';

  @override
  String get punjabi => 'पंजाबी';

  @override
  String get german => 'जर्मन';

  @override
  String get javanese => 'जवानी';

  @override
  String get korean => 'कोरियाई';

  @override
  String get french => 'फ़्रेंच';

  @override
  String get telugu => 'तेलुगु';

  @override
  String get marathi => 'मराठी';

  @override
  String get turkish => 'तुर्की';

  @override
  String get tamil => 'तमिल';

  @override
  String get vietnamese => 'वियतनामी';

  @override
  String get urdu => 'उर्दू';

  @override
  String get ukrainian => 'युक्रेनियाई';

  @override
  String get italian => 'इटलियन';

  @override
  String get russian => 'रूसी';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get light => 'लाइट';

  @override
  String get dark => 'डार्क';

  @override
  String get automatic => 'स्वचालित';

  @override
  String get followSystemSetting => 'सिस्टम सेटिंग का पालन करें';

  @override
  String get dataManagement => 'डेटा प्रबंधन';

  @override
  String get version => 'संस्करण';

  @override
  String errorSavingTask(String error) {
    return 'कार्य सहेजने में त्रुटि: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'मानदंड हटाने में त्रुटि: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'मानदंड \"$name\" हटाया गया';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit चयन',
      one: '1 चयन',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values मान',
      one: '1 मान',
    );
    return 'असतत: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'निरंतर: $minValue - $maxValue, चरण $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'मानदंड \"$name\" हटाने के लिए सुनिश्चित करें? इस क्रिया को पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String valueX(int index) {
    return 'मान $index';
  }

  @override
  String get minValueRequired => 'न्यूनतम मान आवश्यक है';

  @override
  String get maxValueRequired => 'अधिकतम मान आवश्यक है';

  @override
  String get stepValueRequired => 'चरण मान आवश्यक है';

  @override
  String get minValueMustBeANumber => 'न्यूनतम मान एक संख्या होना चाहिए';

  @override
  String get maxValueMustBeANumber => 'अधिकतम मान एक संख्या होना चाहिए';

  @override
  String get stepValueMustBeAPositiveNumber => 'चरण मान एक धनात्मक संख्या होना चाहिए';

  @override
  String get minValueMustBeLessThanMaxValue => 'न्यूनतम मान अधिकतम मान से कम होना चाहिए';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'अधिकतम मान न्यूनतम मान से अधिक होना चाहिए';

  @override
  String get stepValueMustBeGreaterThanZero => 'चरण मान 0 से अधिक होना चाहिए';

  @override
  String get valueCannotBeEmpty => 'मान खाली नहीं हो सकता';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'चयन सीमा 0 से अधिक होना चाहिए';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'चयन सीमा एक धनात्मक संख्या होना चाहिए';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'असतत मानदंड के लिए कम से कम एक मान आवश्यक है';

  @override
  String get selectIconType => 'आयातन प्रकार चुनें';

  @override
  String get icon => 'आयातन';

  @override
  String get emoji => 'इमोजी';

  @override
  String get enterCriterionName => 'मानदंड का नाम दर्ज करें';

  @override
  String get type => 'प्रकार';

  @override
  String get discreteConfiguration => 'असतत विन्यास';

  @override
  String get howManyValuesCanBeSelected => 'कितने मान चयन किए जा सकते हैं';

  @override
  String get continuousConfiguration => 'निरंतर विन्यास';

  @override
  String get minimumAllowedValue => 'न्यूनतम अनुमत मान';

  @override
  String get maximumAllowedValue => 'अधिकतम अनुमत मान';

  @override
  String get incrementDecrementStep => 'चरण बढ़ाएं/घटाएं';

  @override
  String errorSavingCriterion(String error) {
    return 'मानदंड सहेजने में त्रुटि: $error';
  }

  @override
  String get editCriterion => 'मानदंड संपादित करें';

  @override
  String get selectIcon => 'आयातन चुनें';

  @override
  String get selectEmoji => 'इमोजी चुनें';

  @override
  String get icons => 'आयातन';

  @override
  String get emojis => 'इमोजी';

  @override
  String get selectColor => 'रंग चुनें';

  @override
  String get noCriteriaToRate => 'कोई मानदंड रेटिंग नहीं';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'यह कार्य कोई मानदंड नहीं बदला है';

  @override
  String errorSavingRatings(String error) {
    return 'रेटिंग सहेजने में त्रुटि: $error';
  }

  @override
  String get skip => 'छोड़ें';

  @override
  String get save => 'सहेजें';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'परिसीमा: $minValue - $maxValue (चरण: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'कार्य रेटिंग करें';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'अधिकतम $selectionLimit मान चुनें';
  }

  @override
  String get swipeToStart => 'स्वाइप करें शुरू करने के लिए';
}
