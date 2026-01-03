// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Trackerへようこそ';

  @override
  String get welcomeDescription => '時間を追跡し、タスクを管理し、生産性を簡単に分析できます。';

  @override
  String get continueButton => '続ける';

  @override
  String get activeTask => 'アクティブなタスク';

  @override
  String get listOfTasks => 'タスク一覧';

  @override
  String get statistics => '統計';

  @override
  String get listOfCriteria => '基準一覧';

  @override
  String get settings => '設定';

  @override
  String get addTask => 'タスクを追加';

  @override
  String get generalMotto => '一般的なモットー';

  @override
  String get noTasks => 'まだタスクがありません';

  @override
  String get createFirstTask => '始めるには最初のタスクを作成してください';

  @override
  String get addCriterion => '基準を追加';

  @override
  String get noCriteria => 'まだ基準がありません';

  @override
  String get createFirstCriterion => '始めるには最初の基準を作成してください';

  @override
  String get discrete => '離散的';

  @override
  String get continuous => '連続的';

  @override
  String get selections => '選択';

  @override
  String get values => '値';

  @override
  String get step => 'ステップ';

  @override
  String get criterionName => '基準名';

  @override
  String get criterionType => '基準タイプ';

  @override
  String get addValue => '値を追加';

  @override
  String get selectionLimit => '選択制限';

  @override
  String get minValue => '最小値';

  @override
  String get maxValue => '最大値';

  @override
  String get stepValue => 'ステップ値';

  @override
  String get value => '値';

  @override
  String get updateCriterion => '基準を更新';

  @override
  String get discard => '破棄';

  @override
  String get nameRequired => '名前は必須です';

  @override
  String get atLeastOneValue => '少なくとも1つの値が必要です';

  @override
  String get selectionLimitRequired => '選択制限は0より大きい必要があります';

  @override
  String get minMustBeLessThanMax => '最小値は最大値より小さくする必要があります';

  @override
  String get stepMustBeGreaterThanZero => 'ステップ値は0より大きい必要があります';

  @override
  String get deleteCriterion => '基準を削除';

  @override
  String get deleteCriterionWarning => 'この基準を削除してもよろしいですか？この操作は元に戻せません。';

  @override
  String criterionUsedInTasks(int count) {
    return 'この基準は $count 個のタスクで使用されています。それらのタスクから関連付けが削除されます。';
  }

  @override
  String get history => '履歴';

  @override
  String get charts => 'グラフ';

  @override
  String get noSessions => 'まだセッションがありません';

  @override
  String get noSessionsDescription => '時間の追跡を開始して、ここでセッションを確認してください';

  @override
  String get noSessionsForPeriod => '選択した期間のセッションが見つかりませんでした';

  @override
  String get noActiveTask => 'アクティブなタスクがありません';

  @override
  String get startTaskFromList => 'リストからタスクを開始して追跡を開始してください';

  @override
  String get startTime => '開始時間';

  @override
  String get endTime => '終了時間';

  @override
  String get stop => '停止';

  @override
  String get endTimeAfterStart => '終了時間は開始時間より後である必要があります';

  @override
  String get discardSession => 'セッションを破棄';

  @override
  String get discardSessionMessage => 'このセッションを破棄してもよろしいですか？この操作は元に戻せません。';

  @override
  String get cancel => 'キャンセル';

  @override
  String get swipeToStop => 'スワイプして停止';

  @override
  String get filterByTask => 'タスクでフィルター';

  @override
  String get allTasks => 'すべてのタスク';

  @override
  String get filterByCriterion => '基準でフィルター';

  @override
  String get allCriteria => 'すべての基準';

  @override
  String get timeSpentPerTask => 'タスクごとの時間';

  @override
  String get taskFrequencyOverTime => '時間経過によるタスク頻度';

  @override
  String get averageCriterionRatings => '基準の平均評価';

  @override
  String get activityChart => 'アクティビティチャート';

  @override
  String get day => '日';

  @override
  String get week => '週';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get all => 'すべて';
}
