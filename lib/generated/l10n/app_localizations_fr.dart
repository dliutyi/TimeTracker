// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'Bienvenue dans YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Bienvenue dans YuDi Time Tracker';

  @override
  String get continueButton => 'Continuer';

  @override
  String get activeTask => 'Tâche active';

  @override
  String get listOfTasks => 'Liste des Tâches';

  @override
  String get statistics => 'Statistiques';

  @override
  String get listOfCriteria => 'Liste des Critères';

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
  String get values => 'Valeurs';

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
  String get minValue => 'Valeur Minimale';

  @override
  String get maxValue => 'Valeur Maximale';

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
  String get selectionLimitRequired => 'La limite de sélection est requise';

  @override
  String get minMustBeLessThanMax => 'Valeur minimale doit être inférieure à la valeur maximale';

  @override
  String get stepMustBeGreaterThanZero => 'La valeur du pas doit être supérieure à 0';

  @override
  String get deleteCriterion => 'Supprimer le critère';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Êtes-vous sûr de vouloir supprimer ce critère ? Cette action ne peut pas être annulée.';
  }

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
  String get startTaskFromList => 'Démarrer une tâche de la liste pour commencer le suivi';

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
  String get listening => 'Écoute';

  @override
  String get taskName => 'Nom de la tâche';

  @override
  String get mottoOptional => 'Motto (optionnel)';

  @override
  String get criteria => 'Critères';

  @override
  String get noCriteriaAvailable => 'Aucun critère disponible';

  @override
  String get updateTask => 'Mettre à jour la tâche';

  @override
  String get nameTooLong => 'Le nom doit contenir moins de 32 caractères';

  @override
  String get mottoTooLong => 'Le motto doit contenir moins de 128 caractères';

  @override
  String get editTask => 'Modifier la tâche';

  @override
  String get enable => 'Activer';

  @override
  String get disable => 'Désactiver';

  @override
  String get enableTask => 'Activer la tâche';

  @override
  String get disableTask => 'Désactiver la tâche';

  @override
  String get enableTaskMessage => 'Êtes-vous sûr de vouloir activer cette tâche ? Cette action ne peut pas être annulée.';

  @override
  String get disableTaskMessage => 'Êtes-vous sûr de vouloir désactiver cette tâche ? Cette action ne peut pas être annulée.';

  @override
  String taskEnabled(Object name) {
    return 'Tâche activée';
  }

  @override
  String taskDisabled(Object name) {
    return 'Tâche désactivée';
  }

  @override
  String get deleteTask => 'Supprimer la tâche';

  @override
  String get deleteTaskMessage => 'Êtes-vous sûr de vouloir supprimer cette tâche ? Cette action ne peut pas être annulée.';

  @override
  String taskDeleted(Object name) {
    return 'Tâche supprimée';
  }

  @override
  String get anotherTaskActive => 'Une autre tâche est active. Veuillez la stopper d\'abord.';

  @override
  String errorActivatingTask(String error) {
    return 'Erreur lors de l\'activation de la tâche: $error';
  }

  @override
  String get delete => 'Supprimer';

  @override
  String error(String error) {
    return 'Erreur: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Erreur lors de l\'arrêt de la session: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Erreur lors de l\'abandon de la session: $error';
  }

  @override
  String get noActiveTaskMessage => 'Aucune tâche active';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Tâche inconnue';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Erreur lors du chargement des tâches: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Erreur lors du chargement des critères: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Erreur lors du chargement des sessions: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Erreur lors du chargement de toutes les sessions: $error';
  }

  @override
  String get unknown => 'Inconnu';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportAllAppDataToFile => 'Exporter toutes les données de l\'application dans un fichier';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataFromFile => 'Importer les données d\'un fichier';

  @override
  String get chooseHowToExportData => 'Choisissez comment vous souhaitez exporter les données';

  @override
  String get saveToDevice => 'Enregistrer sur le dispositif';

  @override
  String get share => 'Partager';

  @override
  String get saveExportFile => 'Enregistrer le fichier d\'exportation';

  @override
  String dataSavedTo(String path) {
    return 'Données sauvegardées avec succès';
  }

  @override
  String get dataExportedSuccessfully => 'Données exportées avec succès';

  @override
  String errorExportingData(String error) {
    return 'Erreur lors de l\'exportation des données: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Données importées avec succès';

  @override
  String errorImportingData(String error) {
    return 'Erreur lors de l\'importation des données: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Tous les données existantes seront supprimées de manière permanente.';

  @override
  String get import => 'Importer';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Sélectionner une langue';

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get chinese => 'Chinois';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Arabe';

  @override
  String get portuguese => 'Portugais';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Japonais';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Allemand';

  @override
  String get javanese => 'Javanais';

  @override
  String get korean => 'Coréen';

  @override
  String get french => 'Français';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Marathi';

  @override
  String get turkish => 'Turque';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamien';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ukrainien';

  @override
  String get italian => 'Italien';

  @override
  String get russian => 'Russe';

  @override
  String get darkMode => 'Mode Sombre';

  @override
  String get light => 'Clair';

  @override
  String get dark => 'Sombre';

  @override
  String get automatic => 'Automatique';

  @override
  String get followSystemSetting => 'Suivre les paramètres du système';

  @override
  String get dataManagement => 'Gestion des Données';

  @override
  String get version => 'Version';

  @override
  String errorSavingTask(String error) {
    return 'Erreur lors de la sauvegarde de la tâche: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Erreur lors de la suppression du critère: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Critère \"$name\" supprimé';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit sélections',
      one: '1 sélection',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values valeurs',
      one: '1 valeur',
    );
    return 'Discret: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Continu: $minValue - $maxValue, Pas $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Êtes-vous sûr de vouloir supprimer le critère \"$name\"? Cette action ne peut pas être annulée.';
  }

  @override
  String valueX(int index) {
    return 'Valeur $index';
  }

  @override
  String get minValueRequired => 'Valeur minimale requise';

  @override
  String get maxValueRequired => 'Valeur maximale requise';

  @override
  String get stepValueRequired => 'La valeur du pas est requise';

  @override
  String get minValueMustBeANumber => 'Valeur minimale doit être un nombre';

  @override
  String get maxValueMustBeANumber => 'Valeur maximale doit être un nombre';

  @override
  String get stepValueMustBeAPositiveNumber => 'La valeur du pas doit être un nombre positif';

  @override
  String get minValueMustBeLessThanMaxValue => 'Valeur minimale doit être inférieure à la valeur maximale';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'Valeur maximale doit être supérieure à la valeur minimale';

  @override
  String get stepValueMustBeGreaterThanZero => 'La valeur du pas doit être supérieure à 0';

  @override
  String get valueCannotBeEmpty => 'La valeur ne peut pas être vide';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'La limite de sélection doit être supérieure à 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'La limite de sélection doit être un nombre positif';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Au moins une valeur est requise pour les critères discrets';

  @override
  String get selectIconType => 'Sélectionner un type d\'icône';

  @override
  String get icon => 'Icône';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Entrer le nom du critère';

  @override
  String get type => 'Type';

  @override
  String get discreteConfiguration => 'Configuration Discrete';

  @override
  String get howManyValuesCanBeSelected => 'Combien de valeurs peuvent être sélectionnées';

  @override
  String get continuousConfiguration => 'Configuration Continu';

  @override
  String get minimumAllowedValue => 'Valeur minimale autorisée';

  @override
  String get maximumAllowedValue => 'Valeur maximale autorisée';

  @override
  String get incrementDecrementStep => 'Augmenter/diminuer le pas';

  @override
  String errorSavingCriterion(String error) {
    return 'Erreur lors de la sauvegarde du critère: $error';
  }

  @override
  String get editCriterion => 'Modifier le critère';

  @override
  String get selectIcon => 'Sélectionner une icône';

  @override
  String get selectEmoji => 'Sélectionner un emoji';

  @override
  String get icons => 'Icônes';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Sélectionner une couleur';

  @override
  String get noCriteriaToRate => 'Aucun critère à évaluer';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Cette tâche n\'a pas de critères assignés.';

  @override
  String errorSavingRatings(String error) {
    return 'Erreur lors de la sauvegarde des notes: $error';
  }

  @override
  String get skip => 'Passer';

  @override
  String get save => 'Enregistrer';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Plage: $minValue - $maxValue (Pas: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Évaluer la tâche: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Sélectionner jusqu\'à $selectionLimit valeurs';
  }

  @override
  String get swipeToStart => 'Glisser pour démarrer';

  @override
  String get resumeSession => 'Reanudar Sesión';

  @override
  String get resumeSessionMessage => '¿Estás seguro de que deseas reanudar esta sesión? Esta acción no se puede deshacer.';

  @override
  String get deleteSession => 'Eliminar Sesión';

  @override
  String get deleteSessionMessage => '¿Estás seguro de que deseas eliminar esta sesión? Esta acción no se puede deshacer.';

  @override
  String get resume => 'Reanudar';
}
