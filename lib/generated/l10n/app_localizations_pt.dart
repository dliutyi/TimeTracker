// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Bem-vindo ao YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Rastreie seu tempo, gerencie tarefas e analise sua produtividade com facilidade.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get activeTask => 'Tarefa Ativa';

  @override
  String get listOfTasks => 'Lista de Tarefas';

  @override
  String get statistics => 'Estatísticas';

  @override
  String get listOfCriteria => 'Lista de Critérios';

  @override
  String get settings => 'Configurações';

  @override
  String get addTask => 'Adicionar Tarefa';

  @override
  String get generalMotto => 'Lema Geral';

  @override
  String get noTasks => 'Ainda não há tarefas';

  @override
  String get createFirstTask => 'Crie sua primeira tarefa para começar';

  @override
  String get addCriterion => 'Adicionar Critério';

  @override
  String get noCriteria => 'Ainda não há critérios';

  @override
  String get createFirstCriterion => 'Crie seu primeiro critério para começar';

  @override
  String get discrete => 'Discreto';

  @override
  String get continuous => 'Contínuo';

  @override
  String get selections => 'seleções';

  @override
  String get values => 'valores';

  @override
  String get step => 'passo';

  @override
  String get criterionName => 'Nome do Critério';

  @override
  String get criterionType => 'Tipo de Critério';

  @override
  String get addValue => 'Adicionar Valor';

  @override
  String get selectionLimit => 'Limite de Seleção';

  @override
  String get minValue => 'Valor Mínimo';

  @override
  String get maxValue => 'Valor Máximo';

  @override
  String get stepValue => 'Valor do Passo';

  @override
  String get value => 'Valor';

  @override
  String get updateCriterion => 'Atualizar Critério';

  @override
  String get discard => 'Descartar';

  @override
  String get nameRequired => 'O nome é obrigatório';

  @override
  String get atLeastOneValue => 'Pelo menos um valor é necessário';

  @override
  String get selectionLimitRequired => 'O limite de seleção deve ser maior que 0';

  @override
  String get minMustBeLessThanMax => 'O valor mínimo deve ser menor que o valor máximo';

  @override
  String get stepMustBeGreaterThanZero => 'O valor do passo deve ser maior que 0';

  @override
  String get deleteCriterion => 'Excluir Critério';

  @override
  String get deleteCriterionWarning => 'Tem certeza de que deseja excluir este critério? Esta ação não pode ser desfeita.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Este critério é usado em $count tarefa(s). A associação será removida dessas tarefas.';
  }

  @override
  String get history => 'Histórico';

  @override
  String get charts => 'Gráficos';

  @override
  String get noSessions => 'Ainda não há sessões';

  @override
  String get noSessionsDescription => 'Comece a rastrear o tempo para ver suas sessões aqui';

  @override
  String get noSessionsForPeriod => 'Nenhuma sessão encontrada para o período de tempo selecionado';

  @override
  String get noActiveTask => 'Nenhuma tarefa ativa';

  @override
  String get startTaskFromList => 'Inicie uma tarefa da lista para começar a rastrear';

  @override
  String get startTime => 'Hora de Início';

  @override
  String get endTime => 'Hora de Término';

  @override
  String get stop => 'Parar';

  @override
  String get endTimeAfterStart => 'A hora de término deve ser posterior à hora de início';

  @override
  String get discardSession => 'Descartar Sessão';

  @override
  String get discardSessionMessage => 'Tem certeza de que deseja descartar esta sessão? Esta ação não pode ser desfeita.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get swipeToStop => 'Deslize para parar';

  @override
  String get filterByTask => 'Filtrar por Tarefa';

  @override
  String get allTasks => 'Todas as Tarefas';

  @override
  String get filterByCriterion => 'Filtrar por Critério';

  @override
  String get allCriteria => 'Todos os Critérios';

  @override
  String get timeSpentPerTask => 'Tempo Gasto por Tarefa';

  @override
  String get taskFrequencyOverTime => 'Frequência de Tarefas ao Longo do Tempo';

  @override
  String get averageCriterionRatings => 'Avaliações Médias de Critérios';

  @override
  String get activityChart => 'Gráfico de Atividade';

  @override
  String get day => 'Dia';

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mês';

  @override
  String get year => 'Ano';

  @override
  String get all => 'Tudo';
}
