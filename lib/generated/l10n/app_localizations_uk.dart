// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Ласкаво просимо до YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Відстежуйте свій час, керуйте завданнями та аналізуйте свою продуктивність з легкістю.';

  @override
  String get continueButton => 'Продовжити';

  @override
  String get activeTask => 'Активне завдання';

  @override
  String get listOfTasks => 'Список завдань';

  @override
  String get statistics => 'Статистика';

  @override
  String get listOfCriteria => 'Список критеріїв';

  @override
  String get settings => 'Налаштування';

  @override
  String get addTask => 'Додати завдання';

  @override
  String get generalMotto => 'Загальний девіз';

  @override
  String get noTasks => 'Поки що немає завдань';

  @override
  String get createFirstTask => 'Створіть своє перше завдання, щоб почати';

  @override
  String get addCriterion => 'Додати критерій';

  @override
  String get noCriteria => 'Поки що немає критеріїв';

  @override
  String get createFirstCriterion => 'Створіть свій перший критерій, щоб почати';

  @override
  String get discrete => 'Дискретний';

  @override
  String get continuous => 'Безперервний';

  @override
  String get selections => 'вибори';

  @override
  String get values => 'значення';

  @override
  String get step => 'крок';

  @override
  String get criterionName => 'Назва критерію';

  @override
  String get criterionType => 'Тип критерію';

  @override
  String get addValue => 'Додати значення';

  @override
  String get selectionLimit => 'Ліміт вибору';

  @override
  String get minValue => 'Мінімальне значення';

  @override
  String get maxValue => 'Максимальне значення';

  @override
  String get stepValue => 'Значення кроку';

  @override
  String get value => 'Значення';

  @override
  String get updateCriterion => 'Оновити критерій';

  @override
  String get discard => 'Скасувати';

  @override
  String get nameRequired => 'Ім\'я обов\'язкове';

  @override
  String get atLeastOneValue => 'Потрібно принаймні одне значення';

  @override
  String get selectionLimitRequired => 'Ліміт вибору повинен бути більше 0';

  @override
  String get minMustBeLessThanMax => 'Мінімальне значення повинно бути менше максимального';

  @override
  String get stepMustBeGreaterThanZero => 'Значення кроку повинно бути більше 0';

  @override
  String get deleteCriterion => 'Видалити критерій';

  @override
  String get deleteCriterionWarning => 'Ви впевнені, що хочете видалити цей критерій? Цю дію неможливо скасувати.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Цей критерій використовується в $count завданнях. Асоціація буде видалена з цих завдань.';
  }

  @override
  String get history => 'Історія';

  @override
  String get charts => 'Графіки';

  @override
  String get noSessions => 'Поки що немає сесій';

  @override
  String get noSessionsDescription => 'Почніть відстежувати час, щоб побачити свої сесії тут';

  @override
  String get noSessionsForPeriod => 'Сесії не знайдено для вибраного періоду часу';

  @override
  String get noActiveTask => 'Немає активного завдання';

  @override
  String get startTaskFromList => 'Запустіть завдання зі списку, щоб почати відстеження';

  @override
  String get startTime => 'Час початку';

  @override
  String get endTime => 'Час закінчення';

  @override
  String get stop => 'Зупинити';

  @override
  String get endTimeAfterStart => 'Час закінчення повинен бути після часу початку';

  @override
  String get discardSession => 'Скасувати сесію';

  @override
  String get discardSessionMessage => 'Ви впевнені, що хочете скасувати цю сесію? Цю дію неможливо скасувати.';

  @override
  String get cancel => 'Скасувати';

  @override
  String get swipeToStop => 'Проведіть, щоб зупинити';

  @override
  String get filterByTask => 'Фільтрувати за завданням';

  @override
  String get allTasks => 'Всі завдання';

  @override
  String get filterByCriterion => 'Фільтрувати за критерієм';

  @override
  String get allCriteria => 'Всі критерії';

  @override
  String get timeSpentPerTask => 'Час, витрачений на завдання';

  @override
  String get taskFrequencyOverTime => 'Частота завдань у часі';

  @override
  String get averageCriterionRatings => 'Середні оцінки критеріїв';

  @override
  String get activityChart => 'Графік активності';

  @override
  String get day => 'День';

  @override
  String get week => 'Тиждень';

  @override
  String get month => 'Місяць';

  @override
  String get year => 'Рік';

  @override
  String get all => 'Всі';
}
