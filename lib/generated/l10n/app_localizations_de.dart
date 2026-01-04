// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Willkommen bei YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Verfolgen Sie Ihre Zeit, verwalten Sie Aufgaben und analysieren Sie Ihre Produktivität mit Leichtigkeit.';

  @override
  String get continueButton => 'Fortfahren';

  @override
  String get activeTask => 'Aktive Aufgabe';

  @override
  String get listOfTasks => 'Aufgabenliste';

  @override
  String get statistics => 'Statistiken';

  @override
  String get listOfCriteria => 'Kriterienliste';

  @override
  String get settings => 'Einstellungen';

  @override
  String get addTask => 'Aufgabe hinzufügen';

  @override
  String get generalMotto => 'Allgemeines Motto';

  @override
  String get noTasks => 'Noch keine Aufgaben';

  @override
  String get createFirstTask => 'Erstellen Sie Ihre erste Aufgabe, um zu beginnen';

  @override
  String get addCriterion => 'Kriterium hinzufügen';

  @override
  String get noCriteria => 'Noch keine Kriterien';

  @override
  String get createFirstCriterion => 'Erstellen Sie Ihr erstes Kriterium, um zu beginnen';

  @override
  String get discrete => 'Diskret';

  @override
  String get continuous => 'Kontinuierlich';

  @override
  String get selections => 'Auswahlen';

  @override
  String get values => 'Werte';

  @override
  String get step => 'Schritt';

  @override
  String get criterionName => 'Kriterienname';

  @override
  String get criterionType => 'Kriterientyp';

  @override
  String get addValue => 'Wert hinzufügen';

  @override
  String get selectionLimit => 'Auswahlgrenze';

  @override
  String get minValue => 'Mindestwert';

  @override
  String get maxValue => 'Höchstwert';

  @override
  String get stepValue => 'Schrittweite';

  @override
  String get value => 'Wert';

  @override
  String get updateCriterion => 'Kriterium aktualisieren';

  @override
  String get discard => 'Verwerfen';

  @override
  String get nameRequired => 'Name ist erforderlich';

  @override
  String get atLeastOneValue => 'Mindestens ein Wert ist erforderlich';

  @override
  String get selectionLimitRequired => 'Die Auswahlgrenze muss größer als 0 sein';

  @override
  String get minMustBeLessThanMax => 'Der Mindestwert muss kleiner als der Höchstwert sein';

  @override
  String get stepMustBeGreaterThanZero => 'Die Schrittweite muss größer als 0 sein';

  @override
  String get deleteCriterion => 'Kriterium löschen';

  @override
  String get deleteCriterionWarning => 'Sind Sie sicher, dass Sie dieses Kriterium löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Dieses Kriterium wird in $count Aufgabe(n) verwendet. Die Zuordnung wird von diesen Aufgaben entfernt.';
  }

  @override
  String get history => 'Verlauf';

  @override
  String get charts => 'Diagramme';

  @override
  String get noSessions => 'Noch keine Sitzungen';

  @override
  String get noSessionsDescription => 'Beginnen Sie mit der Zeiterfassung, um Ihre Sitzungen hier zu sehen';

  @override
  String get noSessionsForPeriod => 'Keine Sitzungen für den ausgewählten Zeitraum gefunden';

  @override
  String get noActiveTask => 'Keine aktive Aufgabe';

  @override
  String get startTaskFromList => 'Starten Sie eine Aufgabe aus der Liste, um mit der Verfolgung zu beginnen';

  @override
  String get startTime => 'Startzeit';

  @override
  String get endTime => 'Endzeit';

  @override
  String get stop => 'Stoppen';

  @override
  String get endTimeAfterStart => 'Die Endzeit muss nach der Startzeit liegen';

  @override
  String get discardSession => 'Sitzung verwerfen';

  @override
  String get discardSessionMessage => 'Sind Sie sicher, dass Sie diese Sitzung verwerfen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get swipeToStop => 'Zum Stoppen wischen';

  @override
  String get filterByTask => 'Nach Aufgabe filtern';

  @override
  String get allTasks => 'Alle Aufgaben';

  @override
  String get filterByCriterion => 'Nach Kriterium filtern';

  @override
  String get allCriteria => 'Alle Kriterien';

  @override
  String get timeSpentPerTask => 'Zeit pro Aufgabe';

  @override
  String get taskFrequencyOverTime => 'Aufgabenhäufigkeit über Zeit';

  @override
  String get averageCriterionRatings => 'Durchschnittliche Kriterienbewertungen';

  @override
  String get activityChart => 'Aktivitätsdiagramm';

  @override
  String get day => 'Tag';

  @override
  String get week => 'Woche';

  @override
  String get month => 'Monat';

  @override
  String get year => 'Jahr';

  @override
  String get all => 'Alle';

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
