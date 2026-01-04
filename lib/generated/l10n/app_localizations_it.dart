// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Benvenuto in YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Traccia il tuo tempo, gestisci le attività e analizza la tua produttività con facilità.';

  @override
  String get continueButton => 'Continua';

  @override
  String get activeTask => 'Attività attiva';

  @override
  String get listOfTasks => 'Elenco attività';

  @override
  String get statistics => 'Statistiche';

  @override
  String get listOfCriteria => 'Elenco criteri';

  @override
  String get settings => 'Impostazioni';

  @override
  String get addTask => 'Aggiungi attività';

  @override
  String get generalMotto => 'Motto generale';

  @override
  String get noTasks => 'Nessuna attività ancora';

  @override
  String get createFirstTask => 'Crea la tua prima attività per iniziare';

  @override
  String get addCriterion => 'Aggiungi criterio';

  @override
  String get noCriteria => 'Nessun criterio ancora';

  @override
  String get createFirstCriterion => 'Crea il tuo primo criterio per iniziare';

  @override
  String get discrete => 'Discreto';

  @override
  String get continuous => 'Continuo';

  @override
  String get selections => 'selezioni';

  @override
  String get values => 'valori';

  @override
  String get step => 'passo';

  @override
  String get criterionName => 'Nome del criterio';

  @override
  String get criterionType => 'Tipo di criterio';

  @override
  String get addValue => 'Aggiungi valore';

  @override
  String get selectionLimit => 'Limite di selezione';

  @override
  String get minValue => 'Valore minimo';

  @override
  String get maxValue => 'Valore massimo';

  @override
  String get stepValue => 'Valore del passo';

  @override
  String get value => 'Valore';

  @override
  String get updateCriterion => 'Aggiorna criterio';

  @override
  String get discard => 'Scarta';

  @override
  String get nameRequired => 'Il nome è obbligatorio';

  @override
  String get atLeastOneValue => 'È richiesto almeno un valore';

  @override
  String get selectionLimitRequired => 'Il limite di selezione deve essere maggiore di 0';

  @override
  String get minMustBeLessThanMax => 'Il valore minimo deve essere inferiore al valore massimo';

  @override
  String get stepMustBeGreaterThanZero => 'Il valore del passo deve essere maggiore di 0';

  @override
  String get deleteCriterion => 'Elimina criterio';

  @override
  String get deleteCriterionWarning => 'Sei sicuro di voler eliminare questo criterio? Questa azione non può essere annullata.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Questo criterio è utilizzato in $count attività. L\'associazione verrà rimossa da quelle attività.';
  }

  @override
  String get history => 'Cronologia';

  @override
  String get charts => 'Grafici';

  @override
  String get noSessions => 'Nessuna sessione ancora';

  @override
  String get noSessionsDescription => 'Inizia a tracciare il tempo per vedere le tue sessioni qui';

  @override
  String get noSessionsForPeriod => 'Nessuna sessione trovata per il periodo di tempo selezionato';

  @override
  String get noActiveTask => 'Nessuna attività attiva';

  @override
  String get startTaskFromList => 'Avvia un\'attività dall\'elenco per iniziare il tracciamento';

  @override
  String get startTime => 'Ora di inizio';

  @override
  String get endTime => 'Ora di fine';

  @override
  String get stop => 'Ferma';

  @override
  String get endTimeAfterStart => 'L\'ora di fine deve essere successiva all\'ora di inizio';

  @override
  String get discardSession => 'Scarta sessione';

  @override
  String get discardSessionMessage => 'Sei sicuro di voler scartare questa sessione? Questa azione non può essere annullata.';

  @override
  String get cancel => 'Annulla';

  @override
  String get swipeToStop => 'Scorri per fermare';

  @override
  String get filterByTask => 'Filtra per Attività';

  @override
  String get allTasks => 'Tutte le Attività';

  @override
  String get filterByCriterion => 'Filtra per Criterio';

  @override
  String get allCriteria => 'Tutti i Criteri';

  @override
  String get timeSpentPerTask => 'Tempo Trascorso per Attività';

  @override
  String get taskFrequencyOverTime => 'Frequenza Attività nel Tempo';

  @override
  String get averageCriterionRatings => 'Valutazioni Medie dei Criteri';

  @override
  String get activityChart => 'Grafico Attività';

  @override
  String get day => 'Giorno';

  @override
  String get week => 'Settimana';

  @override
  String get month => 'Mese';

  @override
  String get year => 'Anno';

  @override
  String get all => 'Tutto';

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
