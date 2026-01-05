// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get generalMotto => '通用座右铭';

  @override
  String get noTasks => '没有任务';

  @override
  String get createFirstTask => '创建第一个任务';

  @override
  String get addCriterion => '添加标准';

  @override
  String get noCriteria => '没有标准';

  @override
  String get createFirstCriterion => '创建第一个标准';

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
  String get atLeastOneValue => '至少一个值';

  @override
  String get selectionLimitRequired => '选择限制是必需的';

  @override
  String get minMustBeLessThanMax => '最小值必须小于最大值';

  @override
  String get stepMustBeGreaterThanZero => '步长值必须大于零';

  @override
  String get deleteCriterion => '删除标准';

  @override
  String deleteCriterionWarning(Object name) {
    return '你确定要删除这个标准吗？这个操作无法撤销。';
  }

  @override
  String criterionUsedInTasks(int count) {
    return '此标准在$count个任务中使用。将从这些任务中删除关联。';
  }

  @override
  String get history => '历史';

  @override
  String get charts => '图表';

  @override
  String get noSessions => '没有会话';

  @override
  String get noSessionsDescription => '开始跟踪时间以在此处查看您的会话';

  @override
  String get noSessionsForPeriod => '未找到所选时间段内的会话';

  @override
  String get noActiveTask => '没有活动任务';

  @override
  String get startTaskFromList => '从列表开始任务以开始跟踪';

  @override
  String get startTime => '开始时间';

  @override
  String get endTime => '结束时间';

  @override
  String get stop => '停止';

  @override
  String get endTimeAfterStart => '结束时间必须在开始时间之后';

  @override
  String get discardSession => '放弃会话';

  @override
  String get discardSessionMessage => '这将放弃会话。这个操作无法撤销。';

  @override
  String get cancel => '取消';

  @override
  String get swipeToStop => '滑动停止';

  @override
  String get filterByTask => '按任务过滤';

  @override
  String get allTasks => '所有任务';

  @override
  String get filterByCriterion => '按标准过滤';

  @override
  String get allCriteria => '所有标准';

  @override
  String get timeSpentPerTask => '每任务时间';

  @override
  String get taskFrequencyOverTime => '任务频率随时间变化';

  @override
  String get averageCriterionRatings => '平均标准评分';

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

  @override
  String get listening => '聆听...';

  @override
  String get taskName => '任务名称';

  @override
  String get mottoOptional => '座右铭（可选）';

  @override
  String get criteria => '标准';

  @override
  String get noCriteriaAvailable => '没有可用的标准。首先创建标准。';

  @override
  String get updateTask => '更新任务';

  @override
  String get nameTooLong => '任务名称必须小于32个字符';

  @override
  String get mottoTooLong => '座右铭必须小于128个字符';

  @override
  String get editTask => '编辑任务';

  @override
  String get enable => '启用';

  @override
  String get disable => '禁用';

  @override
  String get enableTask => '启用任务';

  @override
  String get disableTask => '禁用任务';

  @override
  String get enableTaskMessage => '这将启用任务。它将被移动到列表顶部。你可以在以后再次禁用它。';

  @override
  String get disableTaskMessage => '这将禁用任务。它将被移动到列表底部。你可以在以后再次启用它。';

  @override
  String taskEnabled(Object name) {
    return '任务已启用';
  }

  @override
  String taskDisabled(Object name) {
    return '任务已禁用';
  }

  @override
  String get deleteTask => '删除任务';

  @override
  String get deleteTaskMessage => '这将删除任务及其所有关联的会话。这个操作无法撤销。\n\n请考虑禁用任务，如果你不确定。';

  @override
  String taskDeleted(Object name) {
    return '任务已删除';
  }

  @override
  String get anotherTaskActive => '另一个任务活动';

  @override
  String errorActivatingTask(String error) {
    return '激活任务时出错: $error';
  }

  @override
  String get delete => '删除';

  @override
  String error(String error) {
    return '错误: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return '停止会话时出错: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return '放弃会话时出错: $error';
  }

  @override
  String get noActiveTaskMessage => '从任务列表开始任务以开始跟踪';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => '未知任务';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return '加载任务时出错: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return '加载标准时出错: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return '加载会话时出错: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return '加载所有会话时出错: $error';
  }

  @override
  String get unknown => '未知';

  @override
  String get exportData => '导出数据';

  @override
  String get exportAllAppDataToFile => '导出所有应用程序数据到文件';

  @override
  String get importData => '导入数据';

  @override
  String get importDataFromFile => '从文件导入数据';

  @override
  String get chooseHowToExportData => '选择如何导出数据';

  @override
  String get saveToDevice => '保存到设备';

  @override
  String get share => '分享';

  @override
  String get saveExportFile => '保存导出文件';

  @override
  String dataSavedTo(String path) {
    return '数据保存到';
  }

  @override
  String get dataExportedSuccessfully => '数据导出成功';

  @override
  String errorExportingData(String error) {
    return '导出数据时出错: $error';
  }

  @override
  String get dataImportedSuccessfully => '数据导入成功';

  @override
  String errorImportingData(String error) {
    return '导入数据时出错: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => '所有现有数据将被永久删除';

  @override
  String get import => '导入';

  @override
  String get language => '语言';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get english => '英语';

  @override
  String get spanish => '西班牙语';

  @override
  String get chinese => '中文';

  @override
  String get hindi => '印地语';

  @override
  String get arabic => '阿拉伯语';

  @override
  String get portuguese => '葡萄牙语';

  @override
  String get bengali => '孟加拉语';

  @override
  String get japanese => '日语';

  @override
  String get punjabi => '旁遮普语';

  @override
  String get german => '德语';

  @override
  String get javanese => '爪哇语';

  @override
  String get korean => '韩语';

  @override
  String get french => '法语';

  @override
  String get telugu => '泰卢固语';

  @override
  String get marathi => '马拉地语';

  @override
  String get turkish => '土耳其语';

  @override
  String get tamil => '泰米尔语';

  @override
  String get vietnamese => '越南语';

  @override
  String get urdu => '乌尔都语';

  @override
  String get ukrainian => '乌克兰语';

  @override
  String get italian => '意大利语';

  @override
  String get russian => '俄语';

  @override
  String get darkMode => '暗模式';

  @override
  String get light => '轻';

  @override
  String get dark => '暗';

  @override
  String get automatic => '自动';

  @override
  String get followSystemSetting => '跟随系统设置';

  @override
  String get dataManagement => '数据管理';

  @override
  String get version => '版本';

  @override
  String errorSavingTask(String error) {
    return '保存任务时出错: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return '删除标准时出错: $error';
  }

  @override
  String criterionDeleted(String name) {
    return '标准\"$name\"已删除';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit 值',
      one: '1 值',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values 值',
      one: '1 值',
    );
    return '离散标准: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return '连续标准';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return '你确定要删除标准\"$name\"吗？这个操作无法撤销。';
  }

  @override
  String valueX(int index) {
    return '值$index';
  }

  @override
  String get minValueRequired => '最小值是必需的';

  @override
  String get maxValueRequired => '最大值是必需的';

  @override
  String get stepValueRequired => '步长值是必需的';

  @override
  String get minValueMustBeANumber => '最小值必须是一个数字';

  @override
  String get maxValueMustBeANumber => '最大值必须是一个数字';

  @override
  String get stepValueMustBeAPositiveNumber => '步长值必须是一个正数';

  @override
  String get minValueMustBeLessThanMaxValue => '最小值必须小于最大值';

  @override
  String get maxValueMustBeGreaterThanMinValue => '最大值必须大于最小值';

  @override
  String get stepValueMustBeGreaterThanZero => '步长值必须大于零';

  @override
  String get valueCannotBeEmpty => '值不能为空';

  @override
  String get selectionLimitMustBeGreaterThanZero => '选择限制必须大于零';

  @override
  String get selectionLimitMustBeAPositiveNumber => '选择限制必须是一个正数';

  @override
  String get atLeastOneValueForDiscreteCriteria => '至少一个值用于离散标准';

  @override
  String get selectIconType => '选择图标类型';

  @override
  String get icon => '图标';

  @override
  String get emoji => '表情符号';

  @override
  String get enterCriterionName => '输入标准名称';

  @override
  String get type => '类型';

  @override
  String get discreteConfiguration => '离散配置';

  @override
  String get howManyValuesCanBeSelected => '可以选择多少个值';

  @override
  String get continuousConfiguration => '连续配置';

  @override
  String get minimumAllowedValue => '最小允许值';

  @override
  String get maximumAllowedValue => '最大允许值';

  @override
  String get incrementDecrementStep => '增加/减少步长';

  @override
  String errorSavingCriterion(String error) {
    return '保存标准时出错: $error';
  }

  @override
  String get editCriterion => '编辑标准';

  @override
  String get selectIcon => '选择图标';

  @override
  String get selectEmoji => '选择表情符号';

  @override
  String get icons => '图标';

  @override
  String get emojis => '表情符号';

  @override
  String get selectColor => '选择颜色';

  @override
  String get noCriteriaToRate => '没有可评分的标准';

  @override
  String get thisTaskHasNoCriteriaAssigned => '此任务没有分配标准。';

  @override
  String errorSavingRatings(String error) {
    return '保存评分时出错: $error';
  }

  @override
  String get skip => '跳过';

  @override
  String get save => '保存';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return '范围: $minValue - $maxValue（步长: $stepValue）';
  }

  @override
  String rateTask(String taskName) {
    return '评分任务';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return '选择最多$selectionLimit个值';
  }

  @override
  String get swipeToStart => '滑动开始';
}
