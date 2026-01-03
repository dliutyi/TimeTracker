import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/models/models.dart';
import '../../../core/repositories/task_repository.dart';
import '../../../core/repositories/criterion_repository.dart';
import 'time_period_filter.dart';
import 'session_item.dart';

/// History view showing chronological list of sessions
class HistoryView extends ConsumerStatefulWidget {
  const HistoryView({super.key});

  @override
  ConsumerState<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends ConsumerState<HistoryView> {
  TimePeriod _selectedPeriod = TimePeriod.all;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final sessionRepository = ref.watch(sessionRepositoryProvider);
    final taskRepository = ref.watch(taskRepositoryProvider);
    final criterionRepository = ref.watch(criterionRepositoryProvider);

    // Calculate date range based on selected period
    final dateRange = _getDateRange(_selectedPeriod);

    return FutureBuilder<List<Session>>(
      future: dateRange != null
          ? sessionRepository.getSessionsByDateRange(
              dateRange.start,
              dateRange.end,
            )
          : sessionRepository.getAllSessions(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          );
        }

        final sessions = snapshot.data ?? [];

        return Column(
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

            // Sessions list
            Expanded(
              child: sessions.isEmpty
                  ? _buildEmptyState(context, l10n)
                  : FutureBuilder<Map<String, Task>>(
                      future: _loadTasks(taskRepository, sessions),
                      builder: (context, tasksSnapshot) {
                        if (tasksSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }

                        final tasks = tasksSnapshot.data ?? {};

                        return FutureBuilder<Map<String, Criterion>>(
                          future: _loadCriteria(
                              criterionRepository, sessions, tasks),
                          builder: (context, criteriaSnapshot) {
                            if (criteriaSnapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }

                            final criteria = criteriaSnapshot.data ?? {};

                            return ListView.builder(
                              padding: const EdgeInsets.all(AppTheme.spacingM),
                              itemCount: sessions.length,
                              itemBuilder: (context, index) {
                                final session = sessions[index];
                                final task = tasks[session.taskId];

                                return SessionItem(
                                  session: session,
                                  task: task,
                                  criteria: criteria,
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        );
      },
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

  Future<Map<String, Task>> _loadTasks(
    TaskRepository repository,
    List<Session> sessions,
  ) async {
    final taskIds = sessions.map((s) => s.taskId).toSet();
    final tasks = <String, Task>{};

    for (final taskId in taskIds) {
      final task = await repository.getTaskById(taskId);
      if (task != null) {
        tasks[taskId] = task;
      }
    }

    return tasks;
  }

  Future<Map<String, Criterion>> _loadCriteria(
    CriterionRepository repository,
    List<Session> sessions,
    Map<String, Task> tasks,
  ) async {
    final criterionIds = <String>{};
    for (final session in sessions) {
      criterionIds.addAll(session.ratings.keys);
      final task = tasks[session.taskId];
      if (task != null) {
        criterionIds.addAll(task.criterionIds);
      }
    }

    if (criterionIds.isEmpty) return {};

    final criteriaList = await repository.getCriteriaByIds(criterionIds.toList());
    return {for (var c in criteriaList) c.id: c};
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

