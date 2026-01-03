// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker-க்கு வரவேற்கிறோம்';

  @override
  String get welcomeDescription => 'உங்கள் நேரத்தை கண்காணிக்கவும், பணிகளை நிர்வகிக்கவும் மற்றும் உங்கள் உற்பத்தித்திறனை எளிதாக பகுப்பாய்வு செய்யவும்।';

  @override
  String get continueButton => 'தொடரவும்';

  @override
  String get activeTask => 'செயலில் உள்ள பணி';

  @override
  String get listOfTasks => 'பணிகளின் பட்டியல்';

  @override
  String get statistics => 'புள்ளிவிவரங்கள்';

  @override
  String get listOfCriteria => 'அளவுகோல்களின் பட்டியல்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get addTask => 'பணியைச் சேர்';

  @override
  String get generalMotto => 'பொதுவான குறிக்கோள்';

  @override
  String get noTasks => 'இன்னும் பணிகள் இல்லை';

  @override
  String get createFirstTask => 'தொடங்க உங்கள் முதல் பணியை உருவாக்கவும்';

  @override
  String get addCriterion => 'அளவுகோலைச் சேர்';

  @override
  String get noCriteria => 'இன்னும் அளவுகோல்கள் இல்லை';

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
  String get selectionLimit => 'தேர்வு வரம்பு';

  @override
  String get minValue => 'குறைந்தபட்ச மதிப்பு';

  @override
  String get maxValue => 'அதிகபட்ச மதிப்பு';

  @override
  String get stepValue => 'படி மதிப்பு';

  @override
  String get value => 'மதிப்பு';

  @override
  String get updateCriterion => 'அளவுகோலைப் புதுப்பி';

  @override
  String get discard => 'நிராகரி';

  @override
  String get nameRequired => 'பெயர் தேவையானது';

  @override
  String get atLeastOneValue => 'குறைந்தபட்சம் ஒரு மதிப்பு தேவை';

  @override
  String get selectionLimitRequired => 'தேர்வு வரம்பு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get minMustBeLessThanMax => 'குறைந்தபட்ச மதிப்பு அதிகபட்ச மதிப்பை விட குறைவாக இருக்க வேண்டும்';

  @override
  String get stepMustBeGreaterThanZero => 'படி மதிப்பு 0 ஐ விட அதிகமாக இருக்க வேண்டும்';

  @override
  String get deleteCriterion => 'அளவுகோலை நீக்கு';

  @override
  String get deleteCriterionWarning => 'இந்த அளவுகோலை நீக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String criterionUsedInTasks(int count) {
    return 'இந்த அளவுகோல் $count பணிகளில் பயன்படுத்தப்படுகிறது. அந்த பணிகளிலிருந்து தொடர்பு நீக்கப்படும்.';
  }

  @override
  String get history => 'வரலாறு';

  @override
  String get charts => 'விளக்கப்படங்கள்';

  @override
  String get noSessions => 'இன்னும் அமர்வுகள் இல்லை';

  @override
  String get noSessionsDescription => 'உங்கள் அமர்வுகளை இங்கே பார்க்க நேரத்தை கண்காணிக்கத் தொடங்கவும்';

  @override
  String get noSessionsForPeriod => 'தேர்ந்தெடுக்கப்பட்ட காலத்திற்கு அமர்வுகள் கிடைக்கவில்லை';

  @override
  String get noActiveTask => 'செயலில் உள்ள பணி இல்லை';

  @override
  String get startTaskFromList => 'கண்காணிப்பைத் தொடங்க பட்டியலிலிருந்து ஒரு பணியைத் தொடங்கவும்';

  @override
  String get startTime => 'தொடக்க நேரம்';

  @override
  String get endTime => 'முடிவு நேரம்';

  @override
  String get stop => 'நிறுத்து';

  @override
  String get endTimeAfterStart => 'முடிவு நேரம் தொடக்க நேரத்திற்குப் பிறகு இருக்க வேண்டும்';

  @override
  String get discardSession => 'அமர்வை நிராகரி';

  @override
  String get discardSessionMessage => 'இந்த அமர்வை நிராகரிக்க விரும்புகிறீர்களா? இந்த செயலை திரும்பப் பெற முடியாது.';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get swipeToStop => 'நிறுத்த ஸ்வைப் செய்யவும்';

  @override
  String get filterByTask => 'பணியால் வடிகட்டு';

  @override
  String get allTasks => 'அனைத்து பணிகள்';

  @override
  String get filterByCriterion => 'அளவுகோலால் வடிகட்டு';

  @override
  String get allCriteria => 'அனைத்து அளவுகோல்கள்';

  @override
  String get timeSpentPerTask => 'ஒவ்வொரு பணிக்கும் செலவழித்த நேரம்';

  @override
  String get taskFrequencyOverTime => 'காலப்போக்கில் பணி அதிர்வெண்';

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
}
