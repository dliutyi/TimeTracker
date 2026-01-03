import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/task.dart';
import '../../../core/models/criterion.dart';
import '../../../core/constants/icons.dart';
import '../../../shared/widgets/swipeable_item.dart';
import '../../../shared/widgets/confirmation_dialog.dart';
import '../../../shared/widgets/color_picker.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/services/session_service.dart';
import '../../navigation/main_navigation_screen.dart';
import '../list_tasks_screen.dart';
import 'add_edit_task_widget.dart';

/// Provider for criteria by IDs
final _taskCriteriaProvider = FutureProvider.family<List<Criterion>, List<String>>(
  (ref, criterionIds) async {
    if (criterionIds.isEmpty) return [];
    final criterionRepository = ref.watch(criterionRepositoryProvider);
    return await criterionRepository.getCriteriaByIds(criterionIds);
  },
);

/// Task item widget for the list
class TaskItem extends ConsumerStatefulWidget {
  final Task task;

  const TaskItem({
    super.key,
    required this.task,
  });

  @override
  ConsumerState<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends ConsumerState<TaskItem> {
  Timer? _durationTimer;

  @override
  void initState() {
    super.initState();
    // Start timer for live duration updates when task is active
    _durationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        final activeSession = ref.read(activeSessionProvider);
        if (activeSession?.taskId == widget.task.id) {
          setState(() {
            // Trigger rebuild to update duration
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _durationTimer?.cancel();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activeSession = ref.watch(activeSessionProvider);
    final isActive = activeSession?.taskId == widget.task.id;
    final hasActiveSession = activeSession != null;
    
    // Get icon - task.icon is a string identifier, try to parse as int index
    IconData iconData = Icons.task;
    try {
      final iconIndex = int.tryParse(widget.task.icon);
      if (iconIndex != null) {
        iconData = AppIcons.getIcon(iconIndex) ?? Icons.task;
      }
    } catch (e) {
      // Use default icon if parsing fails
      iconData = Icons.task;
    }

    // Get task color
    final taskColor = TaskColors.hexToColor(widget.task.color) ?? theme.colorScheme.primary;

    final isDisabled = widget.task.disabledAt != null;
    final canActivate = !isDisabled && !hasActiveSession;
    final buttonsDisabled = isActive; // Disable buttons when task is active

    // Calculate duration if active
    String? durationString;
    if (isActive && activeSession != null) {
      final duration = DateTime.now().difference(activeSession.startDateTime);
      durationString = _formatDuration(duration);
    }

    // Load criteria for enumeration
    final criteriaAsync = ref.watch(_taskCriteriaProvider(widget.task.criterionIds));

    return SwipeableItem(
      onSwipeRight: canActivate ? () => _handleActivate(context, ref) : null,
      baseColor: isActive
          ? taskColor.withOpacity(0.2)
          : theme.colorScheme.surfaceContainerHighest,
      activationColor: taskColor,
      rightActions: buttonsDisabled ? [] : [
        SwipeAction(
          label: 'Settings',
          icon: Icons.settings,
          color: theme.colorScheme.primary,
          onTap: () => _handleEdit(context, ref),
        ),
        SwipeAction(
          label: isDisabled ? 'Enable' : 'Disable',
          icon: isDisabled ? Icons.check_circle : Icons.block,
          color: Colors.orange,
          onTap: () => _handleDisable(context, ref, isDisabled),
        ),
        SwipeAction(
          label: 'Delete',
          icon: Icons.delete,
          color: theme.colorScheme.error,
          onTap: () => _handleDelete(context, ref),
        ),
      ],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, // Let SwipeableItem handle background
          borderRadius: BorderRadius.circular(AppTheme.radiusM),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: taskColor,
            child: Icon(
              iconData,
              color: _getContrastColor(taskColor),
            ),
          ),
          title: Text(
            widget.task.name,
            style: theme.textTheme.titleMedium?.copyWith(
              decoration: isDisabled ? TextDecoration.lineThrough : null,
              color: isDisabled
                  ? theme.colorScheme.onSurfaceVariant
                  : isActive
                      ? taskColor
                      : null,
              fontWeight: isActive ? FontWeight.bold : null,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Enumerate criteria
              criteriaAsync.when(
                data: (criteria) {
                  if (criteria.isEmpty) return const SizedBox.shrink();
                  return Text(
                    criteria.map((c) => c.name).join(', '),
                    style: theme.textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  );
                },
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
              ),
              // Show duration when active
              if (isActive && durationString != null)
                Text(
                  durationString,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: taskColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isActive)
                Icon(
                  Icons.play_circle_filled,
                  color: taskColor,
                  size: 24,
                ),
              if (isDisabled)
                Icon(
                  Icons.block,
                  color: theme.colorScheme.error,
                  size: 20,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getContrastColor(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  Future<void> _handleActivate(BuildContext context, WidgetRef ref) async {
    // Check if there's already an active session
    final activeSession = ref.read(activeSessionProvider);
    if (activeSession != null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Another task is already active. Stop it first.'),
            duration: Duration(seconds: 2),
          ),
        );
      }
      return;
    }

    try {
      final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
      await activeSessionNotifier.startSession(widget.task);

      // Navigate to Active Task tab
      if (context.mounted) {
        final mainNavState = MainNavigationScreenState.of(context);
        if (mainNavState != null) {
          mainNavState.switchToTab(0); // Active Task tab
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error activating task: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> _handleEdit(BuildContext context, WidgetRef ref) async {
    final result = await AddEditTaskWidget.show(context, task: widget.task);
    if (result != null && context.mounted) {
      ref.invalidate(tasksProvider);
    }
  }

  Future<void> _handleDisable(
    BuildContext context,
    WidgetRef ref,
    bool isDisabled,
  ) async {
    final confirmed = await ConfirmationDialog.show(
      context,
      title: isDisabled ? 'Enable Task' : 'Disable Task',
      message: isDisabled
          ? 'This will enable the task and make it available again.'
          : 'This will disable the task. It will be moved to the bottom of the list. You can enable it again later.',
      type: DialogType.warning, // Orange color scheme
      primaryButtonText: isDisabled ? 'Enable' : 'Disable',
      cancelButtonText: 'Cancel',
    );

    if (confirmed == true && context.mounted) {
      try {
        final taskRepository = ref.read(taskRepositoryProvider);
        if (isDisabled) {
          await taskRepository.enableTask(widget.task.id);
        } else {
          await taskRepository.disableTask(widget.task.id, DateTime.now());
        }
        if (context.mounted) {
          ref.invalidate(tasksProvider);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                isDisabled ? 'Task enabled' : 'Task disabled',
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $e'),
              backgroundColor: Theme.of(context).colorScheme.error,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    }
  }

  Future<void> _handleDelete(BuildContext context, WidgetRef ref) async {
    final confirmed = await ConfirmationDialog.show(
      context,
      title: 'Delete Task',
      message: 'This will permanently delete the task and all associated sessions. This action cannot be undone.\n\nConsider disabling the task instead if you\'re not sure.',
      type: DialogType.error, // Red color scheme
      primaryButtonText: 'Delete',
      secondaryButtonText: 'Disable',
      cancelButtonText: 'Cancel',
      onSecondary: () {
        Navigator.of(context).pop(false);
        _handleDisable(context, ref, false);
      },
    );

    if (confirmed == true && context.mounted) {
      try {
        final taskRepository = ref.read(taskRepositoryProvider);
        await taskRepository.deleteTask(widget.task.id);
        if (context.mounted) {
          ref.invalidate(tasksProvider);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Task deleted'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $e'),
              backgroundColor: Theme.of(context).colorScheme.error,
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    }
  }
}

