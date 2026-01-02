import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app/theme/app_theme.dart';
import '../../core/models/session.dart';
import '../../core/models/task.dart';
import '../../core/services/session_service.dart';
import '../../core/constants/icons.dart';
import '../../features/navigation/main_navigation_screen.dart';
import 'widgets/rate_task_widget.dart';

/// Active Task Screen
class ActiveTaskScreen extends ConsumerStatefulWidget {
  const ActiveTaskScreen({super.key});

  @override
  ConsumerState<ActiveTaskScreen> createState() => _ActiveTaskScreenState();
}

class _ActiveTaskScreenState extends ConsumerState<ActiveTaskScreen> {
  DateTime? _customEndDateTime;
  bool _useCustomEndTime = false;

  @override
  Widget build(BuildContext context) {
    final activeSession = ref.watch(activeSessionProvider);
    final activeTaskAsync = ref.watch(_activeTaskProvider);

    if (activeSession == null) {
      return _buildNoActiveSession(context);
    }

    return activeTaskAsync.when(
      data: (task) {
        if (task == null) {
          return _buildNoActiveSession(context);
        }
        return _buildContent(context, activeSession, task);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => _buildNoActiveSession(context),
    );
  }

  Widget _buildNoActiveSession(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timer_off,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: AppTheme.spacingL),
            Text(
              'No Active Task',
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: AppTheme.spacingS),
            Text(
              'Start a task from the List of Tasks to track your time.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppTheme.spacingXL),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to List of Tasks tab (index 1)
                final mainNavState = MainNavigationScreenState.of(context);
                if (mainNavState != null) {
                  mainNavState.switchToTab(1);
                }
              },
              icon: const Icon(Icons.list),
              label: Text(l10n.listOfTasks),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    Session session,
    Task task,
  ) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final now = DateTime.now();
    final endDateTime = _useCustomEndTime && _customEndDateTime != null
        ? _customEndDateTime!
        : now;

    // Get icon
    IconData iconData = Icons.task;
    try {
      final iconIndex = int.tryParse(task.icon);
      if (iconIndex != null) {
        iconData = AppIcons.getIcon(iconIndex) ?? Icons.task;
      }
    } catch (e) {
      iconData = Icons.task;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.activeTask),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Task Info
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppTheme.spacingM),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: theme.colorScheme.primaryContainer,
                      child: Icon(
                        iconData,
                        size: 32,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(width: AppTheme.spacingM),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            task.name,
                            style: theme.textTheme.headlineSmall,
                          ),
                          if (task.motto != null && task.motto!.isNotEmpty) ...[
                            const SizedBox(height: AppTheme.spacingS),
                            Text(
                              task.motto!,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: AppTheme.spacingL),

            // Start DateTime Picker
            Card(
              child: ListTile(
                leading: const Icon(Icons.play_arrow),
                title: const Text('Start Time'),
                subtitle: Text(
                  _formatDateTime(session.startDateTime),
                  style: theme.textTheme.bodyLarge,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => _showStartDateTimePicker(context, session),
                ),
              ),
            ),

            const SizedBox(height: AppTheme.spacingM),

            // End DateTime Picker
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.stop),
                    title: const Text('End Time'),
                    subtitle: Text(
                      _formatDateTime(endDateTime),
                      style: theme.textTheme.bodyLarge,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Switch(
                          value: _useCustomEndTime,
                          onChanged: (value) {
                            setState(() {
                              _useCustomEndTime = value;
                              if (value && _customEndDateTime == null) {
                                _customEndDateTime = now;
                              }
                            });
                          },
                        ),
                        if (_useCustomEndTime)
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _showEndDateTimePicker(context),
                          ),
                      ],
                    ),
                  ),
                  if (!_useCustomEndTime)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.spacingM,
                        vertical: AppTheme.spacingS,
                      ),
                      child: Text(
                        'Using current time (updates in real-time)',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: AppTheme.spacingXL),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _handleDiscard(context),
                    icon: const Icon(Icons.cancel),
                    label: const Text('Discard'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppTheme.spacingM,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppTheme.spacingM),
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    onPressed: () => _handleStop(context, endDateTime),
                    icon: const Icon(Icons.stop_circle),
                    label: const Text('Stop'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppTheme.spacingM,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showStartDateTimePicker(
    BuildContext context,
    Session session,
  ) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: session.startDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(session.startDateTime),
    );
    if (time == null) return;

    final newDateTime = DateTime(
      picked.year,
      picked.month,
      picked.day,
      time.hour,
      time.minute,
    );

    final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
    final updatedSession = session.copyWith(startDateTime: newDateTime);
    await activeSessionNotifier.updateSession(updatedSession);
  }

  Future<void> _showEndDateTimePicker(BuildContext context) async {
    final activeSession = ref.read(activeSessionProvider);
    if (activeSession == null) return;
    
    final initialDate = _customEndDateTime ?? DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: activeSession.startDateTime,
      lastDate: DateTime.now().add(const Duration(days: 1)),
    );
    if (picked == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initialDate),
    );
    if (time == null) return;

    setState(() {
      _customEndDateTime = DateTime(
        picked.year,
        picked.month,
        picked.day,
        time.hour,
        time.minute,
      );
    });
  }

  Future<void> _handleStop(BuildContext context, DateTime endDateTime) async {
    final activeSession = ref.read(activeSessionProvider);
    if (activeSession == null) return;

    // Validate end time is after start time
    if (endDateTime.isBefore(activeSession.startDateTime)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('End time must be after start time'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    try {
      final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
      final stoppedSession = await activeSessionNotifier.stopSession(endDateTime);

      if (mounted) {
        // Show rate task widget
        final task = await activeSessionNotifier.getActiveTask();
        if (task != null) {
          await RateTaskWidget.show(
            context,
            session: stoppedSession,
            task: task,
          );
        }

        // Navigate to List of Tasks tab - use a provider or event system
        // For now, just let the user manually switch tabs
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error stopping session: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    }
  }

  Future<void> _handleDiscard(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Discard Session'),
        content: const Text(
          'Are you sure you want to discard this session? It will not be saved.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Discard'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      try {
        final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
        await activeSessionNotifier.discardSession();

        // Navigate to List of Tasks tab - use a provider or event system
        // For now, just let the user manually switch tabs
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error discarding session: $e'),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        }
      }
    }
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
        '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}

/// Provider for active task
final _activeTaskProvider = FutureProvider<Task?>((ref) async {
  final activeSession = ref.watch(activeSessionProvider);
  if (activeSession == null) return null;
  
  final taskRepository = ref.watch(taskRepositoryProvider);
  return await taskRepository.getTaskById(activeSession.taskId);
});

