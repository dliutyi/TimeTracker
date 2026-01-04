// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Bienvenue dans YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Suivez votre temps, gérez les tâches et analysez votre productivité en toute simplicité.';

  @override
  String get continueButton => 'Continuer';

  @override
  String get activeTask => 'Tâche active';

  @override
  String get listOfTasks => 'Liste des tâches';

  @override
  String get statistics => 'Statistiques';

  @override
  String get listOfCriteria => 'Liste des critères';

  @override
  String get settings => 'Paramètres';

  @override
  String get addTask => 'Ajouter une tâche';

  @override
  String get generalMotto => 'Devise générale';

  @override
  String get noTasks => 'Aucune tâche pour le moment';

  @override
  String get createFirstTask => 'Créez votre première tâche pour commencer';

  @override
  String get addCriterion => 'Ajouter un critère';

  @override
  String get noCriteria => 'Aucun critère pour le moment';

  @override
  String get createFirstCriterion => 'Créez votre premier critère pour commencer';

  @override
  String get discrete => 'Discret';

  @override
  String get continuous => 'Continu';

  @override
  String get selections => 'sélections';

  @override
  String get values => 'valeurs';

  @override
  String get step => 'pas';

  @override
  String get criterionName => 'Nom du critère';

  @override
  String get criterionType => 'Type de critère';

  @override
  String get addValue => 'Ajouter une valeur';

  @override
  String get selectionLimit => 'Limite de sélection';

  @override
  String get minValue => 'Valeur minimale';

  @override
  String get maxValue => 'Valeur maximale';

  @override
  String get stepValue => 'Valeur du pas';

  @override
  String get value => 'Valeur';

  @override
  String get updateCriterion => 'Mettre à jour le critère';

  @override
  String get discard => 'Abandonner';

  @override
  String get nameRequired => 'Le nom est requis';

  @override
  String get atLeastOneValue => 'Au moins une valeur est requise';

  @override
  String get selectionLimitRequired => 'La limite de sélection doit être supérieure à 0';

  @override
  String get minMustBeLessThanMax => 'La valeur minimale doit être inférieure à la valeur maximale';

  @override
  String get stepMustBeGreaterThanZero => 'La valeur du pas doit être supérieure à 0';

  @override
  String get deleteCriterion => 'Supprimer le critère';

  @override
  String get deleteCriterionWarning => 'Êtes-vous sûr de vouloir supprimer ce critère ? Cette action ne peut pas être annulée.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Ce critère est utilisé dans $count tâche(s). L\'association sera supprimée de ces tâches.';
  }

  @override
  String get history => 'Historique';

  @override
  String get charts => 'Graphiques';

  @override
  String get noSessions => 'Aucune session pour le moment';

  @override
  String get noSessionsDescription => 'Commencez à suivre le temps pour voir vos sessions ici';

  @override
  String get noSessionsForPeriod => 'Aucune session trouvée pour la période sélectionnée';

  @override
  String get noActiveTask => 'Aucune tâche active';

  @override
  String get startTaskFromList => 'Démarrez une tâche de la liste pour commencer le suivi';

  @override
  String get startTime => 'Heure de début';

  @override
  String get endTime => 'Heure de fin';

  @override
  String get stop => 'Arrêter';

  @override
  String get endTimeAfterStart => 'L\'heure de fin doit être postérieure à l\'heure de début';

  @override
  String get discardSession => 'Abandonner la session';

  @override
  String get discardSessionMessage => 'Êtes-vous sûr de vouloir abandonner cette session ? Cette action ne peut pas être annulée.';

  @override
  String get cancel => 'Annuler';

  @override
  String get swipeToStop => 'Glisser pour arrêter';

  @override
  String get filterByTask => 'Filtrer par Tâche';

  @override
  String get allTasks => 'Toutes les Tâches';

  @override
  String get filterByCriterion => 'Filtrer par Critère';

  @override
  String get allCriteria => 'Tous les Critères';

  @override
  String get timeSpentPerTask => 'Temps Passé par Tâche';

  @override
  String get taskFrequencyOverTime => 'Fréquence des Tâches dans le Temps';

  @override
  String get averageCriterionRatings => 'Notes Moyennes des Critères';

  @override
  String get activityChart => 'Graphique d\'Activité';

  @override
  String get day => 'Jour';

  @override
  String get week => 'Semaine';

  @override
  String get month => 'Mois';

  @override
  String get year => 'Année';

  @override
  String get all => 'Tout';

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
