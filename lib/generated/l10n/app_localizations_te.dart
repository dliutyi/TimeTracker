// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker కు స్వాగతం';

  @override
  String get welcomeDescription => 'మీ సమయాన్ని ట్రాక్ చేయండి, పనులను నిర్వహించండి మరియు మీ ఉత్పాదకతను సులభంగా విశ్లేషించండి।';

  @override
  String get continueButton => 'కొనసాగించు';

  @override
  String get activeTask => 'సక్రియ పని';

  @override
  String get listOfTasks => 'పనుల జాబితా';

  @override
  String get statistics => 'గణాంకాలు';

  @override
  String get listOfCriteria => 'మాపకాల జాబితా';

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get addTask => 'పనిని జోడించు';

  @override
  String get generalMotto => 'సాధారణ మాట్టో';

  @override
  String get noTasks => 'ఇంకా పనులు లేవు';

  @override
  String get createFirstTask => 'ప్రారంభించడానికి మీ మొదటి పనిని సృష్టించండి';

  @override
  String get addCriterion => 'మాపకాన్ని జోడించు';

  @override
  String get noCriteria => 'ఇంకా మాపకాలు లేవు';

  @override
  String get createFirstCriterion => 'ప్రారంభించడానికి మీ మొదటి మాపకాన్ని సృష్టించండి';

  @override
  String get discrete => 'విడిగా';

  @override
  String get continuous => 'నిరంతర';

  @override
  String get selections => 'ఎంపికలు';

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
  String get selectionLimit => 'ఎంపిక పరిమితి';

  @override
  String get minValue => 'కనిష్ట విలువ';

  @override
  String get maxValue => 'గరిష్ట విలువ';

  @override
  String get stepValue => 'దశ విలువ';

  @override
  String get value => 'విలువ';

  @override
  String get updateCriterion => 'మాపకాన్ని నవీకరించు';

  @override
  String get discard => 'విస్మరించు';

  @override
  String get nameRequired => 'పేరు అవసరం';

  @override
  String get atLeastOneValue => 'కనీసం ఒక విలువ అవసరం';

  @override
  String get selectionLimitRequired => 'ఎంపిక పరిమితి 0 కంటే ఎక్కువగా ఉండాలి';

  @override
  String get minMustBeLessThanMax => 'కనిష్ట విలువ గరిష్ట విలువ కంటే తక్కువగా ఉండాలి';

  @override
  String get stepMustBeGreaterThanZero => 'దశ విలువ 0 కంటే ఎక్కువగా ఉండాలి';

  @override
  String get deleteCriterion => 'మాపకాన్ని తొలగించు';

  @override
  String get deleteCriterionWarning => 'మీరు ఖచ్చితంగా ఈ మాపకాన్ని తొలగించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String criterionUsedInTasks(int count) {
    return 'ఈ మాపకం $count పనులలో ఉపయోగించబడుతుంది. ఆ పనుల నుండి అనుబంధం తీసివేయబడుతుంది.';
  }

  @override
  String get history => 'చరిత్ర';

  @override
  String get charts => 'చార్ట్‌లు';

  @override
  String get noSessions => 'ఇంకా సెషన్‌లు లేవు';

  @override
  String get noSessionsDescription => 'మీ సెషన్‌లను ఇక్కడ చూడడానికి సమయాన్ని ట్రాక్ చేయడం ప్రారంభించండి';

  @override
  String get noSessionsForPeriod => 'ఎంచుకున్న కాలానికి సెషన్‌లు కనుగొనబడలేదు';

  @override
  String get noActiveTask => 'సక్రియ పని లేదు';

  @override
  String get startTaskFromList => 'ట్రాకింగ్ ప్రారంభించడానికి జాబితా నుండి పనిని ప్రారంభించండి';

  @override
  String get startTime => 'ప్రారంభ సమయం';

  @override
  String get endTime => 'ముగింపు సమయం';

  @override
  String get stop => 'ఆపు';

  @override
  String get endTimeAfterStart => 'ముగింపు సమయం ప్రారంభ సమయం తర్వాత ఉండాలి';

  @override
  String get discardSession => 'సెషన్‌ను విస్మరించు';

  @override
  String get discardSessionMessage => 'మీరు ఖచ్చితంగా ఈ సెషన్‌ను విస్మరించాలనుకుంటున్నారా? ఈ చర్యను రద్దు చేయలేరు.';

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get swipeToStop => 'ఆపడానికి స్వైప్ చేయండి';

  @override
  String get filterByTask => 'పని ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get allTasks => 'అన్ని పనులు';

  @override
  String get filterByCriterion => 'మాపకం ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get allCriteria => 'అన్ని మాపకాలు';

  @override
  String get timeSpentPerTask => 'ప్రతి పనికి ఖర్చు చేసిన సమయం';

  @override
  String get taskFrequencyOverTime => 'కాలంతో పని పౌనఃపున్యం';

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
  String get all => 'అన్నీ';
}
