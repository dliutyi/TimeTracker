// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'Willkommen bei YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Willkommen bei YuDi Time Tracker';

  @override
  String get continueButton => 'Fortfahren';

  @override
  String get activeTask => 'Aktive Aufgabe';

  @override
  String get listOfTasks => 'Liste der Aufgaben';

  @override
  String get statistics => 'Statistiken';

  @override
  String get listOfCriteria => 'Liste der Kriterien';

  @override
  String get settings => 'Einstellungen';

  @override
  String get addTask => 'Aufgabe hinzufügen';

  @override
  String get generalMotto => 'Allgemeines Motto';

  @override
  String get noTasks => 'Keine Aufgaben';

  @override
  String get createFirstTask => 'Erstellen Sie Ihre erste Aufgabe, um zu beginnen';

  @override
  String get addCriterion => 'Kriterium hinzufügen';

  @override
  String get noCriteria => 'Keine Kriterien';

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
  String get maxValue => 'Maximaler Wert';

  @override
  String get stepValue => 'Schrittwert';

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
  String get selectionLimitRequired => 'Auswahlgrenze ist erforderlich';

  @override
  String get minMustBeLessThanMax => 'Mindestwert muss kleiner als der Höchstwert sein';

  @override
  String get stepMustBeGreaterThanZero => 'Schritt muss größer als 0 sein';

  @override
  String get deleteCriterion => 'Kriterium löschen';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Sind Sie sicher, dass Sie dieses Kriterium löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'Dieses Kriterium wird in $count Aufgabe(n) verwendet. Die Zuordnung wird von diesen Aufgaben entfernt.';
  }

  @override
  String get history => 'Verlauf';

  @override
  String get charts => 'Diagramme';

  @override
  String get noSessions => 'Keine Sitzungen';

  @override
  String get noSessionsDescription => 'Keine Sitzungen';

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
  String get listening => 'Hören';

  @override
  String get taskName => 'Aufgabenname';

  @override
  String get mottoOptional => 'Motto (optional)';

  @override
  String get criteria => 'Kriterien';

  @override
  String get noCriteriaAvailable => 'Keine Kriterien verfügbar';

  @override
  String get updateTask => 'Aufgabe aktualisieren';

  @override
  String get nameTooLong => 'Name ist zu lang';

  @override
  String get mottoTooLong => 'Motto ist zu lang';

  @override
  String get editTask => 'Aufgabe bearbeiten';

  @override
  String get enable => 'Aktivieren';

  @override
  String get disable => 'Deaktivieren';

  @override
  String get enableTask => 'Aufgabe aktivieren';

  @override
  String get disableTask => 'Aufgabe deaktivieren';

  @override
  String get enableTaskMessage => 'Dies wird die Aufgabe aktivieren und sie wieder verfügbar machen.';

  @override
  String get disableTaskMessage => 'Dies wird die Aufgabe deaktivieren. Sie wird in die Liste gelegt. Sie können sie später wieder aktivieren.';

  @override
  String taskEnabled(Object name) {
    return 'Aufgabe aktiviert';
  }

  @override
  String taskDisabled(Object name) {
    return 'Aufgabe deaktiviert';
  }

  @override
  String get deleteTask => 'Aufgabe löschen';

  @override
  String get deleteTaskMessage => 'Dies wird die Aufgabe und alle zugehörigen Sitzungen dauerhaft löschen. Diese Aktion kann nicht rückgängig gemacht werden.\n\nÜberlegen Sie, die Aufgabe stattdessen zu deaktivieren, wenn Sie nicht sicher sind.';

  @override
  String taskDeleted(Object name) {
    return 'Aufgabe gelöscht';
  }

  @override
  String get anotherTaskActive => 'Andere Aufgabe ist aktiv. Stoppen Sie sie zuerst.';

  @override
  String errorActivatingTask(String error) {
    return 'Fehler beim Aktivieren der Aufgabe: $error';
  }

  @override
  String get delete => 'Löschen';

  @override
  String error(String error) {
    return 'Fehler: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Fehler beim Stoppen der Sitzung: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Fehler beim Verwerfen der Sitzung: $error';
  }

  @override
  String get noActiveTaskMessage => 'Keine aktive Aufgabe';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Unbekannte Aufgabe';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Fehler beim Laden der Aufgaben: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Fehler beim Laden der Kriterien: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Fehler beim Laden der Sitzungen: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Fehler beim Laden aller Sitzungen: $error';
  }

  @override
  String get unknown => 'Unbekannt';

  @override
  String get exportData => 'Daten exportieren';

  @override
  String get exportAllAppDataToFile => 'Alle Anwendungsdaten in Datei exportieren';

  @override
  String get importData => 'Daten importieren';

  @override
  String get importDataFromFile => 'Daten aus Datei importieren';

  @override
  String get chooseHowToExportData => 'Wählen Sie, wie Sie die Daten exportieren möchten';

  @override
  String get saveToDevice => 'Auf Gerät speichern';

  @override
  String get share => 'Teilen';

  @override
  String get saveExportFile => 'Exportdatei speichern';

  @override
  String dataSavedTo(String path) {
    return 'Daten erfolgreich gespeichert';
  }

  @override
  String get dataExportedSuccessfully => 'Daten erfolgreich exportiert';

  @override
  String errorExportingData(String error) {
    return 'Fehler beim Exportieren der Daten: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Daten erfolgreich importiert';

  @override
  String errorImportingData(String error) {
    return 'Fehler beim Importieren der Daten: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Alle bestehenden Daten werden dauerhaft gelöscht.';

  @override
  String get import => 'Importieren';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get english => 'Englisch';

  @override
  String get spanish => 'Spanisch';

  @override
  String get chinese => 'Chinesisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Arabisch';

  @override
  String get portuguese => 'Portugiesisch';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Japanisch';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Deutsch';

  @override
  String get javanese => 'Javanisch';

  @override
  String get korean => 'Koreanisch';

  @override
  String get french => 'Französisch';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Türkisch';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamesisch';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ukrainisch';

  @override
  String get italian => 'Italienisch';

  @override
  String get russian => 'Russisch';

  @override
  String get darkMode => 'Dunkelmodus';

  @override
  String get light => 'Hell';

  @override
  String get dark => 'Dunkel';

  @override
  String get automatic => 'Automatisch';

  @override
  String get followSystemSetting => 'Systemeinstellungen befolgen';

  @override
  String get dataManagement => 'Datenmanagement';

  @override
  String get version => 'Version';

  @override
  String errorSavingTask(String error) {
    return 'Fehler beim Speichern der Aufgabe: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Fehler beim Löschen des Kriteriums: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Kriterium \"$name\" gelöscht';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit Auswahlen',
      one: '1 Auswahl',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values Werte',
      one: '1 Wert',
    );
    return 'Diskret: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Kontinuierlich: $minValue - $maxValue, Schritt $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Sind Sie sicher, dass Sie dieses Kriterium \"$name\" löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String valueX(int index) {
    return 'Wert $index';
  }

  @override
  String get minValueRequired => 'Mindestwert ist erforderlich';

  @override
  String get maxValueRequired => 'Maximaler Wert ist erforderlich';

  @override
  String get stepValueRequired => 'Schrittwert ist erforderlich';

  @override
  String get minValueMustBeANumber => 'Mindestwert muss eine Zahl sein';

  @override
  String get maxValueMustBeANumber => 'Maximaler Wert muss eine Zahl sein';

  @override
  String get stepValueMustBeAPositiveNumber => 'Schrittwert muss eine positive Zahl sein';

  @override
  String get minValueMustBeLessThanMaxValue => 'Mindestwert muss kleiner als der Höchstwert sein';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Maximaler Wert muss größer als der Mindestwert sein';

  @override
  String get stepValueMustBeGreaterThanZero => 'Schrittwert muss größer als 0 sein';

  @override
  String get valueCannotBeEmpty => 'Wert kann nicht leer sein';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Auswahlgrenze muss größer als 0 sein';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Auswahlgrenze muss eine positive Zahl sein';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Mindestens ein Wert ist erforderlich für diskrete Kriterien';

  @override
  String get selectIconType => 'Symboltyp auswählen';

  @override
  String get icon => 'Symbol';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Geben Sie den Namen des Kriteriums ein';

  @override
  String get type => 'Typ';

  @override
  String get discreteConfiguration => 'Diskrete Konfiguration';

  @override
  String get howManyValuesCanBeSelected => 'Wie viele Werte können ausgewählt werden';

  @override
  String get continuousConfiguration => 'Kontinuierliche Konfiguration';

  @override
  String get minimumAllowedValue => 'Minimale erlaubte Wert';

  @override
  String get maximumAllowedValue => 'Maximale erlaubte Wert';

  @override
  String get incrementDecrementStep => 'Schritt erhöhen/verringern';

  @override
  String errorSavingCriterion(String error) {
    return 'Fehler beim Speichern des Kriteriums: $error';
  }

  @override
  String get editCriterion => 'Kriterium bearbeiten';

  @override
  String get selectIcon => 'Symbol auswählen';

  @override
  String get selectEmoji => 'Emoji auswählen';

  @override
  String get icons => 'Symbole';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Farbe auswählen';

  @override
  String get noCriteriaToRate => 'Keine Kriterien zu bewerten';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Diese Aufgabe hat keine Kriterien zugewiesen.';

  @override
  String errorSavingRatings(String error) {
    return 'Fehler beim Speichern der Bewertungen: $error';
  }

  @override
  String get skip => 'Überspringen';

  @override
  String get save => 'Speichern';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Bereich: $minValue - $maxValue (Schritt: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Aufgabe bewerten: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Bis zu $selectionLimit Werte auswählen';
  }

  @override
  String get swipeToStart => 'Zum Starten wischen';
}
