import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/criterion.dart';
import '../../../core/models/criterion_config.dart';
import '../../../core/constants/icons.dart';
import '../../../shared/widgets/swipeable_item.dart';
import '../../../shared/widgets/confirmation_dialog.dart';
import '../../../core/repositories/repository_providers.dart';
import '../list_criteria_screen.dart';
import 'add_edit_criterion_widget.dart';

/// Widget to display a criterion item in the list
class CriterionItem extends ConsumerWidget {
  final Criterion criterion;

  const CriterionItem({super.key, required this.criterion});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    // Get icon data
    IconData iconData = Icons.rule;
    String? emoji;
    try {
      final iconIndex = int.tryParse(criterion.icon);
      if (iconIndex != null) {
        iconData = AppIcons.getIcon(iconIndex) ?? Icons.rule;
      } else {
        // If it's not a number, it might be an emoji
        emoji = criterion.icon;
      }
    } catch (e) {
      iconData = Icons.rule;
    }

    // Build configuration description
    final configDescription = criterion.config.when(
      discrete: (selectionLimit, values) {
        return l10n.discreteCriterion(selectionLimit, values.length);
      },
      continuous: (minValue, maxValue, stepValue) {
        return l10n.continuousCriterion(minValue, maxValue, stepValue);
      },
    );

    return SwipeableItem(
      rightActions: [
        SwipeAction(
          label: l10n.settings,
          icon: Icons.settings,
          color: theme.colorScheme.primary,
          onTap: () => _handleEdit(context, ref),
        ),
        SwipeAction(
          label: l10n.delete,
          icon: Icons.delete,
          color: theme.colorScheme.error,
          onTap: () => _handleDelete(context, ref, l10n),
        ),
      ],
      child: Card(
        margin: const EdgeInsets.only(bottom: AppTheme.spacingS),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: theme.colorScheme.primaryContainer,
            child:
                emoji != null
                    ? Text(emoji, style: const TextStyle(fontSize: 24))
                    : Icon(
                      iconData,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
          ),
          title: Text(criterion.name, style: theme.textTheme.titleMedium),
          subtitle: Text(
            configDescription,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleEdit(BuildContext context, WidgetRef ref) async {
    final result = await AddEditCriterionWidget.show(
      context,
      criterion: criterion,
    );
    if (result != null && context.mounted) {
      // Refresh the criteria list
      ref.invalidate(criteriaProvider);
    }
  }

  Future<void> _handleDelete(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) async {
    final confirmed = await ConfirmationDialog.showDeleteConfirmation(
      context,
      title: l10n.deleteCriterion,
      message: l10n.deleteCriterionWarningWithName(criterion.name),
      deleteText: l10n.delete,
      cancelText: l10n.cancel,
    );

    if (confirmed == true && context.mounted) {
      try {
        final criterionRepository = ref.read(criterionRepositoryProvider);
        final taskRepository = ref.read(taskRepositoryProvider);

        // Get all tasks that use this criterion
        final allTasks = await taskRepository.getAllTasks();
        final tasksUsingCriterion =
            allTasks
                .where((task) => task.criterionIds.contains(criterion.id))
                .toList();

        // Delete the criterion (this already removes from task_criteria table)
        await criterionRepository.deleteCriterion(criterion.id);

        // Update tasks to remove the criterion from their criterionIds
        for (final task in tasksUsingCriterion) {
          final updatedCriterionIds =
              task.criterionIds.where((id) => id != criterion.id).toList();
          final updatedTask = task.copyWith(criterionIds: updatedCriterionIds);
          await taskRepository.updateTask(updatedTask);
        }

        if (context.mounted) {
          // Refresh the criteria list
          ref.invalidate(criteriaProvider);
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.errorDeletingCriterion(e.toString())),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        }
      }
    }
  }
}
