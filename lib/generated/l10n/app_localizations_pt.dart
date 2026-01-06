// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

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
  String get noTasks => 'Nenhuma tarefa';

  @override
  String get createFirstTask => 'Crie sua primeira tarefa para começar';

  @override
  String get addCriterion => 'Adicionar Critério';

  @override
  String get noCriteria => 'Nenhum critério';

  @override
  String get createFirstCriterion => 'Crie seu primeiro critério para começar';

  @override
  String get discrete => 'Discreto';

  @override
  String get continuous => 'Contínuo';

  @override
  String get selections => 'Seleções';

  @override
  String get values => 'Valores';

  @override
  String get step => 'Passo';

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
  String get selectionLimitRequired => 'O limite de seleção é obrigatório';

  @override
  String get minMustBeLessThanMax => 'O valor mínimo deve ser menor que o valor máximo';

  @override
  String get stepMustBeGreaterThanZero => 'O valor do passo deve ser maior que 0';

  @override
  String get deleteCriterion => 'Excluir Critério';

  @override
  String deleteCriterionWarning(Object name) {
    return 'Tem certeza de que deseja excluir este critério? Esta ação não pode ser desfeita.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'Este critério é usado em $count tarefa(s). A associação será removida dessas tarefas.';
  }

  @override
  String get history => 'Histórico';

  @override
  String get charts => 'Gráficos';

  @override
  String get noSessions => 'Nenhuma sessão';

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

  @override
  String get listening => 'Ouvindo';

  @override
  String get taskName => 'Nome da Tarefa';

  @override
  String get mottoOptional => 'Motto (Opcional)';

  @override
  String get criteria => 'Critérios';

  @override
  String get noCriteriaAvailable => 'Nenhum critério disponível';

  @override
  String get updateTask => 'Atualizar Tarefa';

  @override
  String get nameTooLong => 'O nome deve ter menos de 32 caracteres';

  @override
  String get mottoTooLong => 'O motto deve ter menos de 128 caracteres';

  @override
  String get editTask => 'Editar Tarefa';

  @override
  String get enable => 'Habilitar';

  @override
  String get disable => 'Desabilitar';

  @override
  String get enableTask => 'Habilitar Tarefa';

  @override
  String get disableTask => 'Desabilitar Tarefa';

  @override
  String get enableTaskMessage => 'Tem certeza de que deseja habilitar esta tarefa? Esta ação não pode ser desfeita.';

  @override
  String get disableTaskMessage => 'Tem certeza de que deseja desabilitar esta tarefa? Esta ação não pode ser desfeita.';

  @override
  String taskEnabled(Object name) {
    return 'Tarefa habilitada';
  }

  @override
  String taskDisabled(Object name) {
    return 'Tarefa desabilitada';
  }

  @override
  String get deleteTask => 'Excluir Tarefa';

  @override
  String get deleteTaskMessage => 'Tem certeza de que deseja excluir esta tarefa? Esta ação não pode ser desfeita.';

  @override
  String taskDeleted(Object name) {
    return 'Tarefa excluída';
  }

  @override
  String get anotherTaskActive => 'Outra tarefa está ativa. Pare-a primeiro.';

  @override
  String errorActivatingTask(String error) {
    return 'Erro ao ativar a tarefa: $error';
  }

  @override
  String get delete => 'Excluir';

  @override
  String error(String error) {
    return 'Erro: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Erro ao parar a sessão: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Erro ao descartar a sessão: $error';
  }

  @override
  String get noActiveTaskMessage => 'Nenhuma tarefa ativa';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Tarefa Desconhecida';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Erro ao carregar as tarefas: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Erro ao carregar os critérios: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Erro ao carregar as sessões: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Erro ao carregar todas as sessões: $error';
  }

  @override
  String get unknown => 'Desconhecido';

  @override
  String get exportData => 'Exportar Dados';

  @override
  String get exportAllAppDataToFile => 'Exportar todos os dados do aplicativo para um arquivo';

  @override
  String get importData => 'Importar Dados';

  @override
  String get importDataFromFile => 'Importar Dados de um Arquivo';

  @override
  String get chooseHowToExportData => 'Escolha como exportar os dados';

  @override
  String get saveToDevice => 'Salvar no Dispositivo';

  @override
  String get share => 'Compartilhar';

  @override
  String get saveExportFile => 'Salvar arquivo de exportação';

  @override
  String dataSavedTo(String path) {
    return 'Dados salvos com sucesso';
  }

  @override
  String get dataExportedSuccessfully => 'Dados exportados com sucesso';

  @override
  String errorExportingData(String error) {
    return 'Erro ao exportar os dados: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Dados importados com sucesso';

  @override
  String errorImportingData(String error) {
    return 'Erro ao importar os dados: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Todos os dados existentes serão excluídos permanentemente.';

  @override
  String get import => 'Importar';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Selecionar Idioma';

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get chinese => 'Chinês';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Árabe';

  @override
  String get portuguese => 'Português';

  @override
  String get bengali => 'Bengali';

  @override
  String get japanese => 'Japonês';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Alemão';

  @override
  String get javanese => 'Javonês';

  @override
  String get korean => 'Coreano';

  @override
  String get french => 'Francês';

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
  String get darkMode => 'Modo Escuro';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Escuro';

  @override
  String get automatic => 'Automático';

  @override
  String get followSystemSetting => 'Seguir configurações do sistema';

  @override
  String get dataManagement => 'Gestão de Dados';

  @override
  String get version => 'Versão';

  @override
  String errorSavingTask(String error) {
    return 'Erro ao salvar a tarefa: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Erro ao excluir o critério: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Critério \"$name\" excluído';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit valores',
      one: '1 valor',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values valores',
      one: '1 valor',
    );
    return 'Critério Discreto: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Critério Contínuo';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return 'Tem certeza de que deseja excluir o critério \"$name\"? Esta ação não pode ser desfeita.';
  }

  @override
  String valueX(int index) {
    return 'Valor $index';
  }

  @override
  String get minValueRequired => 'O valor mínimo é obrigatório';

  @override
  String get maxValueRequired => 'O valor máximo é obrigatório';

  @override
  String get stepValueRequired => 'O valor do passo é obrigatório';

  @override
  String get minValueMustBeANumber => 'O valor mínimo deve ser um número';

  @override
  String get maxValueMustBeANumber => 'O valor máximo deve ser um número';

  @override
  String get stepValueMustBeAPositiveNumber => 'O valor do passo deve ser um número positivo';

  @override
  String get minValueMustBeLessThanMaxValue => 'O valor mínimo deve ser menor que o valor máximo';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'O valor máximo deve ser maior que o valor mínimo';

  @override
  String get stepValueMustBeGreaterThanZero => 'O valor do passo deve ser maior que 0';

  @override
  String get valueCannotBeEmpty => 'O valor não pode ser vazio';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'O limite de seleção deve ser maior que 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'O limite de seleção deve ser um número positivo';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Pelo menos um valor é necessário para critérios discretos';

  @override
  String get selectIconType => 'Selecionar Tipo de Ícone';

  @override
  String get icon => 'Ícone';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Digite o nome do critério';

  @override
  String get type => 'Tipo';

  @override
  String get discreteConfiguration => 'Configuração Discreta';

  @override
  String get howManyValuesCanBeSelected => 'Quantos valores podem ser selecionados?';

  @override
  String get continuousConfiguration => 'Configuração Contínua';

  @override
  String get minimumAllowedValue => 'Valor Mínimo Permitido';

  @override
  String get maximumAllowedValue => 'Valor Máximo Permitido';

  @override
  String get incrementDecrementStep => 'Incrementar/Decrementar Passo';

  @override
  String errorSavingCriterion(String error) {
    return 'Erro ao salvar o critério: $error';
  }

  @override
  String get editCriterion => 'Editar Critério';

  @override
  String get selectIcon => 'Selecionar Ícone';

  @override
  String get selectEmoji => 'Selecionar Emoji';

  @override
  String get icons => 'Ícones';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Selecionar Cor';

  @override
  String get noCriteriaToRate => 'Nenhum critério para avaliar';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Esta tarefa não tem critérios atribuídos';

  @override
  String errorSavingRatings(String error) {
    return 'Erro ao salvar as avaliações: $error';
  }

  @override
  String get skip => 'Pular';

  @override
  String get save => 'Salvar';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Range: $minValue - $maxValue (Passo: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Avaliar Tarefa: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Selecionar até $selectionLimit valores';
  }

  @override
  String get swipeToStart => 'Deslize para iniciar';

  @override
  String get resumeSession => 'Reiniciar Sessão';

  @override
  String get resumeSessionMessage => 'Tem certeza de que deseja reiniciar esta sessão? Esta ação não pode ser desfeita.';

  @override
  String get deleteSession => 'Excluir Sessão';

  @override
  String get deleteSessionMessage => 'Tem certeza de que deseja excluir esta sessão? Esta ação não pode ser desfeita.';

  @override
  String get resume => 'Reiniciar';
}
