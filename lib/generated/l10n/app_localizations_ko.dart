// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker에 오신 것을 환영합니다';

  @override
  String get welcomeDescription => '시간을 추적하고, 작업을 관리하며, 생산성을 쉽게 분석하세요.';

  @override
  String get continueButton => '계속';

  @override
  String get activeTask => '활성 작업';

  @override
  String get listOfTasks => '작업 목록';

  @override
  String get statistics => '통계';

  @override
  String get listOfCriteria => '기준 목록';

  @override
  String get settings => '설정';

  @override
  String get addTask => '작업 추가';

  @override
  String get generalMotto => '일반 모토';

  @override
  String get noTasks => '아직 작업이 없습니다';

  @override
  String get createFirstTask => '시작하려면 첫 번째 작업을 만드세요';

  @override
  String get addCriterion => '기준 추가';

  @override
  String get noCriteria => '아직 기준이 없습니다';

  @override
  String get createFirstCriterion => '시작하려면 첫 번째 기준을 만드세요';

  @override
  String get discrete => '이산';

  @override
  String get continuous => '연속';

  @override
  String get selections => '선택';

  @override
  String get values => '값';

  @override
  String get step => '단계';

  @override
  String get criterionName => '기준 이름';

  @override
  String get criterionType => '기준 유형';

  @override
  String get addValue => '값 추가';

  @override
  String get selectionLimit => '선택 제한';

  @override
  String get minValue => '최소값';

  @override
  String get maxValue => '최대값';

  @override
  String get stepValue => '단계 값';

  @override
  String get value => '값';

  @override
  String get updateCriterion => '기준 업데이트';

  @override
  String get discard => '취소';

  @override
  String get nameRequired => '이름이 필요합니다';

  @override
  String get atLeastOneValue => '최소한 하나의 값이 필요합니다';

  @override
  String get selectionLimitRequired => '선택 제한은 0보다 커야 합니다';

  @override
  String get minMustBeLessThanMax => '최소값은 최대값보다 작아야 합니다';

  @override
  String get stepMustBeGreaterThanZero => '단계 값은 0보다 커야 합니다';

  @override
  String get deleteCriterion => '기준 삭제';

  @override
  String get deleteCriterionWarning => '이 기준을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String criterionUsedInTasks(int count) {
    return '이 기준은 $count개의 작업에서 사용됩니다. 해당 작업에서 연결이 제거됩니다.';
  }

  @override
  String get history => '기록';

  @override
  String get charts => '차트';

  @override
  String get noSessions => '아직 세션이 없습니다';

  @override
  String get noSessionsDescription => '시간 추적을 시작하여 여기에서 세션을 확인하세요';

  @override
  String get noSessionsForPeriod => '선택한 기간에 세션을 찾을 수 없습니다';

  @override
  String get noActiveTask => '활성 작업이 없습니다';

  @override
  String get startTaskFromList => '목록에서 작업을 시작하여 추적을 시작하세요';

  @override
  String get startTime => '시작 시간';

  @override
  String get endTime => '종료 시간';

  @override
  String get stop => '중지';

  @override
  String get endTimeAfterStart => '종료 시간은 시작 시간 이후여야 합니다';

  @override
  String get discardSession => '세션 취소';

  @override
  String get discardSessionMessage => '이 세션을 취소하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String get cancel => '취소';

  @override
  String get swipeToStop => '스와이프하여 중지';

  @override
  String get filterByTask => '작업별 필터';

  @override
  String get allTasks => '모든 작업';

  @override
  String get filterByCriterion => '기준별 필터';

  @override
  String get allCriteria => '모든 기준';

  @override
  String get timeSpentPerTask => '작업당 소요 시간';

  @override
  String get taskFrequencyOverTime => '시간에 따른 작업 빈도';

  @override
  String get averageCriterionRatings => '기준 평균 평가';

  @override
  String get activityChart => '활동 차트';

  @override
  String get day => '일';

  @override
  String get week => '주';

  @override
  String get month => '월';

  @override
  String get year => '년';

  @override
  String get all => '모두';
}
