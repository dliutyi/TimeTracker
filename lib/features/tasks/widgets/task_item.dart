import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/task.dart';
import '../../../core/constants/icons.dart';
import '../../../shared/widgets/swipeable_item.dart';
import '../../../shared/widgets/confirmation_dialog.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/services/session_service.dart';
import '../list_tasks_screen.dart';
import 'add_edit_task_widget.dart';

/// Task item widget for the list
class TaskItem extends ConsumerWidget {
  final Task task;

  const TaskItem({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    
    // Get icon - task.icon is a string identifier, try to parse as int index
    IconData iconData = Icons.task;
    try {
      final iconIndex = int.tryParse(task.icon);
      if (iconIndex != null) {
        iconData = AppIcons.getIcon(iconIndex) ?? Icons.task;
      }
    } catch (e) {
      // Use default icon if parsing fails
      iconData = Icons.task;
    }

    final isDisabled = task.disabledAt != null;

    return SwipeableItem(
      onSwipeRight: isDisabled ? null : () => _handleActivate(context, ref),
      rightActions: [
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
      child: Card(
        margin: const EdgeInsets.only(bottom: AppTheme.spacingS),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: theme.colorScheme.primaryContainer,
            child: Icon(
              iconData,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          title: Text(
            task.name,
            style: theme.textTheme.titleMedium?.copyWith(
              decoration: isDisabled ? TextDecoration.lineThrough : null,
              color: isDisabled
                  ? theme.colorScheme.onSurfaceVariant
                  : null,
            ),
          ),
          subtitle: task.criterionIds.isNotEmpty
              ? Text(
                  '${task.criterionIds.length} criteria',
                  style: theme.textTheme.bodySmall,
                )
              : null,
          trailing: isDisabled
              ? Icon(
                  Icons.block,
                  color: theme.colorScheme.error,
                  size: 20,
                )
              : null,
        ),
      ),
    );
  }

  Future<void> _handleActivate(BuildContext context, WidgetRef ref) async {
    try {
      final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
      await activeSessionNotifier.startSession(task);

      // Navigation will happen automatically when active session is set
      // The MainNavigationScreen will detect the active session and switch tabs
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error activating task: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    }
  }

  Future<void> _handleEdit(BuildContext context, WidgetRef ref) async {
    final result = await AddEditTaskWidget.show(context, task: task);
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
      primaryButtonText: isDisabled ? 'Enable' : 'Disable',
      cancelButtonText: 'Cancel',
    );

    if (confirmed == true && context.mounted) {
      try {
        final taskRepository = ref.read(taskRepositoryProvider);
        if (isDisabled) {
          await taskRepository.enableTask(task.id);
        } else {
          await taskRepository.disableTask(task.id, DateTime.now());
        }
        if (context.mounted) {
          ref.invalidate(tasksProvider);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                isDisabled ? 'Task enabled' : 'Task disabled',
              ),
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $e'),
              backgroundColor: Theme.of(context).colorScheme.error,
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
      type: DialogType.warning,
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
        await taskRepository.deleteTask(task.id);
        if (context.mounted) {
          ref.invalidate(tasksProvider);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Task deleted')),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $e'),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        }
      }
    }
  }
}

