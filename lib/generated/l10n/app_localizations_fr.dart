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
}
