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
}
