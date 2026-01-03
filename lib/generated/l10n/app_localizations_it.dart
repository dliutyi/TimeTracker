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
}
