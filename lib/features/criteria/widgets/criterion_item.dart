import 'package:flutter/material.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/criterion.dart';
import '../../../core/models/criterion_config.dart';
import '../../../core/constants/icons.dart';

/// Widget to display a criterion item in the list
class CriterionItem extends StatelessWidget {
  final Criterion criterion;

  const CriterionItem({
    super.key,
    required this.criterion,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    // Get icon data
    IconData iconData = Icons.rule;
    try {
      final iconIndex = int.tryParse(criterion.icon);
      if (iconIndex != null) {
        iconData = AppIcons.getIcon(iconIndex) ?? Icons.rule;
      } else {
        // If it's not a number, it might be an emoji - we'll display it as text
        // For now, use default icon
      }
    } catch (e) {
      iconData = Icons.rule;
    }

    // Build configuration description
    final configDescription = criterion.config.when(
      discrete: (selectionLimit, values) {
        return 'Discrete: $selectionLimit selection${selectionLimit != 1 ? 's' : ''}, ${values.length} value${values.length != 1 ? 's' : ''}';
      },
      continuous: (minValue, maxValue, stepValue) {
        return 'Continuous: $minValue-$maxValue, step $stepValue';
      },
    );

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
          criterion.name,
          style: theme.textTheme.titleMedium,
        ),
        subtitle: Text(
          configDescription,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
