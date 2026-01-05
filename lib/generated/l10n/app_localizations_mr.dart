// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker मध्ये आपले स्वागत आहे';

  @override
  String get welcomeDescription => 'आपली वेळ ट्रॅक करा, कार्य व्यवस्थापन आणि आपली उत्पादकता आसानीसे विश्लेषण करा.';

  @override
  String get continueButton => 'चालू करा';

  @override
  String get activeTask => 'सक्रिय कार्य';

  @override
  String get listOfTasks => 'कार्यांची यादी';

  @override
  String get statistics => 'सांख्यिकी';

  @override
  String get listOfCriteria => 'मापदंडांची यादी';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get addTask => 'कार्य जोडा';

  @override
  String get generalMotto => 'आपले समय ट्रॅक करा, आपले कार्य व्यवस्थापन करा, आपली उत्पादकता आसानीसे विश्लेषण करा.';

  @override
  String get noTasks => 'अद्याप कोणतेही कार्ये नाहीत';

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
  String get selections => 'निवडे';

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
  String get minValue => 'न्यूनतम मूल्य';

  @override
  String get maxValue => 'अधिकतम मूल्य';

  @override
  String get stepValue => 'पाऊल मूल्य';

  @override
  String get value => 'मूल्य';

  @override
  String get updateCriterion => 'मापदंड अद्ययावत करा';

  @override
  String get discard => 'रद्द करा';

  @override
  String get nameRequired => 'नाव आवश्यक आहे';

  @override
  String get atLeastOneValue => 'किमान एक मूल्य आवश्यक आहे';

  @override
  String get selectionLimitRequired => 'निवड मर्यादा 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get minMustBeLessThanMax => 'न्यूनतम मूल्य अधिकतम मूल्यापेक्षा कमी असणे आवश्यक आहे';

  @override
  String get stepMustBeGreaterThanZero => 'पाऊल मूल्य 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get deleteCriterion => 'मापदंड हटवा';

  @override
  String deleteCriterionWarning(Object name) {
    return 'आपण खात्री आहे की आपण हा मापदंड हटवू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';
  }

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
  String get noActiveTask => 'अद्याप कोणतेही सक्रिय कार्य नाही';

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
  String get timeSpentPerTask => 'कार्याने वापरलेले वेळ';

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

  @override
  String get listening => 'श्रव्य';

  @override
  String get taskName => 'कार्याचे नाव';

  @override
  String get mottoOptional => 'बोधवाक्य (वैकल्पिक)';

  @override
  String get criteria => 'मापदंड';

  @override
  String get noCriteriaAvailable => 'अद्याप कोणतेही मापदंड नाहीत';

  @override
  String get updateTask => 'कार्य अद्ययावत करा';

  @override
  String get nameTooLong => 'नाव 32 अक्षरांपेक्षा अधिक असणे आवश्यक आहे';

  @override
  String get mottoTooLong => 'बोधवाक्य 128 अक्षरांपेक्षा अधिक असणे आवश्यक आहे';

  @override
  String get editTask => 'कार्य संपादित करा';

  @override
  String get enable => 'सक्रिय करा';

  @override
  String get disable => 'निष्क्रिय करा';

  @override
  String get enableTask => 'कार्य सक्रिय करा';

  @override
  String get disableTask => 'कार्य निष्क्रिय करा';

  @override
  String get enableTaskMessage => 'आपण खात्री आहे की आपण हे कार्य सक्रिय करू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String get disableTaskMessage => 'आपण खात्री आहे की आपण हे कार्य निष्क्रिय करू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String taskEnabled(Object name) {
    return 'कार्य सक्रिय झाले गेले आहे';
  }

  @override
  String taskDisabled(Object name) {
    return 'कार्य निष्क्रिय झाले गेले आहे';
  }

  @override
  String get deleteTask => 'कार्य हटवा';

  @override
  String get deleteTaskMessage => 'आपण खात्री आहे की आपण हे कार्य हटवू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';

  @override
  String taskDeleted(Object name) {
    return 'कार्य हटविले गेले आहे';
  }

  @override
  String get anotherTaskActive => 'अन्य कार्य सक्रिय आहे';

  @override
  String errorActivatingTask(String error) {
    return 'कार्य सक्रिय करण्यात त्रुटी: $error';
  }

  @override
  String get delete => 'हटवा';

  @override
  String error(String error) {
    return 'त्रुटी: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'सत्र थांबवण्यात त्रुटी: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'सत्र रद्द करण्यात त्रुटी: $error';
  }

  @override
  String get noActiveTaskMessage => 'अद्याप कोणतेही सक्रिय कार्य नाही';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'अज्ञात कार्य';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'कार्ये लोड करण्यात त्रुटी: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'मापदंडे लोड करण्यात त्रुटी';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'सत्रे लोड करण्यात त्रुटी: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'सर्व सत्रे लोड करण्यात त्रुटी';
  }

  @override
  String get unknown => 'अज्ञात';

  @override
  String get exportData => 'डेटा निर्यात करा';

  @override
  String get exportAllAppDataToFile => 'सर्व डेटा फाईल मध्ये निर्यात करा';

  @override
  String get importData => 'डेटा आयात करा';

  @override
  String get importDataFromFile => 'फाईल से डेटा आयात करा';

  @override
  String get chooseHowToExportData => 'डेटा कसे निर्यात करायचे आहे याचे आहे';

  @override
  String get saveToDevice => 'डिव्हाइस साठवा';

  @override
  String get share => 'शेअर करा';

  @override
  String get saveExportFile => 'निर्यात फाईल साठवा';

  @override
  String dataSavedTo(String path) {
    return 'डेटा सफलतापूर्वक साठवली गेली आहे';
  }

  @override
  String get dataExportedSuccessfully => 'डेटा सफलतापूर्वक निर्यात केली गेली आहे';

  @override
  String errorExportingData(String error) {
    return 'डेटा निर्यात करण्यात त्रुटी: $error';
  }

  @override
  String get dataImportedSuccessfully => 'डेटा सफलतापूर्वक आयात केली गेली आहे';

  @override
  String errorImportingData(String error) {
    return 'डेटा आयात करण्यात त्रुटी: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'सर्व मूल्ये स्थायी रूपात हटविले जातील';

  @override
  String get import => 'आयात करा';

  @override
  String get language => 'भाषा';

  @override
  String get selectLanguage => 'भाषा निवडा';

  @override
  String get english => 'इंग्रजी';

  @override
  String get spanish => 'स्पेनिश';

  @override
  String get chinese => 'चीनी';

  @override
  String get hindi => 'हिंदी';

  @override
  String get arabic => 'अरबी';

  @override
  String get portuguese => 'पोर्तुगीज';

  @override
  String get bengali => 'बंगाली';

  @override
  String get japanese => 'जापानी';

  @override
  String get punjabi => 'पंजाबी';

  @override
  String get german => 'जर्मन';

  @override
  String get javanese => 'जवाहरी';

  @override
  String get korean => 'कोरियन';

  @override
  String get french => 'फ्रेंच';

  @override
  String get telugu => 'तेलुगु';

  @override
  String get marathi => 'मराठी';

  @override
  String get turkish => 'तुर्की';

  @override
  String get tamil => 'तामिल';

  @override
  String get vietnamese => 'वियतनामी';

  @override
  String get urdu => 'उर्दू';

  @override
  String get ukrainian => 'युक्रेनियन';

  @override
  String get italian => 'इटलियन';

  @override
  String get russian => 'रूसी';

  @override
  String get darkMode => 'अंधा मोड';

  @override
  String get light => 'हलका';

  @override
  String get dark => 'अंधा';

  @override
  String get automatic => 'स्वयंचलित';

  @override
  String get followSystemSetting => 'सिस्टम सेटिंग्ज अनुसार';

  @override
  String get dataManagement => 'डेटा व्यवस्थापन';

  @override
  String get version => 'आवृत्ती';

  @override
  String errorSavingTask(String error) {
    return 'कार्य सहेजण्यात त्रुटी: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'मापदंड हटवण्यात त्रुटी: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'मापदंड हटविले गेले आहे';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit मूल्य',
      one: '1 मूल्य',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values मूल्य',
      one: '1 मूल्य',
    );
    return 'विभक्त: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'सतत: $minValue - $maxValue, पाऊल $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'आपण खात्री आहे की आपण हा मापदंड \"$name\" हटवू इच्छिता? ही क्रिया पूर्ववत करता येणार नाही.';
  }

  @override
  String valueX(int index) {
    return 'मूल्य $index';
  }

  @override
  String get minValueRequired => 'न्यूनतम मूल्य आवश्यक आहे';

  @override
  String get maxValueRequired => 'अधिकतम मूल्य आवश्यक आहे';

  @override
  String get stepValueRequired => 'पाऊल मूल्य आवश्यक आहे';

  @override
  String get minValueMustBeANumber => 'न्यूनतम मूल्य एक संख्या असणे आवश्यक आहे';

  @override
  String get maxValueMustBeANumber => 'अधिकतम मूल्य एक संख्या असणे आवश्यक आहे';

  @override
  String get stepValueMustBeAPositiveNumber => 'पाऊल मूल्य एक धन संख्या असणे आवश्यक आहे';

  @override
  String get minValueMustBeLessThanMaxValue => 'न्यूनतम मूल्य अधिकतम मूल्यापेक्षा कमी असणे आवश्यक आहे';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'अधिकतम मूल्य किमान मूल्यापेक्षा अधिक असणे आवश्यक आहे';

  @override
  String get stepValueMustBeGreaterThanZero => 'पाऊल मूल्य 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get valueCannotBeEmpty => 'मूल्य खालीलप्रमाणे असू शकत नाही';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'निवड मर्यादा 0 पेक्षा जास्त असणे आवश्यक आहे';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'निवड मर्यादा एक धन संख्या असणे आवश्यक आहे';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'विभक्त मापदंडांसाठी किमान एक मूल्य आवश्यक आहे';

  @override
  String get selectIconType => 'आयकन प्रकार निवडा';

  @override
  String get icon => 'आयकन';

  @override
  String get emoji => 'इमोजी';

  @override
  String get enterCriterionName => 'मापदंडाचे नाव दर्ज करा';

  @override
  String get type => 'प्रकार';

  @override
  String get discreteConfiguration => 'विभक्त विन्यास';

  @override
  String get howManyValuesCanBeSelected => 'किती मूल्ये चुनू शकता?';

  @override
  String get continuousConfiguration => 'सतत विन्यास';

  @override
  String get minimumAllowedValue => 'न्यूनतम अनुमत मूल्य';

  @override
  String get maximumAllowedValue => 'अधिकतम अनुमत मूल्य';

  @override
  String get incrementDecrementStep => 'वाढवा किंवा घटवा पाऊल';

  @override
  String errorSavingCriterion(String error) {
    return 'मापदंड सहेजण्यात त्रुटी: $error';
  }

  @override
  String get editCriterion => 'मापदंड संपादित करा';

  @override
  String get selectIcon => 'आयकन निवडा';

  @override
  String get selectEmoji => 'इमोजी निवडा';

  @override
  String get icons => 'आयकन';

  @override
  String get emojis => 'इमोजी';

  @override
  String get selectColor => 'रंग निवडा';

  @override
  String get noCriteriaToRate => 'अद्याप कोणतेही मापदंड रेटिंग करण्यासाठी नाहीत';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'हा कार्यासाठी कोणतेही मापदंड नाहीत';

  @override
  String errorSavingRatings(String error) {
    return 'रेटिंग सहेजण्यात त्रुटी: $error';
  }

  @override
  String get skip => 'छोडा';

  @override
  String get save => 'साठवा';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'परिसीमा: $minValue - $maxValue (पाऊल: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'कार्य रेटिंग: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'अधिकतम $selectionLimit मूल्ये निवडा';
  }

  @override
  String get swipeToStart => 'सुरू करण्यासाठी स्वाइप करा';
}
