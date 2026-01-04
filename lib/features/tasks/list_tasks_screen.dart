import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../../app/theme/app_theme.dart';
import '../../shared/widgets/speech_text_field.dart';
import '../../core/repositories/repository_providers.dart';
import '../../core/repositories/settings_repository.dart';
import '../../core/models/task.dart';
import '../../core/services/frequency_service.dart';
import '../../core/utils/responsive.dart';
import 'widgets/task_item.dart';
import 'widgets/add_edit_task_widget.dart';

/// Provider for general motto
final generalMottoProvider =
    StateNotifierProvider<GeneralMottoNotifier, String>((ref) {
      final settingsRepository = ref.watch(settingsRepositoryProvider);
      return GeneralMottoNotifier(settingsRepository);
    });

/// Notifier for general motto
class GeneralMottoNotifier extends StateNotifier<String> {
  final SettingsRepository _settingsRepository;
  static const String _mottoKey = 'general_motto';

  GeneralMottoNotifier(this._settingsRepository) : super('') {
    _loadMotto();
  }

  Future<void> _loadMotto() async {
    final motto = await _settingsRepository.getSetting(_mottoKey);
    if (motto != null) {
      state = motto;
    }
  }

  Future<void> setMotto(String motto) async {
    state = motto;
    await _settingsRepository.setSetting(_mottoKey, motto);
  }
}

/// List of Tasks screen
class ListTasksScreen extends ConsumerStatefulWidget {
  const ListTasksScreen({super.key});

  @override
  ConsumerState<ListTasksScreen> createState() => _ListTasksScreenState();
}

class _ListTasksScreenState extends ConsumerState<ListTasksScreen> {
  final TextEditingController _mottoController = TextEditingController();
  DateTime _currentDateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Update date/time every minute
    _updateDateTime();
    // Load motto
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final motto = ref.read(generalMottoProvider);
      _mottoController.text = motto;
    });
  }

  void _updateDateTime() {
    setState(() {
      _currentDateTime = DateTime.now();
    });
    // Schedule next update in 10 seconds
    Future.delayed(const Duration(seconds: 10), _updateDateTime);
  }

  @override
  void dispose() {
    _mottoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final motto = ref.watch(generalMottoProvider);
    final tasksAsync = ref.watch(tasksProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            _buildHeader(context, theme, l10n, motto),

            // Task List
            Expanded(
              child: tasksAsync.when(
                data: (tasks) {
                  // If refreshing, show loading indicator instead of empty state
                  // This prevents showing "No tasks" briefly when provider is invalidated
                  if (tasksAsync.isRefreshing) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (tasks.isEmpty) {
                    return _buildEmptyState(context, theme, l10n);
                  }
                  final padding = Responsive.getPadding(context);
                  return ListView.builder(
                    padding: EdgeInsets.only(
                      left: padding.left,
                      right: padding.right,
                      top: padding.top,
                      bottom: 0, // Remove bottom padding to avoid weird spacing
                    ),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: AppTheme.animationMedium,
                        curve: Curves.easeOut,
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 20 * (1 - value)),
                              child: child,
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                            bottom: AppTheme.spacingS,
                          ),
                          child: TaskItem(task: tasks[index]),
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error:
                    (error, stack) =>
                        Center(child: Text(l10n.error(error.toString()))),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await AddEditTaskWidget.show(context);
          if (result != null && mounted) {
            // Refresh tasks list
            ref.invalidate(tasksProvider);
          }
        },
        child: const Icon(Icons.add),
        heroTag: 'add_task_button',
        tooltip: l10n.addTask,
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
    String motto,
  ) {
    final dayOfWeek = DateFormat(
      'EEEE',
      Localizations.localeOf(context).toString(),
    ).format(_currentDateTime);
    final formattedDayOfWeek =
        dayOfWeek[0].toUpperCase() + dayOfWeek.substring(1);

    if (mounted && _mottoController.text != motto) {
      _mottoController.text = motto;
    }

    return Container(
      padding: const EdgeInsets.all(AppTheme.spacingM),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date and Time in two columns
          Row(
            children: [
              // Calendar icon and day of week
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 20,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: AppTheme.spacingS),
                    Text(
                      formattedDayOfWeek,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              // Clock icon and current time
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 20,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: AppTheme.spacingS),
                    Text(
                      DateFormat(
                        'HH:mm',
                        Localizations.localeOf(context).toString(),
                      ).format(_currentDateTime),
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppTheme.spacingM),

          // General Motto
          SpeechTextField(
            label: l10n.generalMotto,
            controller: _mottoController,
            onChanged: (value) {
              ref.read(generalMottoProvider.notifier).setMotto(value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.task_outlined,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: AppTheme.spacingL),
            Text(l10n.noTasks, style: theme.textTheme.headlineSmall),
            const SizedBox(height: AppTheme.spacingS),
            Text(
              l10n.createFirstTask,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

/// Provider for tasks list with frequency sorting
final tasksProvider = FutureProvider<List<Task>>((ref) async {
  final taskRepository = ref.watch(taskRepositoryProvider);
  final sessionRepository = ref.watch(sessionRepositoryProvider);
  final frequencyService = FrequencyService(sessionRepository);

  // Get all tasks (including disabled)
  final allTasks = await taskRepository.getAllTasks();

  // Sort by frequency
  return await frequencyService.sortTasksByFrequency(allTasks);
});
