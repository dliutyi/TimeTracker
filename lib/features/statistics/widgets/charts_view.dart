import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/models.dart';
import 'time_period_filter.dart';
import 'history_view.dart'
    show
        allTasksProvider,
        allCriteriaProvider,
        allSessionsProvider,
        sessionsByDateRangeProvider,
        TimePeriod;

/// Charts view showing various visualizations
class ChartsView extends ConsumerStatefulWidget {
  const ChartsView({super.key});

  @override
  ConsumerState<ChartsView> createState() => _ChartsViewState();
}

class _ChartsViewState extends ConsumerState<ChartsView> {
  TimePeriod _selectedPeriod = TimePeriod.week;
  String? _selectedTaskId;
  String? _selectedCriterionId;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tasksAsync = ref.watch(allTasksProvider);
    final criteriaAsync = ref.watch(allCriteriaProvider);

    // Calculate date range based on selected period
    final dateRange = _getDateRange(_selectedPeriod);

    // Use provider for live updates
    final sessionsAsync =
        dateRange != null
            ? ref.watch(sessionsByDateRangeProvider(dateRange))
            : ref.watch(allSessionsProvider);

    // Always get all sessions for activity chart (not filtered by period)
    final allSessionsForActivityAsync = ref.watch(allSessionsProvider);

    return allSessionsForActivityAsync.when(
      data: (allSessionsForActivity) {
        // Filter out active sessions from activity chart as well
        final filteredAllSessionsForActivity =
            allSessionsForActivity.where((session) {
              final diff =
                  session.endDateTime.difference(session.startDateTime).abs();
              return diff.inSeconds >= 1; // Only include stopped sessions
            }).toList();

        return sessionsAsync.when(
          data: (sessions) {
            // Filter out active sessions (where endDateTime equals startDateTime or difference < 1 second)
            var filteredSessions =
                sessions.where((session) {
                  final diff =
                      session.endDateTime
                          .difference(session.startDateTime)
                          .abs();
                  return diff.inSeconds >= 1; // Only include stopped sessions
                }).toList();

            // Filter by selected task
            if (_selectedTaskId != null) {
              filteredSessions =
                  filteredSessions
                      .where((s) => s.taskId == _selectedTaskId)
                      .toList();
            }

            if (filteredSessions.isEmpty &&
                filteredAllSessionsForActivity.isEmpty) {
              return _buildEmptyState(context, l10n);
            }

            return tasksAsync.when(
              data: (allTasks) {
                final tasksMap = <String, Task>{
                  for (var t in allTasks) t.id: t,
                };
                return criteriaAsync.when(
                  data: (allCriteria) {
                    final criteriaMap = <String, Criterion>{
                      for (var c in allCriteria) c.id: c,
                    };

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
                            // Task and criterion filters
                            _buildChartFilters(
                              context,
                              l10n,
                              tasksAsync,
                              criteriaAsync,
                            ),
                          ],
                        ),

                        // Charts list
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.all(AppTheme.spacingM),
                            children: [
                              // Activity chart uses all sessions (not filtered by period) to show full year view
                              // But still excludes active sessions
                              // _buildActivityChart(
                              //   context,
                              //   l10n,
                              //   filteredAllSessionsForActivity,
                              //   tasksMap,
                              // ),
                              // const SizedBox(height: AppTheme.spacingL),
                              _buildTimeSpentPerTaskChart(
                                context,
                                l10n,
                                filteredSessions,
                                tasksMap,
                              ),
                              const SizedBox(height: AppTheme.spacingL),
                              _buildTaskFrequencyChart(
                                context,
                                l10n,
                                filteredSessions,
                              ),
                              const SizedBox(height: AppTheme.spacingL),
                              if (filteredSessions.any(
                                (s) => s.ratings.isNotEmpty,
                              ))
                                _buildCriterionRatingsChart(
                                  context,
                                  l10n,
                                  filteredSessions,
                                  tasksMap,
                                  criteriaMap,
                                  _selectedCriterionId,
                                ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
                  error:
                      (error, stack) => Center(
                        child: Text(
                          l10n.errorLoadingCriteria(error.toString()),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (error, stack) => Center(
                    child: Text(
                      l10n.errorLoadingTasks(error.toString()),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error:
              (error, stack) => Center(
                child: Text(
                  l10n.errorLoadingSessions(error.toString()),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error:
          (error, stack) => Center(
            child: Text(
              l10n.errorLoadingAllSessions(error.toString()),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
    );
  }

  Widget _buildChartFilters(
    BuildContext context,
    AppLocalizations l10n,
    AsyncValue<List<Task>> tasksAsync,
    AsyncValue<List<Criterion>> criteriaAsync,
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
      child: Row(
        children: [
          // Task filter
          Expanded(
            child: tasksAsync.when(
              data: (tasks) {
                final allTasksOption = <Task?>[null, ...tasks];
                return DropdownButton<Task?>(
                  value:
                      _selectedTaskId == null
                          ? null
                          : (tasks
                              .where((t) => t.id == _selectedTaskId)
                              .firstOrNull),
                  isExpanded: true,
                  hint: Text(l10n.filterByTask),
                  items:
                      allTasksOption.map((task) {
                        return DropdownMenuItem<Task?>(
                          value: task,
                          child: Text(
                            task == null ? l10n.allTasks : task.name,
                            overflow: TextOverflow.ellipsis,
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
              loading:
                  () => const SizedBox(
                    height: 48,
                    child: Center(child: CircularProgressIndicator()),
                  ),
              error:
                  (error, stack) => Text(
                    l10n.error(error.toString()),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
            ),
          ),
          const SizedBox(width: AppTheme.spacingM),
          // Criterion filter
          Expanded(
            child: criteriaAsync.when(
              data: (criteria) {
                final allCriteriaOption = <Criterion?>[null, ...criteria];
                return DropdownButton<Criterion?>(
                  value:
                      _selectedCriterionId == null
                          ? null
                          : (criteria
                              .where((c) => c.id == _selectedCriterionId)
                              .firstOrNull),
                  isExpanded: true,
                  hint: Text(l10n.filterByCriterion),
                  items:
                      allCriteriaOption.map((criterion) {
                        return DropdownMenuItem<Criterion?>(
                          value: criterion,
                          child: Text(
                            criterion == null
                                ? l10n.allCriteria
                                : criterion.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                  onChanged: (selectedCriterion) {
                    setState(() {
                      _selectedCriterionId = selectedCriterion?.id;
                    });
                  },
                );
              },
              loading:
                  () => const SizedBox(
                    height: 48,
                    child: Center(child: CircularProgressIndicator()),
                  ),
              error:
                  (error, stack) => Text(
                    l10n.error(error.toString()),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
            ),
          ),
        ],
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
            Icons.bar_chart,
            size: 64,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: AppTheme.spacingM),
          Text(l10n.noSessions, style: theme.textTheme.titleMedium),
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
    AppLocalizations l10n,
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
    final sortedTasks =
        taskDurations.entries.toList()
          ..sort((a, b) => b.value.compareTo(a.value));
    final topTasks = sortedTasks.take(10).toList();

    if (topTasks.isEmpty) {
      return const SizedBox.shrink();
    }

    final maxMinutes = topTasks.first.value.inMinutes;
    final interval = maxMinutes > 0 ? (maxMinutes / 5).ceil().toDouble() : 1.0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.timeSpentPerTask, style: theme.textTheme.titleLarge),
            const SizedBox(height: AppTheme.spacingM),
            SizedBox(
              height: 300,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: maxMinutes.toDouble(),
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
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= 0 && index < topTasks.length) {
                            final task = tasks[topTasks[index].key];
                            final name = task?.name ?? l10n.unknownTask;
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Transform.rotate(
                                angle: -0.5,
                                child: Text(
                                  name.length > 8
                                      ? '${name.substring(0, 8)}...'
                                      : name,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 50,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: interval,
                        getTitlesWidget: (value, meta) {
                          final minutes = value.toInt();
                          if (minutes >= 60) {
                            final hours = minutes ~/ 60;
                            final mins = minutes % 60;
                            return Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Text(
                                '${hours}h${mins > 0 ? '${mins}m' : ''}',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontSize: 10,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            );
                          }
                          return Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Text(
                              '${minutes}m',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          );
                        },
                        reservedSize: 60,
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
                    horizontalInterval: interval,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: theme.colorScheme.outline.withValues(alpha: 0.1),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  barGroups:
                      topTasks.asMap().entries.map((entry) {
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

  Widget _buildActivityChart(
    BuildContext context,
    AppLocalizations l10n,
    List<Session> sessions,
    Map<String, Task> tasks,
  ) {
    final theme = Theme.of(context);

    // Group sessions by date using string keys for reliable matching
    final sessionsByDate = <String, int>{};
    for (final session in sessions) {
      // Normalize to date only (remove time component)
      final date = DateTime(
        session.startDateTime.year,
        session.startDateTime.month,
        session.startDateTime.day,
      );
      final dateKey = '${date.year}-${date.month}-${date.day}';
      sessionsByDate[dateKey] = (sessionsByDate[dateKey] ?? 0) + 1;
    }

    // Get last 52 weeks (1 year) starting from Monday
    final now = DateTime.now();
    final weeks = <List<int>>[];

    // Find the Monday of the current week
    // DateTime.weekday: 1 = Monday, 7 = Sunday
    final daysFromMonday = (now.weekday - 1) % 7;
    final currentWeekMonday = DateTime(
      now.year,
      now.month,
      now.day,
    ).subtract(Duration(days: daysFromMonday));

    // Generate 52 weeks of data (going back from current week)
    for (int week = 51; week >= 0; week--) {
      final weekStart = currentWeekMonday.subtract(Duration(days: week * 7));
      final weekData = <int>[];
      for (int day = 0; day < 7; day++) {
        final date = weekStart.add(Duration(days: day));
        // Normalize to date only
        final dateOnly = DateTime(date.year, date.month, date.day);
        final dateKey = '${dateOnly.year}-${dateOnly.month}-${dateOnly.day}';
        weekData.add(sessionsByDate[dateKey] ?? 0);
      }
      weeks.add(weekData);
    }

    // Calculate max count for color intensity
    final allCounts = weeks.expand((week) => week).toList();
    if (allCounts.isEmpty) {
      return const SizedBox.shrink();
    }
    final maxCount = allCounts.reduce((a, b) => a > b ? a : b);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.activityChart, style: theme.textTheme.titleLarge),
            const SizedBox(height: AppTheme.spacingM),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Day labels (Monday through Sunday)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'M',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'T',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'W',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'T',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'F',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'S',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: (200 - 20) / 7,
                          child: Center(
                            child: Text(
                              'S',
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 4),
                    // Activity grid
                    Row(
                      children:
                          weeks.asMap().entries.map((weekEntry) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                                  weekEntry.value.asMap().entries.map((
                                    dayEntry,
                                  ) {
                                    final count = dayEntry.value;
                                    final intensity =
                                        maxCount > 0 ? count / maxCount : 0.0;
                                    Color color;
                                    if (intensity == 0) {
                                      color =
                                          theme
                                              .colorScheme
                                              .surfaceContainerHighest;
                                    } else if (intensity < 0.25) {
                                      color = theme.colorScheme.primary
                                          .withValues(alpha: 0.3);
                                    } else if (intensity < 0.5) {
                                      color = theme.colorScheme.primary
                                          .withValues(alpha: 0.5);
                                    } else if (intensity < 0.75) {
                                      color = theme.colorScheme.primary
                                          .withValues(alpha: 0.7);
                                    } else {
                                      color = theme.colorScheme.primary;
                                    }
                                    return Container(
                                      width: 12,
                                      height: 12,
                                      margin: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                        color: color,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    );
                                  }).toList(),
                            );
                          }).toList(),
                    ),
                  ],
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
    AppLocalizations l10n,
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
    final displayDates =
        sortedDates.length > 30
            ? sortedDates.sublist(sortedDates.length - 30)
            : sortedDates;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.taskFrequencyOverTime, style: theme.textTheme.titleLarge),
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
                        interval:
                            displayDates.length > 5
                                ? (displayDates.length / 5).ceil().toDouble()
                                : 1.0,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= 0 && index < displayDates.length) {
                            final date = displayDates[index];
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Transform.rotate(
                                angle: -0.5,
                                child: Text(
                                  DateFormat('MMM d').format(date),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 50,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Text(
                              value.toInt().toString(),
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.right,
                            ),
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
                      spots:
                          displayDates.asMap().entries.map((entry) {
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
                  maxY:
                      sessionsByDate.values
                          .reduce((a, b) => a > b ? a : b)
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
    AppLocalizations l10n,
    List<Session> sessions,
    Map<String, Task> tasks,
    Map<String, Criterion> criteria,
    String? selectedCriterionId,
  ) {
    final theme = Theme.of(context);

    // Collect all ratings, filter by selected criterion if any
    final criterionRatings = <String, List<double>>{};
    for (final session in sessions) {
      for (final entry in session.ratings.entries) {
        // Filter by selected criterion
        if (selectedCriterionId != null && entry.key != selectedCriterionId) {
          continue;
        }
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
    final sortedCriteria =
        avgRatings.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    final topCriteria = sortedCriteria.take(5).toList();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.averageCriterionRatings,
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
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          final index = value.toInt();
                          if (index >= 0 && index < topCriteria.length) {
                            final criterion = criteria[topCriteria[index].key];
                            final name = criterion?.name ?? l10n.unknown;
                            return Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Transform.rotate(
                                angle: -0.5,
                                child: Text(
                                  name.length > 8
                                      ? '${name.substring(0, 8)}...'
                                      : name,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 10,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                        reservedSize: 50,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval:
                            topCriteria.isNotEmpty
                                ? (topCriteria.first.value * 1.2 / 5)
                                : 1.0,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Text(
                              value.toStringAsFixed(1),
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.right,
                            ),
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
                  barGroups:
                      topCriteria.asMap().entries.map((entry) {
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

  ({DateTime start, DateTime end})? _getDateRange(TimePeriod period) {
    final now = DateTime.now();
    switch (period) {
      case TimePeriod.day:
        final start = DateTime(now.year, now.month, now.day);
        final end = start
            .add(const Duration(days: 1))
            .subtract(const Duration(milliseconds: 1));
        return (start: start, end: end);
      case TimePeriod.week:
        final start = now.subtract(Duration(days: now.weekday - 1));
        final weekStart = DateTime(start.year, start.month, start.day);
        final end = weekStart
            .add(const Duration(days: 7))
            .subtract(const Duration(milliseconds: 1));
        return (start: weekStart, end: end);
      case TimePeriod.month:
        final start = DateTime(now.year, now.month, 1);
        final end = DateTime(
          now.year,
          now.month + 1,
          1,
        ).subtract(const Duration(milliseconds: 1));
        return (start: start, end: end);
      case TimePeriod.year:
        final start = DateTime(now.year, 1, 1);
        final end = DateTime(
          now.year + 1,
          1,
          1,
        ).subtract(const Duration(milliseconds: 1));
        return (start: start, end: end);
      case TimePeriod.all:
        return null;
    }
  }
}
