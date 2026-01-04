// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'YuDi Time Tracker\'a Hoş Geldiniz';

  @override
  String get welcomeDescription => 'Zamanınızı takip edin, görevleri yönetin ve verimliliğinizi kolayca analiz edin.';

  @override
  String get continueButton => 'Devam Et';

  @override
  String get activeTask => 'Aktif Görev';

  @override
  String get listOfTasks => 'Görev Listesi';

  @override
  String get statistics => 'İstatistikler';

  @override
  String get listOfCriteria => 'Kriter Listesi';

  @override
  String get settings => 'Ayarlar';

  @override
  String get addTask => 'Görev Ekle';

  @override
  String get generalMotto => 'Genel Slogan';

  @override
  String get noTasks => 'Henüz görev yok';

  @override
  String get createFirstTask => 'Başlamak için ilk görevinizi oluşturun';

  @override
  String get addCriterion => 'Kriter Ekle';

  @override
  String get noCriteria => 'Henüz kriter yok';

  @override
  String get createFirstCriterion => 'Başlamak için ilk kriterinizi oluşturun';

  @override
  String get discrete => 'Ayrık';

  @override
  String get continuous => 'Sürekli';

  @override
  String get selections => 'seçimler';

  @override
  String get values => 'değerler';

  @override
  String get step => 'adım';

  @override
  String get criterionName => 'Kriter Adı';

  @override
  String get criterionType => 'Kriter Türü';

  @override
  String get addValue => 'Değer Ekle';

  @override
  String get selectionLimit => 'Seçim Limiti';

  @override
  String get minValue => 'Min Değer';

  @override
  String get maxValue => 'Max Değer';

  @override
  String get stepValue => 'Adım Değeri';

  @override
  String get value => 'Değer';

  @override
  String get updateCriterion => 'Kriteri Güncelle';

  @override
  String get discard => 'İptal Et';

  @override
  String get nameRequired => 'Ad gereklidir';

  @override
  String get atLeastOneValue => 'En az bir değer gereklidir';

  @override
  String get selectionLimitRequired => 'Seçim limiti 0\'dan büyük olmalıdır';

  @override
  String get minMustBeLessThanMax => 'Min değer max değerden küçük olmalıdır';

  @override
  String get stepMustBeGreaterThanZero => 'Adım değeri 0\'dan büyük olmalıdır';

  @override
  String get deleteCriterion => 'Kriteri Sil';

  @override
  String get deleteCriterionWarning => 'Bu kriteri silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Bu kriter $count görevde kullanılıyor. İlişki bu görevlerden kaldırılacak.';
  }

  @override
  String get history => 'Geçmiş';

  @override
  String get charts => 'Grafikler';

  @override
  String get noSessions => 'Henüz oturum yok';

  @override
  String get noSessionsDescription => 'Oturumlarınızı burada görmek için zaman takibine başlayın';

  @override
  String get noSessionsForPeriod => 'Seçilen zaman dilimi için oturum bulunamadı';

  @override
  String get noActiveTask => 'Aktif görev yok';

  @override
  String get startTaskFromList => 'Takibe başlamak için listeden bir görev başlatın';

  @override
  String get startTime => 'Başlangıç Zamanı';

  @override
  String get endTime => 'Bitiş Zamanı';

  @override
  String get stop => 'Durdur';

  @override
  String get endTimeAfterStart => 'Bitiş zamanı başlangıç zamanından sonra olmalıdır';

  @override
  String get discardSession => 'Oturumu İptal Et';

  @override
  String get discardSessionMessage => 'Bu oturumu iptal etmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String get cancel => 'İptal';

  @override
  String get swipeToStop => 'Durdurmak için kaydırın';

  @override
  String get filterByTask => 'Göreve Göre Filtrele';

  @override
  String get allTasks => 'Tüm Görevler';

  @override
  String get filterByCriterion => 'Kriterlere Göre Filtrele';

  @override
  String get allCriteria => 'Tüm Kriterler';

  @override
  String get timeSpentPerTask => 'Görev Başına Harcanan Zaman';

  @override
  String get taskFrequencyOverTime => 'Zaman İçinde Görev Sıklığı';

  @override
  String get averageCriterionRatings => 'Ortalama Kriter Değerlendirmeleri';

  @override
  String get activityChart => 'Aktivite Grafiği';

  @override
  String get day => 'Gün';

  @override
  String get week => 'Hafta';

  @override
  String get month => 'Ay';

  @override
  String get year => 'Yıl';

  @override
  String get all => 'Tümü';

  @override
  String get listening => 'Listening...';

  @override
  String get taskName => 'Task Name';

  @override
  String get mottoOptional => 'Motto (optional)';

  @override
  String get criteria => 'Criteria';

  @override
  String get noCriteriaAvailable => 'No criteria available. Create criteria first.';

  @override
  String get updateTask => 'Update Task';

  @override
  String get nameTooLong => 'Task name must be 32 characters or less';

  @override
  String get mottoTooLong => 'Motto must be 128 characters or less';

  @override
  String get editTask => 'Edit Task';

  @override
  String get enable => 'Enable';

  @override
  String get disable => 'Disable';

  @override
  String get enableTask => 'Enable Task';

  @override
  String get disableTask => 'Disable Task';

  @override
  String get enableTaskMessage => 'This will enable the task and make it available again.';

  @override
  String get disableTaskMessage => 'This will disable the task. It will be moved to the bottom of the list. You can enable it again later.';

  @override
  String get taskEnabled => 'Task enabled';

  @override
  String get taskDisabled => 'Task disabled';

  @override
  String get deleteTask => 'Delete Task';

  @override
  String get deleteTaskMessage => 'This will permanently delete the task and all associated sessions. This action cannot be undone.\n\nConsider disabling the task instead if you\'re not sure.';

  @override
  String get taskDeleted => 'Task deleted';

  @override
  String get anotherTaskActive => 'Another task is already active. Stop it first.';

  @override
  String errorActivatingTask(String error) {
    return 'Error activating task: $error';
  }

  @override
  String get delete => 'Delete';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Error stopping session: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Error discarding session: $error';
  }

  @override
  String get noActiveTaskMessage => 'Start a task from the List of Tasks to track your time.';

  @override
  String get dateFormat => 'MMMM d • HH:mm';

  @override
  String get unknownTask => 'Unknown Task';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Error loading tasks: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Error loading criteria: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Error loading sessions: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Error loading all sessions: $error';
  }

  @override
  String get unknown => 'Unknown';

  @override
  String get exportData => 'Export Data';

  @override
  String get exportAllAppDataToFile => 'Export all app data to a file';

  @override
  String get importData => 'Import Data';

  @override
  String get importDataFromFile => 'Import data from a file';

  @override
  String get chooseHowToExportData => 'Choose how you want to export the data:';

  @override
  String get saveToDevice => 'Save to Device';

  @override
  String get share => 'Share';

  @override
  String get saveExportFile => 'Save Export File';

  @override
  String dataSavedTo(String path) {
    return 'Data saved to: $path';
  }

  @override
  String get dataExportedSuccessfully => 'Data exported successfully';

  @override
  String errorExportingData(String error) {
    return 'Error exporting data: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Data imported successfully';

  @override
  String errorImportingData(String error) {
    return 'Error importing data: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'All existing data will be permanently deleted.';

  @override
  String get import => 'Import';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get chinese => 'Chinese';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Arabic';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Japanese';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'German';

  @override
  String get javanese => 'Javanese';

  @override
  String get korean => 'Korean';

  @override
  String get french => 'French';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Turkish';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamese';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ukrainian';

  @override
  String get italian => 'Italian';

  @override
  String get russian => 'Russian';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get automatic => 'Automatic';

  @override
  String get followSystemSetting => 'Follow system setting';

  @override
  String get dataManagement => 'Data Management';

  @override
  String get version => 'Version';

  @override
  String errorSavingTask(String error) {
    return 'Error saving task: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Error deleting criterion: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Criterion \"$name\" deleted';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit selections',
      one: '1 selection',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values values',
      one: '1 value',
    );
    return 'Discrete: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Continuous: $minValue-$maxValue, step $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Are you sure you want to delete this criterion \"$name\"? This action cannot be undone.';
  }

  @override
  String valueX(int index) {
    return 'Value $index';
  }

  @override
  String get minValueRequired => 'Min value is required';

  @override
  String get maxValueRequired => 'Max value is required';

  @override
  String get stepValueRequired => 'Step value is required';

  @override
  String get minValueMustBeANumber => 'Min value must be a number';

  @override
  String get maxValueMustBeANumber => 'Max value must be a number';

  @override
  String get stepValueMustBeAPositiveNumber => 'Step value must be a positive number';

  @override
  String get minValueMustBeLessThanMaxValue => 'Min value must be less than max value';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Max value must be greater than min value';

  @override
  String get stepValueMustBeGreaterThanZero => 'Step value must be greater than 0';

  @override
  String get valueCannotBeEmpty => 'Value cannot be empty';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Selection limit must be greater than 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Selection limit must be a positive number';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'At least one value is required for discrete criteria';

  @override
  String get selectIconType => 'Select Icon Type';

  @override
  String get icon => 'Icon';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Enter criterion name';

  @override
  String get type => 'Type';

  @override
  String get discreteConfiguration => 'Discrete Configuration';

  @override
  String get howManyValuesCanBeSelected => 'How many values can be selected';

  @override
  String get continuousConfiguration => 'Continuous Configuration';

  @override
  String get minimumAllowedValue => 'Minimum allowed value';

  @override
  String get maximumAllowedValue => 'Maximum allowed value';

  @override
  String get incrementDecrementStep => 'Increment/decrement step';

  @override
  String errorSavingCriterion(String error) {
    return 'Error saving criterion: $error';
  }

  @override
  String get editCriterion => 'Edit Criterion';

  @override
  String get selectIcon => 'Select Icon';

  @override
  String get selectEmoji => 'Select Emoji';

  @override
  String get icons => 'Icons';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Select Color';

  @override
  String get noCriteriaToRate => 'No criteria to rate';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'This task has no criteria assigned.';

  @override
  String errorSavingRatings(String error) {
    return 'Error saving ratings: $error';
  }

  @override
  String get skip => 'Skip';

  @override
  String get save => 'Save';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Range: $minValue - $maxValue (step: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Rate Task: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Select up to $selectionLimit value(s)';
  }

  @override
  String get swipeToStart => 'Swipe to start';
}
