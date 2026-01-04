// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get noTasks => 'Немає завдань';

  @override
  String get createFirstTask => 'Створіть своє перше завдання, щоб почати';

  @override
  String get addCriterion => 'Додати критерій';

  @override
  String get noCriteria => 'Немає критеріїв';

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
  String get nameRequired => 'Назва обов\'язкова';

  @override
  String get atLeastOneValue => 'Потрібно принаймні одне значення';

  @override
  String get selectionLimitRequired => 'Ліміт вибору обов\'язковий';

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
  String get noSessions => 'Немає сесій';

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
  String get discardSessionMessage => 'Це скасує сесію. Цю дію неможливо скасувати.';

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

  @override
  String get listening => 'Слухаю...';

  @override
  String get taskName => 'Назва завдання';

  @override
  String get mottoOptional => 'Опціональний девіз';

  @override
  String get criteria => 'Критерії';

  @override
  String get noCriteriaAvailable => 'Немає доступних критеріїв. Створіть критерії спочатку.';

  @override
  String get updateTask => 'Оновити завдання';

  @override
  String get nameTooLong => 'Назва завдання занадто довга';

  @override
  String get mottoTooLong => 'Девіз занадто довгий';

  @override
  String get editTask => 'Редагувати завдання';

  @override
  String get enable => 'Увімкнути';

  @override
  String get disable => 'Вимкнути';

  @override
  String get enableTask => 'Увімкнути завдання';

  @override
  String get disableTask => 'Вимкнути завдання';

  @override
  String get enableTaskMessage => 'Це увімкне завдання. Воно буде переміщене вгору списку. Ви можете вимкнути його знову пізніше.';

  @override
  String get disableTaskMessage => 'Це вимкне завдання. Воно буде переміщене вниз списку. Ви можете увімкнути його знову пізніше.';

  @override
  String get taskEnabled => 'Завдання увімкнено';

  @override
  String get taskDisabled => 'Завдання вимкнено';

  @override
  String get deleteTask => 'Видалити завдання';

  @override
  String get deleteTaskMessage => 'Це видалить завдання і всі пов\'язані сесії. Цю дію неможливо скасувати.\n\nРозгляньте можливість вимкнення завдання, якщо ви не впевнені.';

  @override
  String get taskDeleted => 'Завдання видалено';

  @override
  String get anotherTaskActive => 'Інше завдання вже активне. Зупиніть його спочатку.';

  @override
  String errorActivatingTask(String error) {
    return 'Помилка при активації завдання: $error';
  }

  @override
  String get delete => 'Видалити';

  @override
  String error(String error) {
    return 'Помилка: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Помилка при зупинці сесії: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Помилка при скасуванні сесії: $error';
  }

  @override
  String get noActiveTaskMessage => 'Почніть завдання зі списку завдань, щоб відстежувати свій час.';

  @override
  String get dateFormat => 'd MMMM • HH:mm';

  @override
  String get unknownTask => 'Невідоме завдання';

  @override
  String get dateFormatInSessionHistory => 'd MMM, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Помилка при завантаженні завдань: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Помилка при завантаженні критеріїв: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Помилка при завантаженні сесій: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Помилка при завантаженні всіх сесій: $error';
  }

  @override
  String get unknown => 'Невідомо';

  @override
  String get exportData => 'Експортувати дані';

  @override
  String get exportAllAppDataToFile => 'Експортувати всі дані додатку до файлу';

  @override
  String get importData => 'Імпорт даних';

  @override
  String get importDataFromFile => 'Імпорт даних з файлу';

  @override
  String get chooseHowToExportData => 'Виберіть, як ви хочете експортувати дані:';

  @override
  String get saveToDevice => 'Зберегти на пристрої';

  @override
  String get share => 'Поділитися';

  @override
  String get saveExportFile => 'Зберегти експортовані дані';

  @override
  String dataSavedTo(String path) {
    return 'Дані збережено в: $path';
  }

  @override
  String get dataExportedSuccessfully => 'Дані успішно експортовано';

  @override
  String errorExportingData(String error) {
    return 'Помилка при експортуванні даних: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Дані успішно імпортовано';

  @override
  String errorImportingData(String error) {
    return 'Помилка при імпортуванні даних: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Всі існуючі дані будуть постійно видалені. Це дію неможливо скасувати.';

  @override
  String get import => 'Імпорт';

  @override
  String get language => 'Мова';

  @override
  String get selectLanguage => 'Виберіть мову';

  @override
  String get english => 'Англійський';

  @override
  String get spanish => 'Іспанський';

  @override
  String get chinese => 'Китайський';

  @override
  String get hindi => 'Хінді';

  @override
  String get arabic => 'Арабський';

  @override
  String get portuguese => 'Португальський';

  @override
  String get bengali => 'Бенгальський';

  @override
  String get japanese => 'Японський';

  @override
  String get punjabi => 'Панджабі';

  @override
  String get german => 'Німецький';

  @override
  String get javanese => 'Яванський';

  @override
  String get korean => 'Корейський';

  @override
  String get french => 'Французький';

  @override
  String get telugu => 'Телугу';

  @override
  String get marathi => 'Маратхі';

  @override
  String get turkish => 'Турецький';

  @override
  String get tamil => 'Тамільський';

  @override
  String get vietnamese => 'В\'єтнамський';

  @override
  String get urdu => 'Урду';

  @override
  String get ukrainian => 'Український';

  @override
  String get italian => 'Італійський';

  @override
  String get russian => 'Російський';

  @override
  String get darkMode => 'Темний режим';

  @override
  String get light => 'Світлий';

  @override
  String get dark => 'Темний';

  @override
  String get automatic => 'Автоматичний';

  @override
  String get followSystemSetting => 'Слідувати налаштуванням системи';

  @override
  String get dataManagement => 'Керування даними';

  @override
  String get version => 'Версія';

  @override
  String errorSavingTask(String error) {
    return 'Помилка при збереженні завдання: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Помилка при видаленні критерію: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Критерій \"$name\" видалено';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit виборів',
      one: '1 вибір',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values значень',
      one: '1 значення',
    );
    return 'Дискретний: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Безперервний: $minValue-$maxValue, крок $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Ви впевнені, що хочете видалити критерій \"$name\"? Цю дію неможливо скасувати.';
  }

  @override
  String valueX(int index) {
    return 'Значення $index';
  }

  @override
  String get minValueRequired => 'Мінімальне значення обов\'язкове';

  @override
  String get maxValueRequired => 'Максимальне значення обов\'язкове';

  @override
  String get stepValueRequired => 'Значення кроку обов\'язкове';

  @override
  String get minValueMustBeANumber => 'Мінімальне значення повинно бути числом';

  @override
  String get maxValueMustBeANumber => 'Максимальне значення повинно бути числом';

  @override
  String get stepValueMustBeAPositiveNumber => 'Значення кроку повинно бути позитивним числом';

  @override
  String get minValueMustBeLessThanMaxValue => 'Мінімальне значення повинно бути менше максимального';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Максимальне значення повинно бути більше мінімального';

  @override
  String get stepValueMustBeGreaterThanZero => 'Значення кроку повинен бути більше 0';

  @override
  String get valueCannotBeEmpty => 'Значення не може бути порожнім';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Ліміт вибору повинен бути більше 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Ліміт вибору повинен бути позитивним числом';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Потрібно принаймні одне значення для дискретних критеріїв';

  @override
  String get selectIconType => 'Виберіть тип іконки';

  @override
  String get icon => 'Іконка';

  @override
  String get emoji => 'Емодзі';

  @override
  String get enterCriterionName => 'Введіть назву критерію';

  @override
  String get type => 'Тип';

  @override
  String get discreteConfiguration => 'Дискретні критерії';

  @override
  String get howManyValuesCanBeSelected => 'Скільки значень можна вибрати';

  @override
  String get continuousConfiguration => 'Безперервні критерії';

  @override
  String get minimumAllowedValue => 'Мінімальне дозволене значення';

  @override
  String get maximumAllowedValue => 'Максимальне дозволене значення';

  @override
  String get incrementDecrementStep => 'Збільшення/зменшення кроку';

  @override
  String errorSavingCriterion(String error) {
    return 'Помилка при збереженні критерію: $error';
  }

  @override
  String get editCriterion => 'Редагувати критерій';

  @override
  String get selectIcon => 'Виберіть іконку';

  @override
  String get selectEmoji => 'Виберіть емодзі';

  @override
  String get icons => 'Ікони';

  @override
  String get emojis => 'Емодзі';

  @override
  String get selectColor => 'Виберіть колір';

  @override
  String get noCriteriaToRate => 'Немає критеріїв для оцінки';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Це завдання не має призначених критеріїв';

  @override
  String errorSavingRatings(String error) {
    return 'Помилка при збереженні оцінок: $error';
  }

  @override
  String get skip => 'Пропустити';

  @override
  String get save => 'Зберегти';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Діапазон: $minValue-$maxValue (крок: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Оцінити завдання: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Виберіть до $selectionLimit значень';
  }

  @override
  String get swipeToStart => 'Проведіть, щоб почати';
}
