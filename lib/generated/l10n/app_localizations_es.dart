// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'YuDi\nTime Tracker';

  @override
  String get welcomeTitle => 'Bienvenido a YuDi Time Tracker';

  @override
  String get welcomeDescription => 'Bienvenido a YuDi Time Tracker';

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
  String get noTasks => 'No hay tareas';

  @override
  String get createFirstTask => 'Crea tu primera tarea para comenzar';

  @override
  String get addCriterion => 'Agregar Criterio';

  @override
  String get noCriteria => 'No hay criterios';

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
  String get stepValue => 'Valor del paso';

  @override
  String get value => 'Valor';

  @override
  String get updateCriterion => 'Actualizar Criterio';

  @override
  String get discard => 'Descartar';

  @override
  String get nameRequired => 'El nombre es obligatorio';

  @override
  String get atLeastOneValue => 'Al menos un valor es requerido';

  @override
  String get selectionLimitRequired => 'El límite de selección es obligatorio';

  @override
  String get minMustBeLessThanMax => 'El valor mínimo debe ser menor que el valor máximo';

  @override
  String get stepMustBeGreaterThanZero => 'El valor del paso debe ser mayor que 0';

  @override
  String get deleteCriterion => 'Eliminar Criterio';

  @override
  String deleteCriterionWarning(Object name) {
    return '¿Estás seguro de que deseas eliminar este criterio? Esta acción no se puede deshacer.';
  }

  @override
  String criterionUsedInTasks(int count) {
    return 'Este criterio se usa en $count tarea(s). La asociación se eliminará de esas tareas.';
  }

  @override
  String get history => 'Historial';

  @override
  String get charts => 'Gráficos';

  @override
  String get noSessions => 'No hay sesiones';

  @override
  String get noSessionsDescription => 'No hay sesiones';

  @override
  String get noSessionsForPeriod => 'No se encontraron sesiones para el período de tiempo seleccionado';

  @override
  String get noActiveTask => 'No hay tarea activa';

  @override
  String get startTaskFromList => 'Iniciar tarea desde la lista';

  @override
  String get startTime => 'Hora de inicio';

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
  String get timeSpentPerTask => 'Tiempo dedicado por tarea';

  @override
  String get taskFrequencyOverTime => 'Frecuencia de tareas en el tiempo';

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

  @override
  String get listening => 'Escuchando...';

  @override
  String get taskName => 'Nombre de la tarea';

  @override
  String get mottoOptional => 'Motto (opcional)';

  @override
  String get criteria => 'Criterios';

  @override
  String get noCriteriaAvailable => 'No hay criterios disponibles';

  @override
  String get updateTask => 'Actualizar Tarea';

  @override
  String get nameTooLong => 'El nombre debe tener menos de 32 caracteres';

  @override
  String get mottoTooLong => 'El motto debe tener menos de 128 caracteres';

  @override
  String get editTask => 'Editar Tarea';

  @override
  String get enable => 'Habilitar';

  @override
  String get disable => 'Deshabilitar';

  @override
  String get enableTask => 'Habilitar Tarea';

  @override
  String get disableTask => 'Deshabilitar Tarea';

  @override
  String get enableTaskMessage => '¿Estás seguro de que deseas habilitar esta tarea? Esta acción no se puede deshacer.';

  @override
  String get disableTaskMessage => '¿Estás seguro de que deseas deshabilitar esta tarea? Esta acción no se puede deshacer.';

  @override
  String taskEnabled(Object name) {
    return 'Tarea habilitada';
  }

  @override
  String taskDisabled(Object name) {
    return 'Tarea deshabilitada';
  }

  @override
  String get deleteTask => 'Eliminar Tarea';

  @override
  String get deleteTaskMessage => '¿Estás seguro de que deseas eliminar esta tarea? Esta acción no se puede deshacer.';

  @override
  String taskDeleted(Object name) {
    return 'Tarea eliminada';
  }

  @override
  String get anotherTaskActive => 'Otra tarea activa. Por favor, deténla primero.';

  @override
  String errorActivatingTask(String error) {
    return 'Error al activar la tarea: $error';
  }

  @override
  String get delete => 'Eliminar';

  @override
  String error(String error) {
    return 'Error: $error';
  }

  @override
  String errorStoppingSession(String error) {
    return 'Error al detener sesión: $error';
  }

  @override
  String errorDiscardingSession(String error) {
    return 'Error al descartar la sesión: $error';
  }

  @override
  String get noActiveTaskMessage => 'No hay tarea activa';

  @override
  String get dateFormat => 'MMM d, HH:mm';

  @override
  String get unknownTask => 'Tarea desconocida';

  @override
  String get dateFormatInSessionHistory => 'MMM d, HH:mm';

  @override
  String errorLoadingTasks(String error) {
    return 'Error al cargar tareas: $error';
  }

  @override
  String errorLoadingCriteria(String error) {
    return 'Error al cargar criterios: $error';
  }

  @override
  String errorLoadingSessions(String error) {
    return 'Error al cargar sesiones: $error';
  }

  @override
  String errorLoadingAllSessions(String error) {
    return 'Error al cargar todas las sesiones: $error';
  }

  @override
  String get unknown => 'Desconocido';

  @override
  String get exportData => 'Exportar Datos';

  @override
  String get exportAllAppDataToFile => 'Exportar todos los datos de la aplicación a un archivo';

  @override
  String get importData => 'Importar Datos';

  @override
  String get importDataFromFile => 'Importar datos de un archivo';

  @override
  String get chooseHowToExportData => 'Elegir cómo exportar datos';

  @override
  String get saveToDevice => 'Guardar en dispositivo';

  @override
  String get share => 'Compartir';

  @override
  String get saveExportFile => 'Guardar archivo de exportación';

  @override
  String dataSavedTo(String path) {
    return 'Datos guardados correctamente';
  }

  @override
  String get dataExportedSuccessfully => 'Datos exportados correctamente';

  @override
  String errorExportingData(String error) {
    return 'Error al exportar datos: $error';
  }

  @override
  String get dataImportedSuccessfully => 'Datos importados correctamente';

  @override
  String errorImportingData(String error) {
    return 'Error al importar datos: $error';
  }

  @override
  String get allExistingDataWillBePermanentlyDeleted => 'Todos los datos existentes serán eliminados permanentemente.';

  @override
  String get import => 'Importar';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get chinese => 'Chino';

  @override
  String get hindi => 'Hindi';

  @override
  String get arabic => 'Árabe';

  @override
  String get portuguese => 'Portugués';

  @override
  String get bengali => 'Bengalí';

  @override
  String get japanese => 'Japonés';

  @override
  String get punjabi => 'Punjabi';

  @override
  String get german => 'Alemán';

  @override
  String get javanese => 'Javonés';

  @override
  String get korean => 'Coreano';

  @override
  String get french => 'Francés';

  @override
  String get telugu => 'Telugu';

  @override
  String get marathi => 'Maratí';

  @override
  String get turkish => 'Turco';

  @override
  String get tamil => 'Tamil';

  @override
  String get vietnamese => 'Vietnamita';

  @override
  String get urdu => 'Urdu';

  @override
  String get ukrainian => 'Ucraniano';

  @override
  String get italian => 'Italiano';

  @override
  String get russian => 'Ruso';

  @override
  String get darkMode => 'Modo Oscuro';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Oscuro';

  @override
  String get automatic => 'Automático';

  @override
  String get followSystemSetting => 'Seguir configuración del sistema';

  @override
  String get dataManagement => 'Gestión de Datos';

  @override
  String get version => 'Versión';

  @override
  String errorSavingTask(String error) {
    return 'Error al guardar tarea: $error';
  }

  @override
  String errorDeletingCriterion(String error) {
    return 'Error al eliminar el criterio: $error';
  }

  @override
  String criterionDeleted(String name) {
    return 'Criterio \"$name\" eliminado';
  }

  @override
  String discreteCriterion(int selectionLimit, int values) {
    String _temp0 = intl.Intl.pluralLogic(
      selectionLimit,
      locale: localeName,
      other: '$selectionLimit selecciones',
      one: '1 selección',
    );
    String _temp1 = intl.Intl.pluralLogic(
      values,
      locale: localeName,
      other: '$values valores',
      one: '1 valor',
    );
    return 'Discreto: $_temp0, $_temp1';
  }

  @override
  String continuousCriterion(double minValue, double maxValue, double stepValue) {
    return 'Continuo: $minValue - $maxValue, Paso $stepValue';
  }

  @override
  String deleteCriterionWarningWithName(String name) {
    return '¿Estás seguro de que deseas eliminar el criterio \"$name\"? Esta acción no se puede deshacer.';
  }

  @override
  String valueX(int index) {
    return 'Valor $index';
  }

  @override
  String get minValueRequired => 'El valor mínimo es obligatorio';

  @override
  String get maxValueRequired => 'El valor máximo es obligatorio';

  @override
  String get stepValueRequired => 'El valor del paso es obligatorio';

  @override
  String get minValueMustBeANumber => 'El valor mínimo debe ser un número';

  @override
  String get maxValueMustBeANumber => 'El valor máximo debe ser un número';

  @override
  String get stepValueMustBeAPositiveNumber => 'El valor del paso debe ser un número positivo';

  @override
  String get minValueMustBeLessThanMaxValue => 'El valor mínimo debe ser menor que el valor máximo';

  @override
  String get maxValueMustBeGreaterThanMinValue => 'El valor máximo debe ser mayor que el valor mínimo';

  @override
  String get stepValueMustBeGreaterThanZero => 'El valor del paso debe ser mayor que 0';

  @override
  String get valueCannotBeEmpty => 'El valor no puede ser vacío';

  @override
  String get selectionLimitMustBeGreaterThanZero => 'El límite de selección debe ser mayor que 0';

  @override
  String get selectionLimitMustBeAPositiveNumber => 'El límite de selección debe ser un número positivo';

  @override
  String get atLeastOneValueForDiscreteCriteria => 'Se requiere al menos un valor para criterios discretos';

  @override
  String get selectIconType => 'Seleccionar tipo de icono';

  @override
  String get icon => 'Icono';

  @override
  String get emoji => 'Emoji';

  @override
  String get enterCriterionName => 'Ingresar nombre del criterio';

  @override
  String get type => 'Tipo';

  @override
  String get discreteConfiguration => 'Configuración Discreta';

  @override
  String get howManyValuesCanBeSelected => '¿Cuántos valores se pueden seleccionar?';

  @override
  String get continuousConfiguration => 'Configuración Continua';

  @override
  String get minimumAllowedValue => 'Valor mínimo permitido';

  @override
  String get maximumAllowedValue => 'Valor máximo permitido';

  @override
  String get incrementDecrementStep => 'Incrementar/decrementar paso';

  @override
  String errorSavingCriterion(String error) {
    return 'Error al guardar criterio: $error';
  }

  @override
  String get editCriterion => 'Editar Criterio';

  @override
  String get selectIcon => 'Seleccionar icono';

  @override
  String get selectEmoji => 'Seleccionar emoji';

  @override
  String get icons => 'Iconos';

  @override
  String get emojis => 'Emojis';

  @override
  String get selectColor => 'Seleccionar color';

  @override
  String get noCriteriaToRate => 'No hay criterios para calificar';

  @override
  String get thisTaskHasNoCriteriaAssigned => 'Esta tarea no tiene criterios asignados.';

  @override
  String errorSavingRatings(String error) {
    return 'Error al guardar calificaciones: $error';
  }

  @override
  String get skip => 'Saltar';

  @override
  String get save => 'Guardar';

  @override
  String rangeXToXStepY(double minValue, double maxValue, double stepValue) {
    return 'Rango: $minValue - $maxValue (Paso: $stepValue)';
  }

  @override
  String rateTask(String taskName) {
    return 'Calificar Tarea: $taskName';
  }

  @override
  String selectUpToXValues(int selectionLimit) {
    return 'Seleccionar hasta $selectionLimit valores';
  }

  @override
  String get swipeToStart => 'Desliza para iniciar';
}
