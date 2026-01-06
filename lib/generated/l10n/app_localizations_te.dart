// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker కు స్వాగతం';

  @override
  String get welcomeDescription => 'మీ సమయాన్ని ట్రాక్ చేయండి, పనులను నిర్వహించండి మరియు మీ ఉత్పాదకతను సులభంగా విశ్లేషించండి।';

  @override
  String get continueButton => 'కొనసాగించండి';

  @override
  String get activeTask => 'సక్రియ పని';

  @override
  String get listOfTasks => 'పనులు జాబితా';

  @override
  String get statistics => 'ప్రామాణిక వివరాలు';

  @override
  String get listOfCriteria => 'మాపకాలు జాబితా';

  @override
  String get settings => 'అమరికలు';

  @override
  String get addTask => 'పనిని జోడించు';

  @override
  String get generalMotto => 'సాధారణ స్లాగాన్';

  @override
  String get noTasks => 'పనులు లేవు';

  @override
  String get createFirstTask => 'ప్రారంభించడానికి మీ మొదటి పనిని సృష్టించండి';

  @override
  String get addCriterion => 'మాపకాన్ని జోడించు';

  @override
  String get noCriteria => 'మాపకాలు లేవు';

  @override
  String get createFirstCriterion => 'ప్రారంభించడానికి మీ మొదటి మాపకాన్ని సృష్టించండి';

  @override
  String get discrete => 'విడిగా';

  @override
  String get continuous => 'నిరంతర';

  @override
  String get selections => 'ఎంచుకోబడే పరిమితులు';

  @override
  String get values => 'విలువలు';

  @override
  String get step => 'దశ';

  @override
  String get criterionName => 'మాపకం పేరు';

  @override
  String get criterionType => 'మాపకం రకం';

  @override
  String get addValue => 'విలువను జోడించు';

  @override
  String get selectionLimit => 'ఎంచుకోబడే పరిమితి';

  @override
  String get minValue => 'కనీసం అనుమతించబడింది';

  @override
  String get maxValue => 'అధికంగా అనుమతించబడింది';

  @override
  String get stepValue => 'దశ విలువ';

  @override
  String get value => 'విలువ';

  @override
  String get updateCriterion => 'మాపకం అదిగ్రహించండి';

  @override
  String get discard => 'విస్మరించు';

  @override
  String get nameRequired => 'పేరు అవసరం';

  @override
  String get atLeastOneValue => 'కనీసం ఒక విలువ అవసరం';

  @override
  String get selectionLimitRequired => 'ఎంచుకోబడే పరిమితి అవసరం';

  @override
  String get minMustBeLessThanMax => 'కనీసం అధికంగా అనుమతించబడింది';

  @override
  String get stepMustBeGreaterThanZero => 'దశ ధనాత్మక సంఖ్యగా ఉండాలి';

  @override
  String get deleteCriterion => 'మాపకం తొలగించు';

  @override
  String deleteCriterionWarning(Object name) {
    return 'మీరు ఖచ్చితంగా ఈ మాపకంను తొలగించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'ఈ మాపకం $count పనులలో ఉపయోగించబడుతుంది. ఆ పనుల నుండి అనుబంధం తీసివేయబడుతుంది.';
  }

  @override
  String get history => 'చరిత్ర';

  @override
  String get charts => 'చార్ట్‌లు';

  @override
  String get noSessions => 'సెషన్లు లేవు';

  @override
  String get noSessionsDescription => 'సెషన్లు లేవు';

  @override
  String get noSessionsForPeriod => 'సెషన్లు లేవు';

  @override
  String get noActiveTask => 'సక్రియ పని లేవు';

  @override
  String get startTaskFromList => 'సెషన్లు లేవు';

  @override
  String get startTime => 'ప్రారంభ సమయం';

  @override
  String get endTime => 'ముగింపు సమయం';

  @override
  String get stop => 'నిలవబడించండి';

  @override
  String get endTimeAfterStart => 'ముగింపు సమయం ప్రారంభ సమయం తర్వాత ఉండాలి';

  @override
  String get discardSession => 'సెషన్‌ను విస్మరించు';

  @override
  String get discardSessionMessage => 'మీరు ఖచ్చితంగా ఈ సెషన్‌ను విస్మరించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get swipeToStop => 'నిలవబడినప్పుడు స్వైప్ చేయండి';

  @override
  String get filterByTask => 'పని ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get allTasks => 'అన్ని పనులు';

  @override
  String get filterByCriterion => 'మాపకం ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get allCriteria => 'అన్ని మాపకాలు';

  @override
  String get timeSpentPerTask => 'పనికి సమయం పాటించబడింది';

  @override
  String get taskFrequencyOverTime => 'సమయంలో పని ప్రామాణిక వివరాలు';

  @override
  String get averageCriterionRatings => 'సగటు మాపకం రేటింగ్‌లు';

  @override
  String get activityChart => 'కార్యాచరణ చార్ట్';

  @override
  String get day => 'రోజు';

  @override
  String get week => 'వారం';

  @override
  String get month => 'నెల';

  @override
  String get year => 'సంవత్సరం';

  @override
  String get all => 'అన్ని';

  @override
  String get listening => 'శ్రవణం';

  @override
  String get taskName => 'పని పేరు';

  @override
  String get mottoOptional => 'స్లాగాన్ అనుమతించబడింది';

  @override
  String get criteria => 'మాపకాలు';

  @override
  String get noCriteriaAvailable => 'మాపకాలు లేవు';

  @override
  String get updateTask => 'పనిని అదిగ్రహించండి';

  @override
  String get nameTooLong => 'పేరు 32 అక్షరాలు కనీసం ఉండాలి';

  @override
  String get mottoTooLong => 'స్లాగాన్ 128 అక్షరాలు కనీసం ఉండాలి';

  @override
  String get editTask => 'పనిని సవరించు';

  @override
  String get enable => 'సక్రియంచు';

  @override
  String get disable => 'నిష్కరించు';

  @override
  String get enableTask => 'పనిని సక్రియంచు';

  @override
  String get disableTask => 'పనిని నిష్కరించు';

  @override
  String get enableTaskMessage => 'మీరు ఖచ్చితంగా ఈ పనిని సక్రియంచాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String get disableTaskMessage => 'మీరు ఖచ్చితంగా ఈ పనిని నిష్కరించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String taskEnabled(Object name) {
    return 'పనిని సక్రియంచారు';
  }

  @override
  String taskDisabled(Object name) {
    return 'పనిని నిష్కరించారు';
  }

  @override
  String get deleteTask => 'పనిని తొలగించు';

  @override
  String get deleteTaskMessage => 'మీరు ఖచ్చితంగా ఈ పనిని తొలగించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String taskDeleted(Object name) {
    return 'పనిని తొలగించారు';
  }

  @override
  String get anotherTaskActive => 'ఇతర పని సక్రియం.';

  @override
  String errorActivatingTask(String error) {
    return 'పనిని సక్రియంచడంలో లోపం: $error';
  }

  @override
  String get delete => 'తొలగించు';

  @override
  String error(String error) {
    return 'లోపం: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'సెషన్‌ను నిలవబడించడంలో లోపం: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'సెషన్‌ను విస్మరించడంలో లోపం: $error';
  }

  @override
  String get noActiveTaskMessage => 'సక్రియ పని లేవు';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'అజ్ఞాత పని';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'పనులు లోపం: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'మాపకాలను లోపం: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'సెషన్‌లను లోపం: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'సంపూర్ణమైన సెషన్లు లోపం: $error';
  }

  @override
  String get unknown => 'అజ్ఞాత';

  @override
  String get exportData => 'డేటాను ఎక్స్పోర్ట్ చేయండి';

  @override
  String get exportAllAppDataToFile => 'మొత్తం డేటాను ఫైలుకు ఎక్స్పోర్ట్ చేయండి';

  @override
  String get importData => 'డేటాను దిగుమతి చేయండి';

  @override
  String get importDataFromFile => 'ఫైలుకు డేటాను దిగుమతి చేయండి';

  @override
  String get chooseHowToExportData => 'డేటాను ఎలా ఎక్స్పోర్ట్ చేయాలో ఎంచుకోండి';

  @override
  String get saveToDevice => 'సాధనకు సేవ్ చేయండి';

  @override
  String get share => 'పంచుకోండి';

  @override
  String get saveExportFile => 'ఎక్స్పోర్ట్ ఫైలును సేవ్ చేయండి';

  @override
  String dataSavedTo(String path) {
    return 'డేటాను స్వయంచాలకంగా దిగుమతి చేయబడింది';
  }

  @override
  String get dataExportedSuccessfully => 'డేటాను స్వయంచాలకంగా ఎక్స్పోర్ట్ చేయబడింది';

  @override
  String errorExportingData(String error) {
    return 'డేటాను ఎక్స్పోర్ట్ చేయడంలో లోపం: $error';
  }

  @override
  String get dataImportedSuccessfully => 'డేటాను స్వయంచాలకంగా దిగుమతి చేయబడింది';

  @override
  String errorImportingData(String error) {
    return 'డేటాను దిగుమతి చేయడంలో లోపం: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'అన్ని డేటాలు స్థిరమాయించబడింది.';

  @override
  String get import => 'దిగుమతి చేయండి';

  @override
  String get language => 'భాష';

  @override
  String get selectLanguage => 'భాషను ఎంచుకోండి';

  @override
  String get english => 'ఇంగ్లిష్';

  @override
  String get spanish => 'స్పానిష్';

  @override
  String get chinese => 'చైనీస్';

  @override
  String get hindi => 'హిందీ';

  @override
  String get arabic => 'అరబిక్';

  @override
  String get portuguese => 'పోర్చుగీస్';

  @override
  String get bengali => 'బెంగాలి';

  @override
  String get japanese => 'జపానీస్';

  @override
  String get punjabi => 'పంజాబీ';

  @override
  String get german => 'జర్మన్';

  @override
  String get javanese => 'జవానీస్';

  @override
  String get korean => 'కోరియన్';

  @override
  String get french => 'ఫ్రెంచు';

  @override
  String get telugu => 'తెలుగు';

  @override
  String get marathi => 'మరాథి';

  @override
  String get turkish => 'తూర్కిష్';

  @override
  String get tamil => 'తమిళ';

  @override
  String get vietnamese => 'వెయిట్నామీస్';

  @override
  String get urdu => 'ఉర్దు';

  @override
  String get ukrainian => 'యుక్రేనియన్';

  @override
  String get italian => 'ఇటాలియన్';

  @override
  String get russian => 'రష్యన్';

  @override
  String get darkMode => 'డార్క్ మోడ్';

  @override
  String get light => 'లైట్';

  @override
  String get dark => 'డార్క్';

  @override
  String get automatic => 'స్వయంచాలకం';

  @override
  String get followSystemSetting => 'సిస్టమ్ సెట్టింగ్లను అనుసరించండి';

  @override
  String get dataManagement => 'డేటా నిర్వహణ';

  @override
  String get version => 'వెర్షన్';

  @override
  String errorSavingTask(String error) {
    return 'పనిని సేవ్ చేయడంలో లోపం: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'మాపకం తొలగించడంలో లోపం: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'మాపకం \"$name\" తొలగించారు';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit విలువ',
      one: '1 విలువ',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values విలువ',
      one: '1 విలువ',
    );
    return 'విడిగా: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'నిరంతర మాపకం';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'మాపకం \"$name\" తొలగించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';
  }

  @override
  String valueX(int index) {
    return 'విలువ $index';
  }

  @override
  String get minValueRequired => 'కనీసం అనుమతించబడింది';

  @override
  String get maxValueRequired => 'అధికంగా అనుమతించబడింది';

  @override
  String get stepValueRequired => 'దశ విలువ అవసరం';

  @override
  String get minValueMustBeANumber => 'కనీసం అనుమతించబడింది';

  @override
  String get maxValueMustBeANumber => 'అధికంగా అనుమతించబడింది';

  @override
  String get stepValueMustBeAPositiveNumber => 'దశ విలువ ధనాత్మక సంఖ్యగా ఉండాలి';

  @override
  String get minValueMustBeLessThanMaxValue => 'కనీసం అనుమతించబడింది';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'అధికంగా అనుమతించబడింది';

  @override
  String get stepValueMustBeGreaterThanZero => 'దశ విలువ ధనాత్మక సంఖ్యగా ఉండాలి';

  @override
  String get valueCannotBeEmpty => 'విలువ ఖాళీ కాదు';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'ఎంచుకోబడే పరిమితి ధనాత్మక సంఖ్యగా ఉండాలి';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'ఎంచుకోబడే పరిమితి ధనాత్మక సంఖ్యగా ఉండాలి';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'వేరుచేతి మాపకాలకు కనీసం ఒక విలువ అవసరం';

  @override
  String get selectIconType => 'ఐకాన్ రకంను ఎంచుకోండి';

  @override
  String get icon => 'ఐకాన్';

  @override
  String get emoji => 'ఇమోజి';

  @override
  String get enterCriterionName => 'మాపకం పేరును ఇవ్వండి';

  @override
  String get type => 'రకం';

  @override
  String get discreteConfiguration => 'విడిగా సెట్టింగ్‌లు';

  @override
  String get howManyValuesCanBeSelected => 'ఎన్ని విలువలు ఎంచుకోవచ్చు?';

  @override
  String get continuousConfiguration => 'నిరంతర సెట్టింగ్‌లు';

  @override
  String get minimumAllowedValue => 'కనీసం అనుమతించబడింది';

  @override
  String get maximumAllowedValue => 'అధికంగా అనుమతించబడింది';

  @override
  String get incrementDecrementStep => 'ప్రతికొన్ని పెంచు/తగ్గించు';

  @override
  String errorSavingCriterion(String error) {
    return 'మాపకం సేవ్ చేయడంలో లోపం: $error';
  }

  @override
  String get editCriterion => 'మాపకంని సవరించు';

  @override
  String get selectIcon => 'ఐకాన్ను ఎంచుకోండి';

  @override
  String get selectEmoji => 'ఇమోజిను ఎంచుకోండి';

  @override
  String get icons => 'ఐకాన్లు';

  @override
  String get emojis => 'ఇమోజిలు';

  @override
  String get selectColor => 'రంగును ఎంచుకోండి';

  @override
  String get noCriteriaToRate => 'మాపకాలు లేవు';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'ఈ పనికి కనీసం మాపకం ఏదీ చేయబడలేదు';

  @override
  String errorSavingRatings(String error) {
    return 'రేటింగ్సు సేవ్ చేయడంలో లోపం: $error';
  }

  @override
  String get skip => 'దాటండి';

  @override
  String get save => 'సేవ్ చేయండి';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'ప్రాంతం: $minValue - $maxValue (దశ: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'పనిని మాపకం రేటింగ్ చేయండి: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'అప్పుడు $selectionLimit విలువలు ఎంచుకోండి';
  }

  @override
  String get swipeToStart => 'ప్రారంభంచేసినప్పుడు స్వైప్ చేయండి';

  @override
  String get resumeSession => 'సెషన్ తిరిగి ప్రారంభంచేయండి';

  @override
  String get resumeSessionMessage => 'మీరు ఖచ్చితంగా ఈ సెషన్ తిరిగి ప్రారంభంచేయాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String get deleteSession => 'సెషన్ తొలగించండి';

  @override
  String get deleteSessionMessage => 'మీరు ఖచ్చితంగా ఈ సెషన్ తొలగించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String get resume => 'తిరిగి ప్రారంభంచేయండి';
}
