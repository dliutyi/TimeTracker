// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'YuDi Time Tracker';

  @override
  String get welcomeTitle => 'Bienvenido a YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Rastrea tu tiempo, gestiona tareas y analiza tu productividad con facilidad.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get activeTask => 'Tarea Activa';

  @override
  String get listOfTasks => 'Lista de Tareas';

  @override
  String get statistics => 'Estadísticas';

  @override
  String get listOfCriteria => 'Lista de Criterios';

  @override
  String get settings => 'Configuración';

  @override
  String get addTask => 'Agregar Tarea';

  @override
  String get generalMotto => 'Lema General';

  @override
  String get noTasks => 'Aún no hay tareas';

  @override
  String get createFirstTask => 'Crea tu primera tarea para comenzar';

  @override
  String get addCriterion => 'Agregar Criterio';

  @override
  String get noCriteria => 'Aún no hay criterios';

  @override
  String get createFirstCriterion => 'Crea tu primer criterio para comenzar';

  @override
  String get discrete => 'Discreto';

  @override
  String get continuous => 'Continuo';

  @override
  String get selections => 'selecciones';

  @override
  String get values => 'valores';

  @override
  String get step => 'paso';

  @override
  String get criterionName => 'Nombre del Criterio';

  @override
  String get criterionType => 'Tipo de Criterio';

  @override
  String get addValue => 'Agregar Valor';

  @override
  String get selectionLimit => 'Límite de Selección';

  @override
  String get minValue => 'Valor Mínimo';

  @override
  String get maxValue => 'Valor Máximo';

  @override
  String get stepValue => 'Valor del Paso';

  @override
  String get value => 'Valor';

  @override
  String get updateCriterion => 'Actualizar Criterio';

  @override
  String get discard => 'Descartar';

  @override
  String get nameRequired => 'El nombre es obligatorio';

  @override
  String get atLeastOneValue => 'Se requiere al menos un valor';

  @override
  String get selectionLimitRequired => 'El límite de selección debe ser mayor que 0';

  @override
  String get minMustBeLessThanMax => 'El valor mínimo debe ser menor que el valor máximo';

  @override
  String get stepMustBeGreaterThanZero => 'El valor del paso debe ser mayor que 0';

  @override
  String get deleteCriterion => 'Eliminar Criterio';

  @override
  String get deleteCriterionWarning => '¿Estás seguro de que deseas eliminar este criterio? Esta acción no se puede deshacer.';

  @override
  String criterionUsedInTasks(int count) {
    return 'Este criterio se usa en $count tarea(s). La asociación se eliminará de esas tareas.';
  }

  @override
  String get history => 'Historial';

  @override
  String get charts => 'Gráficos';

  @override
  String get noSessions => 'Aún no hay sesiones';

  @override
  String get noSessionsDescription => 'Comienza a rastrear el tiempo para ver tus sesiones aquí';

  @override
  String get noSessionsForPeriod => 'No se encontraron sesiones para el período de tiempo seleccionado';

  @override
  String get noActiveTask => 'No hay tarea activa';

  @override
  String get startTaskFromList => 'Inicia una tarea de la lista para comenzar a rastrear';

  @override
  String get startTime => 'Hora de Inicio';

  @override
  String get endTime => 'Hora de Finalización';

  @override
  String get stop => 'Detener';

  @override
  String get endTimeAfterStart => 'La hora de finalización debe ser posterior a la hora de inicio';

  @override
  String get discardSession => 'Descartar Sesión';

  @override
  String get discardSessionMessage => '¿Estás seguro de que deseas descartar esta sesión? Esta acción no se puede deshacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get swipeToStop => 'Desliza para detener';

  @override
  String get filterByTask => 'Filtrar por Tarea';

  @override
  String get allTasks => 'Todas las Tareas';

  @override
  String get filterByCriterion => 'Filtrar por Criterio';

  @override
  String get allCriteria => 'Todos los Criterios';

  @override
  String get timeSpentPerTask => 'Tiempo Dedicado por Tarea';

  @override
  String get taskFrequencyOverTime => 'Frecuencia de Tareas en el Tiempo';

  @override
  String get averageCriterionRatings => 'Calificaciones Promedio de Criterios';

  @override
  String get activityChart => 'Gráfico de Actividad';

  @override
  String get day => 'Día';

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mes';

  @override
  String get year => 'Año';

  @override
  String get all => 'Todo';
}
