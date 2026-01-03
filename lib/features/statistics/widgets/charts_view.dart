import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/models/models.dart';
import '../../../core/repositories/task_repository.dart';
import '../../../core/repositories/criterion_repository.dart';
import 'time_period_filter.dart';
import 'history_view.dart';

/// Charts view showing various visualizations
class ChartsView extends ConsumerStatefulWidget {
  const ChartsView({super.key});

  @override
  ConsumerState<ChartsView> createState() => _ChartsViewState();
}

class _ChartsViewState extends ConsumerState<ChartsView> {
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

        if (sessions.isEmpty) {
          return _buildEmptyState(context, l10n);
        }

        return FutureBuilder<Map<String, Task>>(
          future: _loadTasks(taskRepository, sessions),
          builder: (context, tasksSnapshot) {
            if (tasksSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            final tasks = tasksSnapshot.data ?? {};

            return FutureBuilder<Map<String, Criterion>>(
              future: _loadCriteria(criterionRepository, sessions, tasks),
              builder: (context, criteriaSnapshot) {
                if (criteriaSnapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                final criteria = criteriaSnapshot.data ?? {};

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

                    // Charts list
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(AppTheme.spacingM),
                        children: [
                          _buildTimeSpentPerTaskChart(
                              context, sessions, tasks),
                          const SizedBox(height: AppTheme.spacingL),
                          _buildTaskFrequencyChart(context, sessions),
                          const SizedBox(height: AppTheme.spacingL),
                          if (sessions.any((s) => s.ratings.isNotEmpty))
                            _buildCriterionRatingsChart(
                                context, sessions, tasks, criteria),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
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
            Icons.bar_chart,
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

  Widget _buildTimeSpentPerTaskChart(
    BuildContext context,
    List<Session> sessions,
    Map<String, Task> tasks,
  ) {
    final theme = Theme.of(context);

    // Calculate time spent per task
    final taskDurations = <String, Duration>{};
    for (final session in sessions) {
      final duration = session.endDateTime.difference(session.startDateTime);
      taskDurations[session.taskId] =
          (taskDurations[session.taskId] ?? Duration.zero) + duration;
    }

    // Sort by duration (descending) and take top 10
    final sortedTasks = taskDurations.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final topTasks = sortedTasks.take(10).toList();

    if (topTasks.isEmpty) {
      return const SizedBox.shrink();
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Time Spent per Task',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: AppTheme.spacingM),
            SizedBox(
              height: 300,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: topTasks.first.value.inMinutes.toDouble(),
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: (_) => theme.colorScheme.surface,
                      tooltipRoundedRadius: 8,
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= 0 && index < topTasks.length) {
                            final task = tasks[topTasks[index].key];
                            final name = task?.name ?? 'Unknown';
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                name.length > 10 ? '${name.substring(0, 10)}...' : name,
                                style: theme.textTheme.bodySmall,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 40,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final minutes = value.toInt();
                          if (minutes >= 60) {
                            final hours = minutes ~/ 60;
                            final mins = minutes % 60;
                            return Text(
                              '${hours}h${mins > 0 ? ' ${mins}m' : ''}',
                              style: theme.textTheme.bodySmall,
                            );
                          }
                          return Text(
                            '${minutes}m',
                            style: theme.textTheme.bodySmall,
                          );
                        },
                        reservedSize: 50,
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: topTasks.first.value.inMinutes / 5,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: theme.colorScheme.outline.withValues(alpha: 0.1),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  barGroups: topTasks.asMap().entries.map((entry) {
                    final index = entry.key;
                    final taskEntry = entry.value;
                    return BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: taskEntry.value.inMinutes.toDouble(),
                          color: theme.colorScheme.primary,
                          width: 20,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(4),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskFrequencyChart(
    BuildContext context,
    List<Session> sessions,
  ) {
    final theme = Theme.of(context);

    // Group sessions by date
    final sessionsByDate = <DateTime, int>{};
    for (final session in sessions) {
      final date = DateTime(
        session.startDateTime.year,
        session.startDateTime.month,
        session.startDateTime.day,
      );
      sessionsByDate[date] = (sessionsByDate[date] ?? 0) + 1;
    }

    // Sort by date
    final sortedDates = sessionsByDate.keys.toList()..sort();
    if (sortedDates.isEmpty) {
      return const SizedBox.shrink();
    }

    // Take last 30 days or all if less
    final displayDates = sortedDates.length > 30
        ? sortedDates.sublist(sortedDates.length - 30)
        : sortedDates;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task Frequency Over Time',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: AppTheme.spacingM),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      getTooltipColor: (_) => theme.colorScheme.surface,
                      tooltipRoundedRadius: 8,
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: theme.colorScheme.outline.withValues(alpha: 0.1),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= 0 &&
                              index < displayDates.length &&
                              index % (displayDates.length ~/ 5) == 0) {
                            final date = displayDates[index];
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                DateFormat('MMM d').format(date),
                                style: theme.textTheme.bodySmall,
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 40,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: theme.textTheme.bodySmall,
                          );
                        },
                        reservedSize: 40,
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: displayDates.asMap().entries.map((entry) {
                        final index = entry.key;
                        final date = entry.value;
                        return FlSpot(
                          index.toDouble(),
                          sessionsByDate[date]!.toDouble(),
                        );
                      }).toList(),
                      isCurved: true,
                      color: theme.colorScheme.primary,
                      barWidth: 3,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        color: theme.colorScheme.primary.withValues(alpha: 0.1),
                      ),
                    ),
                  ],
                  minY: 0,
                  maxY: sessionsByDate.values.reduce((a, b) => a > b ? a : b)
                          .toDouble() +
                      1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCriterionRatingsChart(
    BuildContext context,
    List<Session> sessions,
    Map<String, Task> tasks,
    Map<String, Criterion> criteria,
  ) {
    final theme = Theme.of(context);

    // Collect all ratings
    final criterionRatings = <String, List<double>>{};
    for (final session in sessions) {
      for (final entry in session.ratings.entries) {
        final criterion = criteria[entry.key];
        if (criterion == null) continue;

        entry.value.when(
          discrete: (values) {
            // For discrete, count as 1 per value
            if (!criterionRatings.containsKey(entry.key)) {
              criterionRatings[entry.key] = [];
            }
            criterionRatings[entry.key]!.add(values.length.toDouble());
          },
          continuous: (value) {
            if (!criterionRatings.containsKey(entry.key)) {
              criterionRatings[entry.key] = [];
            }
            criterionRatings[entry.key]!.add(value);
          },
        );
      }
    }

    if (criterionRatings.isEmpty) {
      return const SizedBox.shrink();
    }

    // Calculate average rating per criterion
    final avgRatings = criterionRatings.map((key, values) {
      final avg = values.reduce((a, b) => a + b) / values.length;
      return MapEntry(key, avg);
    });

    // Sort by average (descending) and take top 5
    final sortedCriteria = avgRatings.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final topCriteria = sortedCriteria.take(5).toList();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Average Criterion Ratings',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: AppTheme.spacingM),
            SizedBox(
              height: 300,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: topCriteria.first.value * 1.2,
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: (_) => theme.colorScheme.surface,
                      tooltipRoundedRadius: 8,
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= 0 && index < topCriteria.length) {
                            final criterion =
                                criteria[topCriteria[index].key];
                            final name = criterion?.name ?? 'Unknown';
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                name.length > 10
                                    ? '${name.substring(0, 10)}...'
                                    : name,
                                style: theme.textTheme.bodySmall,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 40,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toStringAsFixed(1),
                            style: theme.textTheme.bodySmall,
                          );
                        },
                        reservedSize: 50,
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: theme.colorScheme.outline.withValues(alpha: 0.1),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  barGroups: topCriteria.asMap().entries.map((entry) {
                    final index = entry.key;
                    final criterionEntry = entry.value;
                    return BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: criterionEntry.value,
                          color: theme.colorScheme.secondary,
                          width: 20,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(4),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
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

    final criteriaList =
        await repository.getCriteriaByIds(criterionIds.toList());
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
