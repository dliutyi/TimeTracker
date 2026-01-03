// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => '欢迎使用 YuDi Time Tracker';

  @override
  String get welcomeDescription => '轻松跟踪您的时间、管理任务并分析您的生产力。';

  @override
  String get continueButton => '继续';

  @override
  String get activeTask => '活动任务';

  @override
  String get listOfTasks => '任务列表';

  @override
  String get statistics => '统计';

  @override
  String get listOfCriteria => '标准列表';

  @override
  String get settings => '设置';

  @override
  String get addTask => '添加任务';

  @override
  String get generalMotto => '一般座右铭';

  @override
  String get noTasks => '还没有任务';

  @override
  String get createFirstTask => '创建您的第一个任务以开始';

  @override
  String get addCriterion => '添加标准';

  @override
  String get noCriteria => '还没有标准';

  @override
  String get createFirstCriterion => '创建您的第一个标准以开始';

  @override
  String get discrete => '离散';

  @override
  String get continuous => '连续';

  @override
  String get selections => '选择';

  @override
  String get values => '值';

  @override
  String get step => '步长';

  @override
  String get criterionName => '标准名称';

  @override
  String get criterionType => '标准类型';

  @override
  String get addValue => '添加值';

  @override
  String get selectionLimit => '选择限制';

  @override
  String get minValue => '最小值';

  @override
  String get maxValue => '最大值';

  @override
  String get stepValue => '步长值';

  @override
  String get value => '值';

  @override
  String get updateCriterion => '更新标准';

  @override
  String get discard => '丢弃';

  @override
  String get nameRequired => '名称是必需的';

  @override
  String get atLeastOneValue => '至少需要一个值';

  @override
  String get selectionLimitRequired => '选择限制必须大于0';

  @override
  String get minMustBeLessThanMax => '最小值必须小于最大值';

  @override
  String get stepMustBeGreaterThanZero => '步长值必须大于0';

  @override
  String get deleteCriterion => '删除标准';

  @override
  String get deleteCriterionWarning => '您确定要删除此标准吗？此操作无法撤消。';

  @override
  String criterionUsedInTasks(int count) {
    return '此标准在 $count 个任务中使用。将从这些任务中删除关联。';
  }

  @override
  String get history => '历史';

  @override
  String get charts => '图表';

  @override
  String get noSessions => '还没有会话';

  @override
  String get noSessionsDescription => '开始跟踪时间以在此处查看您的会话';

  @override
  String get noSessionsForPeriod => '所选时间段未找到会话';

  @override
  String get noActiveTask => '没有活动任务';

  @override
  String get startTaskFromList => '从列表启动任务以开始跟踪';

  @override
  String get startTime => '开始时间';

  @override
  String get endTime => '结束时间';

  @override
  String get stop => '停止';

  @override
  String get endTimeAfterStart => '结束时间必须在开始时间之后';

  @override
  String get discardSession => '丢弃会话';

  @override
  String get discardSessionMessage => '您确定要丢弃此会话吗？此操作无法撤消。';

  @override
  String get cancel => '取消';

  @override
  String get swipeToStop => '滑动停止';

  @override
  String get filterByTask => '按任务筛选';

  @override
  String get allTasks => '所有任务';

  @override
  String get filterByCriterion => '按标准筛选';

  @override
  String get allCriteria => '所有标准';

  @override
  String get timeSpentPerTask => '每项任务花费的时间';

  @override
  String get taskFrequencyOverTime => '任务频率随时间变化';

  @override
  String get averageCriterionRatings => '标准平均评分';

  @override
  String get activityChart => '活动图表';

  @override
  String get day => '天';

  @override
  String get week => '周';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get all => '全部';
}
