// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get noCriteria => '기준이 없습니다';

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
  String get nameRequired => '이름은 필수입니다';

  @override
  String get atLeastOneValue => '최소한 하나의 값이 필요합니다';

  @override
  String get selectionLimitRequired => '선택 제한은 필수입니다';

  @override
  String get minMustBeLessThanMax => '최소값은 최대값보다 작아야 합니다';

  @override
  String get stepMustBeGreaterThanZero => '단계 값은 0보다 커야 합니다';

  @override
  String get deleteCriterion => '기준 삭제';

  @override
  String deleteCriterionWarning(Object name) {
    return '이 기준을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';
  }

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

  @override
  String get listening => '듣기';

  @override
  String get taskName => '작업 이름';

  @override
  String get mottoOptional => '모토 (선택사항)';

  @override
  String get criteria => '기준';

  @override
  String get noCriteriaAvailable => '기준이 없습니다';

  @override
  String get updateTask => '작업 업데이트';

  @override
  String get nameTooLong => '이름은 32자 이하여야 합니다';

  @override
  String get mottoTooLong => '모토는 128자 이하여야 합니다';

  @override
  String get editTask => '작업 수정';

  @override
  String get enable => '활성화';

  @override
  String get disable => '비활성화';

  @override
  String get enableTask => '작업 활성화';

  @override
  String get disableTask => '작업 비활성화';

  @override
  String get enableTaskMessage => '이 작업을 활성화하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String get disableTaskMessage => '이 작업을 비활성화하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String taskEnabled(Object name) {
    return '작업 \"$name\"이 활성화되었습니다';
  }

  @override
  String taskDisabled(Object name) {
    return '작업 \"$name\"이 비활성화되었습니다';
  }

  @override
  String get deleteTask => '작업 삭제';

  @override
  String get deleteTaskMessage => '이 작업을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String taskDeleted(Object name) {
    return '작업 \"$name\"이 삭제되었습니다';
  }

  @override
  String get anotherTaskActive => '다른 작업이 활성화되어 있습니다. 먼저 중지하세요.';

  @override
  String errorActivatingTask(String error) {
    return '작업 활성화 오류: $error';
  }

  @override
  String get delete => '삭제';

  @override
  String error(String error) {
    return '오류: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return '세션 중지 오류: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return '세션 취소 오류: $error';
  }

  @override
  String get noActiveTaskMessage => '활성 작업이 없습니다';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => '알 수 없는 작업';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return '작업 로딩 오류: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return '기준 로딩 오류: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return '세션 로딩 오류: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return '모든 세션 로딩 오류: $error';
  }

  @override
  String get unknown => '알 수 없음';

  @override
  String get exportData => '데이터 내보내기';

  @override
  String get exportAllAppDataToFile => '모든 앱 데이터를 파일로 내보내기';

  @override
  String get importData => '데이터 가져오기';

  @override
  String get importDataFromFile => '파일에서 데이터 가져오기';

  @override
  String get chooseHowToExportData => '데이터를 내보내는 방법을 선택하세요';

  @override
  String get saveToDevice => '장치에 저장';

  @override
  String get share => '공유';

  @override
  String get saveExportFile => '내보내기 파일 저장';

  @override
  String dataSavedTo(String path) {
    return '데이터가 성공적으로 저장되었습니다';
  }

  @override
  String get dataExportedSuccessfully => '데이터가 성공적으로 내보내졌습니다';

  @override
  String errorExportingData(String error) {
    return '데이터 내보내기 오류: $error';
  }

  @override
  String get dataImportedSuccessfully => '데이터가 성공적으로 가져오졌습니다';

  @override
  String errorImportingData(String error) {
    return '데이터 가져오기 오류: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => '모든 데이터가 영구적으로 삭제됩니다.';

  @override
  String get import => '가져오기';

  @override
  String get language => '언어';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get english => '영어';

  @override
  String get spanish => '스페인어';

  @override
  String get chinese => '중국어';

  @override
  String get hindi => '힌디어';

  @override
  String get arabic => '아랍어';

  @override
  String get portuguese => '포르투갈어';

  @override
  String get bengali => '뱅골어';

  @override
  String get japanese => '일본어';

  @override
  String get punjabi => '펀자브어';

  @override
  String get german => '독일어';

  @override
  String get javanese => '자바어';

  @override
  String get korean => '한국어';

  @override
  String get french => '프랑스어';

  @override
  String get telugu => '텔루구어';

  @override
  String get marathi => '마라티어';

  @override
  String get turkish => '터키어';

  @override
  String get tamil => '타밀어';

  @override
  String get vietnamese => '베트남어';

  @override
  String get urdu => '우르드어';

  @override
  String get ukrainian => '우크라이나어';

  @override
  String get italian => '이탈리아어';

  @override
  String get russian => '러시아어';

  @override
  String get darkMode => '어두운 모드';

  @override
  String get light => '라이트';

  @override
  String get dark => '어두운';

  @override
  String get automatic => '자동';

  @override
  String get followSystemSetting => '시스템 설정 따르기';

  @override
  String get dataManagement => '데이터 관리';

  @override
  String get version => '버전';

  @override
  String errorSavingTask(String error) {
    return '작업 저장 오류: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return '기준 삭제 오류: $error';
  }

  @override
  String criterionDeleted(String name) {
    return '기준 \"$name\"이 삭제되었습니다';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit 값',
      one: '1 값',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values 값',
      one: '1 값',
    );
    return '이산: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return '연속: $minValue - $maxValue, 단계 $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return '이 기준을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';
  }

  @override
  String valueX(int index) {
    return '값 $index';
  }

  @override
  String get minValueRequired => '최소값은 필수입니다';

  @override
  String get maxValueRequired => '최대값은 필수입니다';

  @override
  String get stepValueRequired => '단계 값은 필수입니다';

  @override
  String get minValueMustBeANumber => '최소값은 숫자여야 합니다';

  @override
  String get maxValueMustBeANumber => '최대값은 숫자여야 합니다';

  @override
  String get stepValueMustBeAPositiveNumber => '단계 값은 양수여야 합니다';

  @override
  String get minValueMustBeLessThanMaxValue => '최소값은 최대값보다 작아야 합니다';

  @override
  String get maxValueMustBeGreaterThanMinValue => '최대값은 최소값보다 커야 합니다';

  @override
  String get stepValueMustBeGreaterThanZero => '단계 값은 0보다 커야 합니다';

  @override
  String get valueCannotBeEmpty => '값은 비어있을 수 없습니다';

  @override
  String get selectionLimitMustBeGreaterThanZero => '선택 제한은 0보다 커야 합니다';

  @override
  String get selectionLimitMustBeAPositiveNumber => '선택 제한은 양수여야 합니다';

  @override
  String get atLeastOneValueForDiscreteCriteria => '이산 기준에 최소한 하나의 값이 필요합니다';

  @override
  String get selectIconType => '아이콘 유형 선택';

  @override
  String get icon => '아이콘';

  @override
  String get emoji => '이모지';

  @override
  String get enterCriterionName => '기준 이름을 입력하세요';

  @override
  String get type => '유형';

  @override
  String get discreteConfiguration => '이산 설정';

  @override
  String get howManyValuesCanBeSelected => '몇 개의 값을 선택할 수 있습니까';

  @override
  String get continuousConfiguration => '연속 설정';

  @override
  String get minimumAllowedValue => '최소 허용 값';

  @override
  String get maximumAllowedValue => '최대 허용 값';

  @override
  String get incrementDecrementStep => '증가/감소 단계';

  @override
  String errorSavingCriterion(String error) {
    return '기준 저장 오류: $error';
  }

  @override
  String get editCriterion => '기준 수정';

  @override
  String get selectIcon => '아이콘 선택';

  @override
  String get selectEmoji => '이모지 선택';

  @override
  String get icons => '아이콘';

  @override
  String get emojis => '이모지';

  @override
  String get selectColor => '색상 선택';

  @override
  String get noCriteriaToRate => '평가할 기준이 없습니다';

  @override
  String get thisTaskHasNoCriteriaAssigned => '이 작업은 기준이 없습니다.';

  @override
  String errorSavingRatings(String error) {
    return '평가 저장 오류: $error';
  }

  @override
  String get skip => '건너뛰기';

  @override
  String get save => '저장';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return '범위: $minValue - $maxValue (단계: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return '작업 평가: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return '최대 $selectionLimit개의 값을 선택하세요';
  }

  @override
  String get swipeToStart => '스와이프하여 시작';
}
