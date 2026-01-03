import 'package:flutter/material.dart';
import '../../../app/theme/app_theme.dart';

/// Charts view placeholder (will be implemented in TASK-032)
class ChartsView extends StatelessWidget {
  const ChartsView({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Charts coming soon',
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

