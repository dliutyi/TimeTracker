import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../../app/theme/app_theme.dart';
import '../../core/models/session.dart';
import '../../core/models/task.dart';
import '../../core/services/session_service.dart';
import '../../core/repositories/repository_providers.dart';
import '../../core/constants/icons.dart';
import '../../features/navigation/main_navigation_screen.dart';
import '../../shared/widgets/color_picker.dart';
import '../../shared/widgets/swipeable_item.dart';
import '../../shared/widgets/confirmation_dialog.dart';
import 'widgets/rate_task_widget.dart';
import '../statistics/widgets/history_view.dart' show allSessionsProvider;

/// Active Task Screen
class ActiveTaskScreen extends ConsumerStatefulWidget {
  const ActiveTaskScreen({super.key});

  @override
  ConsumerState<ActiveTaskScreen> createState() => _ActiveTaskScreenState();
}

class _ActiveTaskScreenState extends ConsumerState<ActiveTaskScreen> {
  DateTime? _customEndDateTime;
  bool _useCustomEndTime = false;
  Timer? _durationTimer;

  @override
  void initState() {
    super.initState();
    // Start timer for live duration updates
    _durationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          // Trigger rebuild to update duration
        });
      }
    });
  }

  @override
  void dispose() {
    _durationTimer?.cancel();
    super.dispose();
  }

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
            Text('No Active Task', style: theme.textTheme.headlineSmall),
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

  Widget _buildContent(BuildContext context, Session session, Task task) {
    final l10n = AppLocalizations.of(context)!;
    final now = DateTime.now();
    final endDateTime =
        _useCustomEndTime && _customEndDateTime != null
            ? _customEndDateTime!
            : now;

    // Calculate duration
    final duration = endDateTime.difference(session.startDateTime);
    final durationString = _formatDuration(duration);

    // Get task color
    final taskColor =
        TaskColors.hexToColor(task.color) ?? const Color(0xFFF0AA11);
    final contrastColor = _getContrastColor(taskColor);
    // Calculate activation color (darker version for visual feedback)
    final activationColor =
        Color.lerp(
          taskColor,
          Colors.black,
          0.2, // 20% darker
        ) ??
        taskColor;

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
      backgroundColor: taskColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Calculate button area height (single swipeable button)
            // Button: padding (spacingL * 2 = 48) + text height (~24) = ~72
            const buttonAreaHeight = 80.0;

            return Column(
              children: [
                // Main content area - scrollable, with bottom padding for buttons
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: AppTheme.spacingL,
                      right: AppTheme.spacingL,
                      top: AppTheme.spacingXL,
                      bottom: buttonAreaHeight, // Space for buttons
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Task duration (centered)
                        Text(
                          durationString,
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: contrastColor,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: AppTheme.spacingXL),

                        // Task icon and name (centered)
                        Icon(iconData, size: 64, color: contrastColor),
                        const SizedBox(height: AppTheme.spacingM),
                        Text(
                          task.name,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: contrastColor,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        // Task motto (centered)
                        if (task.motto != null && task.motto!.isNotEmpty) ...[
                          const SizedBox(height: AppTheme.spacingL),
                          Text(
                            task.motto!,
                            style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              color: contrastColor.withOpacity(0.9),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],

                        const SizedBox(height: AppTheme.spacingXXL),

                        // Start time (editable)
                        _buildTimeRow(
                          context,
                          icon: Icons.play_arrow,
                          label: 'Start Time',
                          dateTime: session.startDateTime,
                          contrastColor: contrastColor,
                          onTap:
                              () => _showStartDateTimePicker(context, session),
                        ),

                        const SizedBox(height: AppTheme.spacingL),

                        // End time (editable)
                        _buildTimeRow(
                          context,
                          icon: Icons.stop,
                          label: 'End Time',
                          dateTime: endDateTime,
                          contrastColor: contrastColor,
                          onTap:
                              _useCustomEndTime
                                  ? () => _showEndDateTimePicker(context)
                                  : null,
                          trailing: Switch(
                            value: _useCustomEndTime,
                            onChanged: (value) {
                              setState(() {
                                _useCustomEndTime = value;
                                if (value && _customEndDateTime == null) {
                                  _customEndDateTime = now;
                                }
                              });
                            },
                            activeColor: contrastColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Action button (docked at bottom) - swipeable with stop and discard actions
                SwipeableItem(
                  rightActions: [
                    SwipeAction(
                      label: l10n.discard,
                      icon: Icons.delete_outline,
                      color: contrastColor,
                      onTap: () async {
                        final confirmed =
                            await ConfirmationDialog.showDeleteConfirmation(
                              context,
                              title: l10n.discardSession,
                              message: l10n.discardSessionMessage,
                              deleteText: l10n.discard,
                              cancelText: l10n.cancel,
                            );
                        if (confirmed == true) {
                          _handleDiscard(context);
                        }
                      },
                    ),
                  ],
                  onSwipeRight: () => _handleStop(context, endDateTime, task),
                  rightSwipeIcon: Icons.stop, // Stop icon for right swipe
                  baseColor: taskColor, // Base color for gradual change
                  activationColor:
                      activationColor, // Darker color when threshold reached
                  iconColor: contrastColor, // Icon color for visibility
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:
                          Colors
                              .transparent, // Let SwipeableItem handle background
                      borderRadius: BorderRadius.zero, // No round corners
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppTheme.spacingL,
                      vertical: AppTheme.spacingL,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      l10n.swipeToStop,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: contrastColor,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildTimeRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required DateTime dateTime,
    required Color contrastColor,
    VoidCallback? onTap,
    Widget? trailing,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppTheme.spacingM),
        child: Row(
          children: [
            Icon(icon, color: contrastColor, size: 24),
            const SizedBox(width: AppTheme.spacingM),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 14,
                      color: contrastColor.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: AppTheme.spacingXS),
                  Text(
                    _formatDateTime(dateTime),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: contrastColor,
                    ),
                  ),
                ],
              ),
            ),
            if (trailing != null) trailing,
            if (onTap != null && trailing == null)
              Icon(Icons.edit, color: contrastColor, size: 20),
          ],
        ),
      ),
    );
  }

  Color _getContrastColor(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);

    if (hours > 0) {
      return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
    } else {
      return '00:${minutes.toString().padLeft(2, '0')}';
    }
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
    // If session is active (endDateTime == startDateTime), keep it active after updating start time
    final wasActive =
        session.endDateTime.difference(session.startDateTime).abs().inSeconds <
        1;
    final updatedEndDateTime = wasActive ? newDateTime : session.endDateTime;
    final updatedSession = session.copyWith(
      startDateTime: newDateTime,
      endDateTime: updatedEndDateTime,
    );
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

  Future<void> _handleStop(
    BuildContext context,
    DateTime endDateTime,
    Task task,
  ) async {
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
      final stoppedSession = await activeSessionNotifier.stopSession(
        endDateTime,
      );

      if (mounted) {
        // Only show rate task widget if task has criteria
        if (task.criterionIds.isNotEmpty) {
          await RateTaskWidget.show(
            context,
            session: stoppedSession,
            task: task,
          );
        } else {
          // Clear active session if no criteria
          activeSessionNotifier.clearActiveSession();
          // Invalidate sessions providers to refresh history
          ref.invalidate(allSessionsProvider);
        }
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
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
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
                child: Text(l10n.discard),
              ),
            ],
          ),
    );

    if (confirmed == true && mounted) {
      try {
        final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
        await activeSessionNotifier.discardSession();
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
    return DateFormat('MMM d, yyyy • HH:mm').format(dateTime);
  }
}

/// Provider for active task
final _activeTaskProvider = FutureProvider<Task?>((ref) async {
  final activeSession = ref.watch(activeSessionProvider);
  if (activeSession == null) return null;

  final taskRepository = ref.watch(taskRepositoryProvider);
  return await taskRepository.getTaskById(activeSession.taskId);
});
