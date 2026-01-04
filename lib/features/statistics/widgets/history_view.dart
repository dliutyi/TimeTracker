import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/models/models.dart';
import '../../../core/services/session_service.dart';
import 'time_period_filter.dart';
import 'session_item.dart';

/// Provider for all tasks (for filtering) - exported for use in charts view
/// This includes disabled tasks to ensure sessions can always find their tasks
final allTasksProvider = FutureProvider<List<Task>>((ref) async {
  final taskRepository = ref.watch(taskRepositoryProvider);
  return await taskRepository.getAllTasks();
});

/// Provider for tasks by IDs - ensures we can load tasks for sessions even if they're disabled
final tasksByIdsProvider = FutureProvider.family<List<Task>, List<String>>((ref, taskIds) async {
  if (taskIds.isEmpty) return [];
  final taskRepository = ref.watch(taskRepositoryProvider);
  final tasks = <Task>[];
  for (final taskId in taskIds) {
    final task = await taskRepository.getTaskById(taskId);
    if (task != null) {
      tasks.add(task);
    }
  }
  return tasks;
});

/// Provider for all criteria (for live updates) - exported for use in charts view
final allCriteriaProvider = FutureProvider<List<Criterion>>((ref) async {
  final criterionRepository = ref.watch(criterionRepositoryProvider);
  return await criterionRepository.getAllCriteria();
});

/// Provider for all sessions - watches active session to auto-refresh
final allSessionsProvider = FutureProvider<List<Session>>((ref) async {
  // Watch active session to trigger refresh when it changes
  ref.watch(activeSessionProvider);
  final sessionRepository = ref.watch(sessionRepositoryProvider);
  return await sessionRepository.getAllSessions();
});

/// Provider for sessions by date range - watches active session to auto-refresh
final sessionsByDateRangeProvider = FutureProvider.family<List<Session>, ({DateTime start, DateTime end})>((ref, dateRange) async {
  // Watch active session to trigger refresh when it changes
  ref.watch(activeSessionProvider);
  final sessionRepository = ref.watch(sessionRepositoryProvider);
  return await sessionRepository.getSessionsByDateRange(dateRange.start, dateRange.end);
});

/// History view showing chronological list of sessions
class HistoryView extends ConsumerStatefulWidget {
  const HistoryView({super.key});

  @override
  ConsumerState<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends ConsumerState<HistoryView> {
  TimePeriod _selectedPeriod = TimePeriod.all;
  String? _selectedTaskId;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tasksAsync = ref.watch(allTasksProvider);
    final criteriaAsync = ref.watch(allCriteriaProvider);

    // Calculate date range based on selected period
    final dateRange = _getDateRange(_selectedPeriod);

    // Use provider for live updates
    final sessionsAsync = dateRange != null
        ? ref.watch(sessionsByDateRangeProvider(dateRange))
        : ref.watch(allSessionsProvider);

    return sessionsAsync.when(
      data: (sessions) {
        // Filter out active sessions (where endDateTime equals startDateTime or difference < 1 second)
        var filteredSessions = sessions.where((session) {
          final diff = session.endDateTime.difference(session.startDateTime).abs();
          return diff.inSeconds >= 1; // Only include stopped sessions
        }).toList();

        // Filter by selected task
        if (_selectedTaskId != null) {
          filteredSessions = filteredSessions.where((s) => s.taskId == _selectedTaskId).toList();
        }

        return Column(
          children: [
            // Filters
            Column(
              children: [
                // Time period filter
                TimePeriodFilter(
                  selectedPeriod: _selectedPeriod,
                  onPeriodChanged: (period) {
                    setState(() {
                      _selectedPeriod = period;
                    });
                  },
                ),
                // Task filter
                _buildTaskFilter(context, l10n, tasksAsync),
              ],
            ),

            // Sessions list
            Expanded(
              child: filteredSessions.isEmpty
                  ? _buildEmptyState(context, l10n)
                  : _buildSessionsList(context, filteredSessions, tasksAsync, criteriaAsync),
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Text(
          'Error: $error',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
        ),
      ),
    );
  }

  Widget _buildSessionsList(
    BuildContext context,
    List<Session> sessions,
    AsyncValue<List<Task>> tasksAsync,
    AsyncValue<List<Criterion>> criteriaAsync,
  ) {
    // Simply use allTasksProvider which includes all tasks (even disabled)
    return tasksAsync.when(
      data: (allTasks) {
        final tasksMap = <String, Task>{for (var t in allTasks) t.id: t};
        
        return criteriaAsync.when(
          data: (allCriteria) {
            final criteriaMap = <String, Criterion>{
              for (var c in allCriteria) c.id: c
            };

            return ListView.builder(
              padding: const EdgeInsets.all(AppTheme.spacingM),
              itemCount: sessions.length,
              itemBuilder: (context, index) {
                final session = sessions[index];
                final task = tasksMap[session.taskId];

                return SessionItem(
                  session: session,
                  task: task,
                  criteria: criteriaMap,
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Text(
              'Error loading criteria: $error',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Text(
          'Error loading tasks: $error',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
        ),
      ),
    );
  }

  Widget _buildTaskFilter(
    BuildContext context,
    AppLocalizations l10n,
    AsyncValue<List<Task>> tasksAsync,
  ) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.spacingM,
        vertical: AppTheme.spacingS,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
      ),
      child: tasksAsync.when(
        data: (tasks) {
          // Add "All Tasks" option
          final allTasksOption = <Task?>[null, ...tasks];
          return DropdownButton<Task?>(
            value: _selectedTaskId == null
                ? null
                : tasks.firstWhere(
                    (t) => t.id == _selectedTaskId,
                    orElse: () => tasks.first,
                  ),
            isExpanded: true,
            hint: Text(l10n.filterByTask),
            items: allTasksOption.map((task) {
              return DropdownMenuItem<Task?>(
                value: task,
                child: Text(
                  task == null ? l10n.allTasks : task.name,
                ),
              );
            }).toList(),
            onChanged: (selectedTask) {
              setState(() {
                _selectedTaskId = selectedTask?.id;
              });
            },
          );
        },
        loading: () => const SizedBox(
          height: 48,
          child: Center(child: CircularProgressIndicator()),
        ),
        error: (error, stack) => Text(
          'Error: $error',
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.error,
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.history,
            size: 64,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: AppTheme.spacingM),
          Text(
            l10n.noSessions,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: AppTheme.spacingS),
          Text(
            _selectedPeriod == TimePeriod.all
                ? l10n.noSessionsDescription
                : l10n.noSessionsForPeriod,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }


  ({DateTime start, DateTime end})? _getDateRange(TimePeriod period) {
    final now = DateTime.now();
    switch (period) {
      case TimePeriod.day:
        final start = DateTime(now.year, now.month, now.day);
        final end = start.add(const Duration(days: 1)).subtract(
              const Duration(milliseconds: 1),
            );
        return (start: start, end: end);
      case TimePeriod.week:
        final start = now.subtract(Duration(days: now.weekday - 1));
        final weekStart = DateTime(start.year, start.month, start.day);
        final end = weekStart.add(const Duration(days: 7)).subtract(
              const Duration(milliseconds: 1),
            );
        return (start: weekStart, end: end);
      case TimePeriod.month:
        final start = DateTime(now.year, now.month, 1);
        final end = DateTime(now.year, now.month + 1, 1)
            .subtract(const Duration(milliseconds: 1));
        return (start: start, end: end);
      case TimePeriod.year:
        final start = DateTime(now.year, 1, 1);
        final end = DateTime(now.year + 1, 1, 1)
            .subtract(const Duration(milliseconds: 1));
        return (start: start, end: end);
      case TimePeriod.all:
        return null;
    }
  }
}

/// Time period filter options
enum TimePeriod {
  day,
  week,
  month,
  year,
  all,
}

