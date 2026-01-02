import 'package:flutter/material.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/task.dart';
import '../../../core/constants/icons.dart';

/// Task item widget for the list
class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
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

    return Card(
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
          style: theme.textTheme.titleMedium,
        ),
        subtitle: task.criterionIds.isNotEmpty
            ? Text(
                '${task.criterionIds.length} criteria',
                style: theme.textTheme.bodySmall,
              )
            : null,
        trailing: task.disabledAt != null
            ? Icon(
                Icons.block,
                color: theme.colorScheme.error,
                size: 20,
              )
            : null,
      ),
    );
  }
}

