// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker में आपका स्वागत है';

  @override
  String get welcomeDescription => 'अपने समय को ट्रैक करें, कार्यों का प्रबंधन करें और आसानी से अपनी उत्पादकता का विश्लेषण करें।';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get activeTask => 'सक्रिय कार्य';

  @override
  String get listOfTasks => 'कार्यों की सूची';

  @override
  String get statistics => 'आंकड़े';

  @override
  String get listOfCriteria => 'मानदंडों की सूची';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get addTask => 'कार्य जोड़ें';

  @override
  String get generalMotto => 'सामान्य आदर्श वाक्य';

  @override
  String get noTasks => 'अभी तक कोई कार्य नहीं';

  @override
  String get createFirstTask => 'शुरू करने के लिए अपना पहला कार्य बनाएं';

  @override
  String get addCriterion => 'मानदंड जोड़ें';

  @override
  String get noCriteria => 'अभी तक कोई मानदंड नहीं';

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
  String get selectionLimitRequired => 'चयन सीमा 0 से अधिक होनी चाहिए';

  @override
  String get minMustBeLessThanMax => 'न्यूनतम मान अधिकतम मान से कम होना चाहिए';

  @override
  String get stepMustBeGreaterThanZero => 'चरण मान 0 से अधिक होना चाहिए';

  @override
  String get deleteCriterion => 'मानदंड हटाएं';

  @override
  String get deleteCriterionWarning => 'क्या आप वाकई इस मानदंड को हटाना चाहते हैं? इस क्रिया को पूर्ववत नहीं किया जा सकता।';

  @override
  String criterionUsedInTasks(int count) {
    return 'यह मानदंड $count कार्य(ों) में उपयोग किया जाता है। उन कार्यों से संबंध हटा दिया जाएगा।';
  }

  @override
  String get history => 'इतिहास';

  @override
  String get charts => 'चार्ट';

  @override
  String get noSessions => 'अभी तक कोई सत्र नहीं';

  @override
  String get noSessionsDescription => 'समय ट्रैक करना शुरू करें यहां अपने सत्र देखने के लिए';

  @override
  String get noSessionsForPeriod => 'चयनित समय अवधि के लिए कोई सत्र नहीं मिला';

  @override
  String get noActiveTask => 'कोई सक्रिय कार्य नहीं';

  @override
  String get startTaskFromList => 'ट्रैकिंग शुरू करने के लिए सूची से एक कार्य शुरू करें';

  @override
  String get startTime => 'प्रारंभ समय';

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
  String get swipeToStop => 'रोकने के लिए स्वाइप करें';

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
  String get taskFrequencyOverTime => 'समय के साथ कार्य आवृत्ति';

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
}
