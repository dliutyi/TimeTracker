import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import 'history_view.dart';

/// Time period filter widget
class TimePeriodFilter extends StatelessWidget {
  final TimePeriod selectedPeriod;
  final ValueChanged<TimePeriod> onPeriodChanged;

  const TimePeriodFilter({
    super.key,
    required this.selectedPeriod,
    required this.onPeriodChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: TimePeriod.values.map((period) {
            final isSelected = period == selectedPeriod;
            return Padding(
              padding: const EdgeInsets.only(right: AppTheme.spacingS),
              child: FilterChip(
                selected: isSelected,
                label: Text(_getPeriodLabel(period, l10n)),
                selectedColor: theme.colorScheme.tertiaryContainer,
                checkmarkColor: theme.colorScheme.onTertiaryContainer,
                onSelected: (selected) {
                  if (selected) {
                    onPeriodChanged(period);
                  }
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  String _getPeriodLabel(TimePeriod period, AppLocalizations l10n) {
    switch (period) {
      case TimePeriod.day:
        return l10n.day;
      case TimePeriod.week:
        return l10n.week;
      case TimePeriod.month:
        return l10n.month;
      case TimePeriod.year:
        return l10n.year;
      case TimePeriod.all:
        return l10n.all;
    }
  }
}

