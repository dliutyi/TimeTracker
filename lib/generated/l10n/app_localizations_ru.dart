// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get values => 'Значения';

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
  String deleteCriterionWarning(Object name) {
    return 'Вы уверены, что хотите удалить этот критерий? Это действие нельзя отменить.';
  }

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

  @override
  String get listening => 'Слушаю...';

  @override
  String get taskName => 'Название задачи';

  @override
  String get mottoOptional => 'Девиз (опционально)';

  @override
  String get criteria => 'Критерии';

  @override
  String get noCriteriaAvailable => 'Нет доступных критериев. Создайте критерии сначала.';

  @override
  String get updateTask => 'Обновить задачу';

  @override
  String get nameTooLong => 'Название задачи должно быть 32 символов или меньше';

  @override
  String get mottoTooLong => 'Девиз должен быть 128 символов или меньше';

  @override
  String get editTask => 'Редактировать задачу';

  @override
  String get enable => 'Включить';

  @override
  String get disable => 'Выключить';

  @override
  String get enableTask => 'Включить задачу';

  @override
  String get disableTask => 'Выключить задачу';

  @override
  String get enableTaskMessage => 'Это включит задачу и сделает ее доступной снова.';

  @override
  String get disableTaskMessage => 'Это выключит задачу. Она будет перемещена вниз списка. Вы можете включить ее снова позже.';

  @override
  String taskEnabled(Object name) {
    return 'Задача включена';
  }

  @override
  String taskDisabled(Object name) {
    return 'Задача выключена';
  }

  @override
  String get deleteTask => 'Удалить задачу';

  @override
  String get deleteTaskMessage => 'Это удалит задачу и все связанные сессии. Это действие нельзя отменить.\n\nРассмотрите возможность выключения задачи, если вы не уверены.';

  @override
  String taskDeleted(Object name) {
    return 'Задача удалена';
  }

  @override
  String get anotherTaskActive => 'Другая задача уже активна. Остановите ее сначала.';

  @override
  String errorActivatingTask(String error) {
    return 'Ошибка при активации задачи: $error';
  }

  @override
  String get delete => 'Удалить';

  @override
  String error(String error) {
    return 'Ошибка: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Ошибка при остановке сессии: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Ошибка при отмене сессии: $error';
  }

  @override
  String get noActiveTaskMessage => 'Начните задачу из списка задач, чтобы отслеживать свое время.';

  @override
  String get dateFormat => 'd MMMM • HH:mm';

  @override
  String get unknownTask => 'Неизвестная задача';

  @override
  String get dateFormatInSessionHistory => 'd MMM, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Ошибка при загрузке задач: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Ошибка при загрузке критериев: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Ошибка при загрузке сессий: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Ошибка при загрузке всех сессий: $error';
  }

  @override
  String get unknown => 'Неизвестно';

  @override
  String get exportData => 'Экспорт данных';

  @override
  String get exportAllAppDataToFile => 'Экспортировать все данные приложения в файл';

  @override
  String get importData => 'Импорт данных';

  @override
  String get importDataFromFile => 'Импортировать данные из файла';

  @override
  String get chooseHowToExportData => 'Выберите, как вы хотите экспортировать данные:';

  @override
  String get saveToDevice => 'Сохранить на устройстве';

  @override
  String get share => 'Поделиться';

  @override
  String get saveExportFile => 'Сохранить файл экспорта';

  @override
  String dataSavedTo(String path) {
    return 'Данные сохранены в: $path';
  }

  @override
  String get dataExportedSuccessfully => 'Данные экспортированы успешно';

  @override
  String errorExportingData(String error) {
    return 'Ошибка при экспортировании данных: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Данные импортированы успешно';

  @override
  String errorImportingData(String error) {
    return 'Ошибка при импортировании данных: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Все существующие данные будут удалены.';

  @override
  String get import => 'Импорт';

  @override
  String get language => 'Язык';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get english => 'Английский';

  @override
  String get spanish => 'Испанский';

  @override
  String get chinese => 'Китайский';

  @override
  String get hindi => 'Хинди';

  @override
  String get arabic => 'Арабский';

  @override
  String get portuguese => 'Португальский';

  @override
  String get bengali => 'Бенгальский';

  @override
  String get japanese => 'Японский';

  @override
  String get punjabi => 'Панджаби';

  @override
  String get german => 'Немецкий';

  @override
  String get javanese => 'Яванский';

  @override
  String get korean => 'Корейский';

  @override
  String get french => 'Французский';

  @override
  String get telugu => 'Телугу';

  @override
  String get marathi => 'Маратхи';

  @override
  String get turkish => 'Турецкий';

  @override
  String get tamil => 'Тамильский';

  @override
  String get vietnamese => 'Вьетнамский';

  @override
  String get urdu => 'Урду';

  @override
  String get ukrainian => 'Украинский';

  @override
  String get italian => 'Итальянский';

  @override
  String get russian => 'Русский';

  @override
  String get darkMode => 'Темный режим';

  @override
  String get light => 'Светлый';

  @override
  String get dark => 'Темный';

  @override
  String get automatic => 'Автоматический';

  @override
  String get followSystemSetting => 'Следующий системный параметр';

  @override
  String get dataManagement => 'Управление данными';

  @override
  String get version => 'Версия';

  @override
  String errorSavingTask(String error) {
    return 'Ошибка при сохранении задачи: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Ошибка при удалении критерия: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Критерий \"$name\" удален';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit выборов',
      few: '$selectionLimit выбора',
      one: '1 выбор',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values значений',
      few: '$values значения',
      one: '1 значение',
    );
    return 'Дискретный: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Непрерывный: $minValue-$maxValue, шаг $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Вы уверены, что хотите удалить критерий \"$name\"? Это действие нельзя отменить.';
  }

  @override
  String valueX(int index) {
    return 'Значение $index';
  }

  @override
  String get minValueRequired => 'Минимальное значение обязательно';

  @override
  String get maxValueRequired => 'Максимальное значение обязательно';

  @override
  String get stepValueRequired => 'Шаг значения обязательно';

  @override
  String get minValueMustBeANumber => 'Минимальное значение должно быть числом';

  @override
  String get maxValueMustBeANumber => 'Максимальное значение должно быть числом';

  @override
  String get stepValueMustBeAPositiveNumber => 'Шаг должен быть положительным числом';

  @override
  String get minValueMustBeLessThanMaxValue => 'Минимальное значение должно быть меньше максимального значения';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Максимальное значение должно быть больше минимального значения';

  @override
  String get stepValueMustBeGreaterThanZero => 'Шаг должен быть больше 0';

  @override
  String get valueCannotBeEmpty => 'Значение не может быть пустым';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Лимит выбора должен быть больше 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Лимит выбора должен быть положительным числом';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Требуется хотя бы одно значение для дискретных критериев';

  @override
  String get selectIconType => 'Выберите тип иконки';

  @override
  String get icon => 'Иконка';

  @override
  String get emoji => 'Эмодзи';

  @override
  String get enterCriterionName => 'Введите название критерия';

  @override
  String get type => 'Тип';

  @override
  String get discreteConfiguration => 'Дискретные критерии';

  @override
  String get howManyValuesCanBeSelected => 'Сколько значений можно выбрать';

  @override
  String get continuousConfiguration => 'Непрерывные критерии';

  @override
  String get minimumAllowedValue => 'Минимальное допустимое значение';

  @override
  String get maximumAllowedValue => 'Максимальное допустимое значение';

  @override
  String get incrementDecrementStep => 'Увеличение/уменьшение шага';

  @override
  String errorSavingCriterion(String error) {
    return 'Ошибка при сохранении критерия: $error';
  }

  @override
  String get editCriterion => 'Редактировать критерий';

  @override
  String get selectIcon => 'Выберите иконку';

  @override
  String get selectEmoji => 'Выберите эмодзи';

  @override
  String get icons => 'Иконки';

  @override
  String get emojis => 'Эмодзи';

  @override
  String get selectColor => 'Выберите цвет';

  @override
  String get noCriteriaToRate => 'Нет критериев для оценки';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Это задание не имеет назначенных критериев.';

  @override
  String errorSavingRatings(String error) {
    return 'Ошибка при сохранении оценок: $error';
  }

  @override
  String get skip => 'Пропустить';

  @override
  String get save => 'Сохранить';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Диапазон: $minValue - $maxValue (шаг: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Оценить задачу: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Выберите до $selectionLimit значения';
  }

  @override
  String get swipeToStart => 'Свайпните, чтобы начать';
}
