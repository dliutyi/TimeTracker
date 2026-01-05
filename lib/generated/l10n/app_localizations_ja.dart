// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get createFirstTask => '最初のタスクを作成して開始してください';

  @override
  String get addCriterion => '基準を追加';

  @override
  String get noCriteria => 'まだ基準がありません';

  @override
  String get createFirstCriterion => '最初の基準を作成して開始してください';

  @override
  String get discrete => '離散';

  @override
  String get continuous => '連続';

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
  String get selectionLimitRequired => '選択制限は必須です';

  @override
  String get minMustBeLessThanMax => '最小値は最大値より小さい必要があります';

  @override
  String get stepMustBeGreaterThanZero => 'ステップ値は0より大きい必要があります';

  @override
  String get deleteCriterion => '基準を削除';

  @override
  String deleteCriterionWarning(Object name) {
    return 'この基準を削除してもよろしいですか？この操作は元に戻せません。';
  }

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

  @override
  String get listening => 'リスニング';

  @override
  String get taskName => 'タスク名';

  @override
  String get mottoOptional => 'モットー(オプション)';

  @override
  String get criteria => '基準';

  @override
  String get noCriteriaAvailable => 'まだ基準がありません';

  @override
  String get updateTask => 'タスクを更新';

  @override
  String get nameTooLong => '名前は32文字以内である必要があります';

  @override
  String get mottoTooLong => 'モットーは128文字以内である必要があります';

  @override
  String get editTask => 'タスクを編集';

  @override
  String get enable => '有効化';

  @override
  String get disable => '無効化';

  @override
  String get enableTask => 'タスクを有効化';

  @override
  String get disableTask => 'タスクを無効化';

  @override
  String get enableTaskMessage => 'このタスクを有効化してもよろしいですか？この操作は元に戻せません。';

  @override
  String get disableTaskMessage => 'このタスクを無効化してもよろしいですか？この操作は元に戻せません。';

  @override
  String taskEnabled(Object name) {
    return 'タスクが有効化されました';
  }

  @override
  String taskDisabled(Object name) {
    return 'タスクが無効化されました';
  }

  @override
  String get deleteTask => 'タスクを削除';

  @override
  String get deleteTaskMessage => 'このタスクを削除してもよろしいですか？この操作は元に戻せません。';

  @override
  String taskDeleted(Object name) {
    return 'タスクが削除されました';
  }

  @override
  String get anotherTaskActive => '別のタスクがアクティブです。最初に停止してください。';

  @override
  String errorActivatingTask(String error) {
    return 'タスクを有効化する際にエラーが発生しました: $error';
  }

  @override
  String get delete => '削除';

  @override
  String error(String error) {
    return 'エラー: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'セッションを停止する際にエラーが発生しました: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'セッションを破棄する際にエラーが発生しました: $error';
  }

  @override
  String get noActiveTaskMessage => 'アクティブなタスクがありません';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => '不明なタスク';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'タスクを読み込む際にエラーが発生しました: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return '基準を読み込む際にエラーが発生しました: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'セッションを読み込む際にエラーが発生しました: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'すべてのセッションを読み込む際にエラーが発生しました: $error';
  }

  @override
  String get unknown => '不明';

  @override
  String get exportData => 'データをエクスポート';

  @override
  String get exportAllAppDataToFile => 'すべてのアプリデータをファイルにエクスポートします';

  @override
  String get importData => 'データをインポート';

  @override
  String get importDataFromFile => 'ファイルからデータをインポート';

  @override
  String get chooseHowToExportData => 'データのエクスポート方法を選択してください';

  @override
  String get saveToDevice => 'デバイスに保存';

  @override
  String get share => '共有';

  @override
  String get saveExportFile => 'エクスポートファイルを保存';

  @override
  String dataSavedTo(String path) {
    return 'データが正常に保存されました';
  }

  @override
  String get dataExportedSuccessfully => 'データが正常にエクスポートされました';

  @override
  String errorExportingData(String error) {
    return 'データをエクスポートする際にエラーが発生しました: $error';
  }

  @override
  String get dataImportedSuccessfully => 'データが正常にインポートされました';

  @override
  String errorImportingData(String error) {
    return 'データをインポートする際にエラーが発生しました: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'すべての既存データが永続的に削除されます。';

  @override
  String get import => 'インポート';

  @override
  String get language => '言語';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get english => '英語';

  @override
  String get spanish => 'スペイン語';

  @override
  String get chinese => '中国語';

  @override
  String get hindi => 'ヒンディー語';

  @override
  String get arabic => 'アラビア語';

  @override
  String get portuguese => 'ポルトガル語';

  @override
  String get bengali => 'ベンガル語';

  @override
  String get japanese => '日本語';

  @override
  String get punjabi => 'パンジャブ語';

  @override
  String get german => 'ドイツ語';

  @override
  String get javanese => 'ジャワ語';

  @override
  String get korean => '韓国語';

  @override
  String get french => 'フランス語';

  @override
  String get telugu => 'テルグ語';

  @override
  String get marathi => 'マラーティ語';

  @override
  String get turkish => 'トルコ語';

  @override
  String get tamil => 'タミル語';

  @override
  String get vietnamese => 'ベトナム語';

  @override
  String get urdu => 'ウルドゥー語';

  @override
  String get ukrainian => 'ウクライナ語';

  @override
  String get italian => 'イタリア語';

  @override
  String get russian => 'ロシア語';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get light => 'ライト';

  @override
  String get dark => 'ダーク';

  @override
  String get automatic => '自動';

  @override
  String get followSystemSetting => 'システム設定に従う';

  @override
  String get dataManagement => 'データ管理';

  @override
  String get version => 'バージョン';

  @override
  String errorSavingTask(String error) {
    return 'タスクを保存する際にエラーが発生しました: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return '基準を削除する際にエラーが発生しました: $error';
  }

  @override
  String criterionDeleted(String name) {
    return '基準\"$name\"が削除されました';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit 値',
      one: '1 値',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values 値',
      one: '1 値',
    );
    return '離散基準: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return '連続基準';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return '基準\"$name\"を削除してもよろしいですか？この操作は元に戻せません。';
  }

  @override
  String valueX(int index) {
    return '値$index';
  }

  @override
  String get minValueRequired => '最小値は必須です';

  @override
  String get maxValueRequired => '最大値は必須です';

  @override
  String get stepValueRequired => 'ステップ値は必須です';

  @override
  String get minValueMustBeANumber => '最小値は数値である必要があります';

  @override
  String get maxValueMustBeANumber => '最大値は数値である必要があります';

  @override
  String get stepValueMustBeAPositiveNumber => 'ステップ値は正の数である必要があります';

  @override
  String get minValueMustBeLessThanMaxValue => '最小値は最大値より小さい必要があります';

  @override
  String get maxValueMustBeGreaterThanMinValue => '最大値は最小値より大きい必要があります';

  @override
  String get stepValueMustBeGreaterThanZero => 'ステップ値は0より大きい必要があります';

  @override
  String get valueCannotBeEmpty => '値は空にすることはできません';

  @override
  String get selectionLimitMustBeGreaterThanZero => '選択制限は0より大きい必要があります';

  @override
  String get selectionLimitMustBeAPositiveNumber => '選択制限は正の数である必要があります';

  @override
  String get atLeastOneValueForDiscreteCriteria => '離散基準には少なくとも1つの値が必要です';

  @override
  String get selectIconType => 'アイコンタイプを選択';

  @override
  String get icon => 'アイコン';

  @override
  String get emoji => '絵文字';

  @override
  String get enterCriterionName => '基準名を入力してください';

  @override
  String get type => 'タイプ';

  @override
  String get discreteConfiguration => '離散設定';

  @override
  String get howManyValuesCanBeSelected => 'いくつの値を選択できますか';

  @override
  String get continuousConfiguration => '連続設定';

  @override
  String get minimumAllowedValue => '最小値';

  @override
  String get maximumAllowedValue => '最大値';

  @override
  String get incrementDecrementStep => '増減ステップ';

  @override
  String errorSavingCriterion(String error) {
    return '基準を保存する際にエラーが発生しました: $error';
  }

  @override
  String get editCriterion => '基準を編集';

  @override
  String get selectIcon => 'アイコンを選択';

  @override
  String get selectEmoji => '絵文字を選択';

  @override
  String get icons => 'アイコン';

  @override
  String get emojis => '絵文字';

  @override
  String get selectColor => '色を選択';

  @override
  String get noCriteriaToRate => 'まだ基準がありません';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'このタスクには基準が割り当てられていません。';

  @override
  String errorSavingRatings(String error) {
    return '評価を保存する際にエラーが発生しました: $error';
  }

  @override
  String get skip => 'スキップ';

  @override
  String get save => '保存';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return '範囲: $minValue - $maxValue (ステップ: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'タスクを評価: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return '最大$selectionLimit個の値を選択';
  }

  @override
  String get swipeToStart => 'スワイプして開始';
}
