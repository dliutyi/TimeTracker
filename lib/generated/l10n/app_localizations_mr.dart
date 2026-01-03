// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker मध्ये आपले स्वागत आहे';

  @override
  String get welcomeDescription => 'आपला वेळ ट्रॅक करा, कार्ये व्यवस्थापित करा आणि सहजतेने आपली उत्पादकता विश्लेषण करा।';

  @override
  String get continueButton => 'सुरू ठेवा';

  @override
  String get activeTask => 'सक्रिय कार्य';

  @override
  String get listOfTasks => 'कार्यांची यादी';

  @override
  String get statistics => 'आकडेवारी';

  @override
  String get listOfCriteria => 'मापदंडांची यादी';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get addTask => 'कार्य जोडा';

  @override
  String get generalMotto => 'सामान्य बोधवाक्य';

  @override
  String get noTasks => 'अद्याप कोणतीही कार्ये नाहीत';

  @override
  String get createFirstTask => 'प्रारंभ करण्यासाठी आपले पहिले कार्य तयार करा';

  @override
  String get addCriterion => 'मापदंड जोडा';

  @override
  String get noCriteria => 'अद्याप कोणतेही मापदंड नाहीत';

  @override
  String get createFirstCriterion => 'प्रारंभ करण्यासाठी आपला पहिला मापदंड तयार करा';

  @override
  String get discrete => 'विभक्त';

  @override
  String get continuous => 'सतत';

  @override
  String get selections => 'निवडी';

  @override
  String get values => 'मूल्ये';

  @override
  String get step => 'पाऊल';

  @override
  String get criterionName => 'मापदंडाचे नाव';

  @override
  String get criterionType => 'मापदंडाचा प्रकार';

  @override
  String get addValue => 'मूल्य जोडा';

  @override
  String get selectionLimit => 'निवड मर्यादा';

  @override
  String get minValue => 'किमान मूल्य';

  @override
  String get maxValue => 'कमाल मूल्य';

  @override
  String get stepValue => 'पाऊल मूल्य';

  @override
  String get value => 'मूल्य';

  @override
  String get updateCriterion => 'मापदंड अद्यतनित करा';

  @override
  String get discard => 'रद्द करा';

  @override
  String get nameRequired => 'नाव आवश्यक आहे';

  @override
  String get atLeastOneValue => 'किमान एक मूल्य आवश्यक आहे';

  @override
  String get selectionLimitRequired => 'निवड मर्यादा 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get minMustBeLessThanMax => 'किमान मूल्य कमाल मूल्यापेक्षा कमी असणे आवश्यक आहे';

  @override
  String get stepMustBeGreaterThanZero => 'पाऊल मूल्य 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get deleteCriterion => 'मापदंड हटवा';

  @override
  String get deleteCriterionWarning => 'आपण खात्री आहे की आपण हा मापदंड हटवू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String criterionUsedInTasks(int count) {
    return 'हा मापदंड $count कार्यांमध्ये वापरला जातो. संबंध त्या कार्यांमधून काढला जाईल.';
  }

  @override
  String get history => 'इतिहास';

  @override
  String get charts => 'आलेख';

  @override
  String get noSessions => 'अद्याप कोणतेही सत्रे नाहीत';

  @override
  String get noSessionsDescription => 'आपली सत्रे येथे पाहण्यासाठी वेळ ट्रॅक करणे सुरू करा';

  @override
  String get noSessionsForPeriod => 'निवडलेल्या कालावधीसाठी सत्रे सापडली नाहीत';

  @override
  String get noActiveTask => 'कोणतेही सक्रिय कार्य नाही';

  @override
  String get startTaskFromList => 'ट्रॅकिंग सुरू करण्यासाठी यादीतून कार्य सुरू करा';

  @override
  String get startTime => 'प्रारंभ वेळ';

  @override
  String get endTime => 'समाप्ती वेळ';

  @override
  String get stop => 'थांबवा';

  @override
  String get endTimeAfterStart => 'समाप्ती वेळ प्रारंभ वेळेनंतर असणे आवश्यक आहे';

  @override
  String get discardSession => 'सत्र रद्द करा';

  @override
  String get discardSessionMessage => 'आपण खात्री आहे की आपण हे सत्र रद्द करू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get swipeToStop => 'थांबवण्यासाठी स्वाइप करा';

  @override
  String get filterByTask => 'कार्यानुसार फिल्टर करा';

  @override
  String get allTasks => 'सर्व कार्ये';

  @override
  String get filterByCriterion => 'मापदंडानुसार फिल्टर करा';

  @override
  String get allCriteria => 'सर्व मापदंड';

  @override
  String get timeSpentPerTask => 'प्रति कार्य खर्च केलेला वेळ';

  @override
  String get taskFrequencyOverTime => 'कालांतराने कार्य वारंवारता';

  @override
  String get averageCriterionRatings => 'सरासरी मापदंड रेटिंग';

  @override
  String get activityChart => 'क्रियाकलाप आलेख';

  @override
  String get day => 'दिवस';

  @override
  String get week => 'आठवडा';

  @override
  String get month => 'महिना';

  @override
  String get year => 'वर्ष';

  @override
  String get all => 'सर्व';
}
