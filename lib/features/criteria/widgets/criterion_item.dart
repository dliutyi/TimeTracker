import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/criterion.dart';
import '../../../core/models/criterion_config.dart';
import '../../../core/models/criterion_type.dart';
import '../../../core/constants/icons.dart';

/// Widget to display a criterion item in the list
class CriterionItem extends ConsumerWidget {
  final Criterion criterion;

  const CriterionItem({
    super.key,
    required this.criterion,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    // Get icon - can be an emoji or icon index
    Widget iconWidget;
    try {
      // Try to parse as icon index
      final iconIndex = int.tryParse(criterion.icon);
      if (iconIndex != null) {
        final iconData = AppIcons.getIcon(iconIndex) ?? Icons.rule;
        iconWidget = Icon(
          iconData,
          color: theme.colorScheme.onPrimaryContainer,
        );
      } else {
        // Treat as emoji
        iconWidget = Text(
          criterion.icon,
          style: const TextStyle(fontSize: 24),
        );
      }
    } catch (e) {
      // Fallback to default icon
      iconWidget = Icon(
        Icons.rule,
        color: theme.colorScheme.onPrimaryContainer,
      );
    }

    // Build type and configuration description
    final typeDescription = _buildTypeDescription(l10n);

    return Card(
      margin: const EdgeInsets.only(bottom: AppTheme.spacingS),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.primaryContainer,
          child: iconWidget,
        ),
        title: Text(
          criterion.name,
          style: theme.textTheme.titleMedium,
        ),
        subtitle: Text(
          typeDescription,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }

  String _buildTypeDescription(AppLocalizations l10n) {
    return criterion.config.when(
      discrete: (selectionLimit, values) {
        return '${l10n.discrete}: $selectionLimit ${l10n.selections}, ${values.length} ${l10n.values}';
      },
      continuous: (minValue, maxValue, stepValue) {
        return '${l10n.continuous}: $minValue-$maxValue, ${l10n.step} $stepValue';
      },
    );
  }
}

