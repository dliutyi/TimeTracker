// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get noTasks => 'Nessuna attività';

  @override
  String get createFirstTask => 'Crea la tua prima attività per iniziare';

  @override
  String get addCriterion => 'Aggiungi criterio';

  @override
  String get noCriteria => 'Nessun criterio';

  @override
  String get createFirstCriterion => 'Crea il tuo primo criterio per iniziare';

  @override
  String get discrete => 'Discreto';

  @override
  String get continuous => 'Continuo';

  @override
  String get selections => 'Selezioni';

  @override
  String get values => 'Valori';

  @override
  String get step => 'Passo';

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
  String get atLeastOneValue => 'Almeno un valore è richiesto';

  @override
  String get selectionLimitRequired => 'Il limite di selezione è obbligatorio';

  @override
  String get minMustBeLessThanMax => 'Il valore minimo deve essere inferiore al valore massimo';

  @override
  String get stepMustBeGreaterThanZero => 'Il valore del passo deve essere maggiore di 0';

  @override
  String get deleteCriterion => 'Elimina criterio';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Sei sicuro di voler eliminare questo criterio? Questa azione non può essere annullata.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'Criterio usato nelle attività';
  }

  @override
  String get history => 'Cronologia';

  @override
  String get charts => 'Grafici';

  @override
  String get noSessions => 'Nessuna sessione';

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
  String get filterByTask => 'Filtra per attività';

  @override
  String get allTasks => 'Tutte le attività';

  @override
  String get filterByCriterion => 'Filtra per criterio';

  @override
  String get allCriteria => 'Tutti i criteri';

  @override
  String get timeSpentPerTask => 'Tempo Trascorso per Attività';

  @override
  String get taskFrequencyOverTime => 'Frequenza Attività nel Tempo';

  @override
  String get averageCriterionRatings => 'Valutazioni medie dei criteri';

  @override
  String get activityChart => 'Grafico attività';

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
  String get listening => 'Ascolto';

  @override
  String get taskName => 'Nome dell\'attività';

  @override
  String get mottoOptional => 'Motto facoltativo';

  @override
  String get criteria => 'Criteri';

  @override
  String get noCriteriaAvailable => 'Nessun criterio disponibile';

  @override
  String get updateTask => 'Aggiorna attività';

  @override
  String get nameTooLong => 'Il nome è troppo lungo';

  @override
  String get mottoTooLong => 'Il motto è troppo lungo';

  @override
  String get editTask => 'Modifica attività';

  @override
  String get enable => 'Abilita';

  @override
  String get disable => 'Disabilita';

  @override
  String get enableTask => 'Abilita attività';

  @override
  String get disableTask => 'Disabilita attività';

  @override
  String get enableTaskMessage => 'Sei sicuro di voler abilitare questa attività? Questa azione non può essere annullata.';

  @override
  String get disableTaskMessage => 'Sei sicuro di voler disabilitare questa attività? Questa azione non può essere annullata.';

  @override
  String taskEnabled(Object name) {
    return 'Attività abilitata';
  }

  @override
  String taskDisabled(Object name) {
    return 'Attività disabilitata';
  }

  @override
  String get deleteTask => 'Elimina attività';

  @override
  String get deleteTaskMessage => 'Sei sicuro di voler eliminare questa attività? Questa azione non può essere annullata.';

  @override
  String taskDeleted(Object name) {
    return 'Attività eliminata';
  }

  @override
  String get anotherTaskActive => 'Un\'altra attività è attiva. Per favore, fermala prima.';

  @override
  String errorActivatingTask(String error) {
    return 'Errore durante l\'abilitazione dell\'attività: $error';
  }

  @override
  String get delete => 'Elimina';

  @override
  String error(String error) {
    return 'Errore: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Errore durante la fermata della sessione: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Errore durante lo scarto della sessione: $error';
  }

  @override
  String get noActiveTaskMessage => 'Nessuna attività attiva';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Attività sconosciuta';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Errore durante il caricamento delle attività: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Errore durante il caricamento dei criteri: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Errore durante il caricamento delle sessioni: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Errore durante il caricamento di tutte le sessioni: $error';
  }

  @override
  String get unknown => 'Sconosciuto';

  @override
  String get exportData => 'Esporta dati';

  @override
  String get exportAllAppDataToFile => 'Esporta tutti i dati dell\'app in un file';

  @override
  String get importData => 'Importa dati';

  @override
  String get importDataFromFile => 'Importa dati da un file';

  @override
  String get chooseHowToExportData => 'Scegli come esportare i dati';

  @override
  String get saveToDevice => 'Salva sul dispositivo';

  @override
  String get share => 'Condividi';

  @override
  String get saveExportFile => 'Salva file esportazione';

  @override
  String dataSavedTo(String path) {
    return 'Dati salvati in';
  }

  @override
  String get dataExportedSuccessfully => 'Dati esportati con successo';

  @override
  String errorExportingData(String error) {
    return 'Errore durante l\'esportazione dei dati: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Dati importati con successo';

  @override
  String errorImportingData(String error) {
    return 'Errore durante l\'importazione dei dati: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Tutti i dati esistenti verranno eliminati permanentemente.';

  @override
  String get import => 'Importa';

  @override
  String get language => 'Lingua';

  @override
  String get selectLanguage => 'Seleziona lingua';

  @override
  String get english => 'Inglese';

  @override
  String get spanish => 'Spagnolo';

  @override
  String get chinese => 'Cinese';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Arabo';

  @override
  String get portuguese => 'Portoghese';

  @override
  String get bengali => 'Bengalese';

  @override
  String get japanese => 'Giapponese';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Tedesco';

  @override
  String get javanese => 'Javanese';

  @override
  String get korean => 'Coreano';

  @override
  String get french => 'Francese';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Turco';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamita';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ucraino';

  @override
  String get italian => 'Italiano';

  @override
  String get russian => 'Russo';

  @override
  String get darkMode => 'Modalità scura';

  @override
  String get light => 'Chiaro';

  @override
  String get dark => 'Scuro';

  @override
  String get automatic => 'Automatico';

  @override
  String get followSystemSetting => 'Segui impostazioni del sistema';

  @override
  String get dataManagement => 'Gestione dati';

  @override
  String get version => 'Versione';

  @override
  String errorSavingTask(String error) {
    return 'Errore durante il salvataggio dell\'attività: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Errore durante l\'eliminazione del criterio: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Criterio eliminato';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit selezioni',
      one: '1 selezione',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values valori',
      one: '1 valore',
    );
    return 'Discreto: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Criterio continuo';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Sei sicuro di voler eliminare il criterio \"$name\"? Questa azione non può essere annullata.';
  }

  @override
  String valueX(int index) {
    return 'Valore $index';
  }

  @override
  String get minValueRequired => 'Il valore minimo è obbligatorio';

  @override
  String get maxValueRequired => 'Il valore massimo è obbligatorio';

  @override
  String get stepValueRequired => 'Il valore del passo è obbligatorio';

  @override
  String get minValueMustBeANumber => 'Il valore minimo deve essere un numero';

  @override
  String get maxValueMustBeANumber => 'Il valore massimo deve essere un numero';

  @override
  String get stepValueMustBeAPositiveNumber => 'Il valore del passo deve essere un numero positivo';

  @override
  String get minValueMustBeLessThanMaxValue => 'Il valore minimo deve essere inferiore al valore massimo';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Il valore massimo deve essere maggiore del valore minimo';

  @override
  String get stepValueMustBeGreaterThanZero => 'Il valore del passo deve essere maggiore di 0';

  @override
  String get valueCannotBeEmpty => 'Il valore non può essere vuoto';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'Il limite di selezione deve essere maggiore di 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'Il limite di selezione deve essere un numero positivo';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Almeno un valore è richiesto per i criteri discreti';

  @override
  String get selectIconType => 'Seleziona tipo di icona';

  @override
  String get icon => 'Icona';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Inserisci il nome del criterio';

  @override
  String get type => 'Tipo';

  @override
  String get discreteConfiguration => 'Configurazione discreta';

  @override
  String get howManyValuesCanBeSelected => 'Quanti valori possono essere selezionati';

  @override
  String get continuousConfiguration => 'Configurazione continua';

  @override
  String get minimumAllowedValue => 'Valore minimo consentito';

  @override
  String get maximumAllowedValue => 'Valore massimo consentito';

  @override
  String get incrementDecrementStep => 'Incrementa/decrementa passo';

  @override
  String errorSavingCriterion(String error) {
    return 'Errore durante il salvataggio del criterio: $error';
  }

  @override
  String get editCriterion => 'Modifica criterio';

  @override
  String get selectIcon => 'Seleziona icona';

  @override
  String get selectEmoji => 'Seleziona emoji';

  @override
  String get icons => 'Icone';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Seleziona colore';

  @override
  String get noCriteriaToRate => 'Nessun criterio da valutare';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Questa attività non ha criteri assegnati.';

  @override
  String errorSavingRatings(String error) {
    return 'Errore durante il salvataggio delle valutazioni: $error';
  }

  @override
  String get skip => 'Salta';

  @override
  String get save => 'Salva';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Range: $minValue - $maxValue (passo: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Valuta attività: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Seleziona fino a $selectionLimit valori';
  }

  @override
  String get swipeToStart => 'Scorri per iniziare';
}
