// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Добро пожаловать в YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Отслеживайте свое время, управляйте задачами и анализируйте свою продуктивность с легкостью.';

  @override
  String get continueButton => 'Продолжить';

  @override
  String get activeTask => 'Активная задача';

  @override
  String get listOfTasks => 'Список задач';

  @override
  String get statistics => 'Статистика';

  @override
  String get listOfCriteria => 'Список критериев';

  @override
  String get settings => 'Настройки';

  @override
  String get addTask => 'Добавить задачу';

  @override
  String get generalMotto => 'Общий девиз';

  @override
  String get noTasks => 'Пока нет задач';

  @override
  String get createFirstTask => 'Создайте свою первую задачу, чтобы начать';

  @override
  String get addCriterion => 'Добавить критерий';

  @override
  String get noCriteria => 'Пока нет критериев';

  @override
  String get createFirstCriterion => 'Создайте свой первый критерий, чтобы начать';

  @override
  String get discrete => 'Дискретный';

  @override
  String get continuous => 'Непрерывный';

  @override
  String get selections => 'выборы';

  @override
  String get values => 'значения';

  @override
  String get step => 'шаг';

  @override
  String get criterionName => 'Название критерия';

  @override
  String get criterionType => 'Тип критерия';

  @override
  String get addValue => 'Добавить значение';

  @override
  String get selectionLimit => 'Лимит выбора';

  @override
  String get minValue => 'Минимальное значение';

  @override
  String get maxValue => 'Максимальное значение';

  @override
  String get stepValue => 'Шаг значения';

  @override
  String get value => 'Значение';

  @override
  String get updateCriterion => 'Обновить критерий';

  @override
  String get discard => 'Отменить';

  @override
  String get nameRequired => 'Имя обязательно';

  @override
  String get atLeastOneValue => 'Требуется хотя бы одно значение';

  @override
  String get selectionLimitRequired => 'Лимит выбора должен быть больше 0';

  @override
  String get minMustBeLessThanMax => 'Минимальное значение должно быть меньше максимального';

  @override
  String get stepMustBeGreaterThanZero => 'Шаг значения должен быть больше 0';

  @override
  String get deleteCriterion => 'Удалить критерий';

  @override
  String get deleteCriterionWarning => 'Вы уверены, что хотите удалить этот критерий? Это действие нельзя отменить.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Этот критерий используется в $count задаче(ах). Ассоциация будет удалена из этих задач.';
  }

  @override
  String get history => 'История';

  @override
  String get charts => 'Графики';

  @override
  String get noSessions => 'Пока нет сессий';

  @override
  String get noSessionsDescription => 'Начните отслеживать время, чтобы увидеть свои сессии здесь';

  @override
  String get noSessionsForPeriod => 'Сессии не найдены для выбранного периода времени';

  @override
  String get noActiveTask => 'Нет активной задачи';

  @override
  String get startTaskFromList => 'Запустите задачу из списка, чтобы начать отслеживание';

  @override
  String get startTime => 'Время начала';

  @override
  String get endTime => 'Время окончания';

  @override
  String get stop => 'Остановить';

  @override
  String get endTimeAfterStart => 'Время окончания должно быть после времени начала';

  @override
  String get discardSession => 'Отменить сессию';

  @override
  String get discardSessionMessage => 'Вы уверены, что хотите отменить эту сессию? Это действие нельзя отменить.';

  @override
  String get cancel => 'Отмена';

  @override
  String get swipeToStop => 'Проведите, чтобы остановить';

  @override
  String get filterByTask => 'Фильтровать по задаче';

  @override
  String get allTasks => 'Все задачи';

  @override
  String get filterByCriterion => 'Фильтровать по критерию';

  @override
  String get allCriteria => 'Все критерии';

  @override
  String get timeSpentPerTask => 'Время, потраченное на задачу';

  @override
  String get taskFrequencyOverTime => 'Частота задач во времени';

  @override
  String get averageCriterionRatings => 'Средние оценки критериев';

  @override
  String get activityChart => 'График активности';

  @override
  String get day => 'День';

  @override
  String get week => 'Неделя';

  @override
  String get month => 'Месяц';

  @override
  String get year => 'Год';

  @override
  String get all => 'Все';
}
