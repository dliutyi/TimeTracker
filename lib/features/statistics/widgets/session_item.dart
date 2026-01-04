import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/models.dart';
import '../../../core/constants/icons.dart';

/// Session item widget for history list
class SessionItem extends StatelessWidget {
  final Session session;
  final Task? task;
  final Map<String, Criterion> criteria;

  const SessionItem({
    super.key,
    required this.session,
    this.task,
    required this.criteria,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final duration = session.endDateTime.difference(session.startDateTime);

    // Get icon data from task icon string
    IconData? iconData;
    if (task != null) {
      try {
        final iconIndex = int.tryParse(task!.icon);
        if (iconIndex != null) {
          iconData = AppIcons.getIcon(iconIndex);
        }
      } catch (e) {
        // Use default icon if parsing fails
      }
    }
    iconData ??= Icons.task;

    return Card(
      margin: const EdgeInsets.only(bottom: AppTheme.spacingS),
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Task name and icon
            Row(
              children: [
                Icon(iconData, size: 24, color: theme.colorScheme.primary),
                const SizedBox(width: AppTheme.spacingS),
                Expanded(
                  child: Text(
                    task?.name ?? l10n.unknownTask,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppTheme.spacingS),

            // Date and time
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: AppTheme.spacingXS),
                Text(
                  _formatDateTime(session.startDateTime, l10n),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                if (session.startDateTime.day != session.endDateTime.day ||
                    session.startDateTime.month != session.endDateTime.month ||
                    session.startDateTime.year != session.endDateTime.year)
                  Text(
                    ' - ${_formatDateTime(session.endDateTime, l10n)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: AppTheme.spacingXS),

            // Duration
            Row(
              children: [
                Icon(
                  Icons.timer,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: AppTheme.spacingXS),
                Text(
                  _formatDuration(duration),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),

            // Ratings summary
            if (session.ratings.isNotEmpty) ...[
              const SizedBox(height: AppTheme.spacingS),
              Wrap(
                spacing: AppTheme.spacingS,
                runSpacing: AppTheme.spacingXS,
                children:
                    session.ratings.entries.map((entry) {
                      final criterion = criteria[entry.key];
                      if (criterion == null) return const SizedBox.shrink();

                      return Chip(
                        avatar: SizedBox(
                          width: 20,
                          height: 20,
                          child: Center(child: _buildCriterionIcon(criterion)),
                        ),
                        label: Text(
                          _formatRating(entry.value, criterion),
                          style: theme.textTheme.bodySmall,
                        ),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      );
                    }).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildCriterionIcon(Criterion criterion) {
    try {
      final iconIndex = int.tryParse(criterion.icon);
      if (iconIndex != null) {
        final iconData = AppIcons.getIcon(iconIndex);
        if (iconData != null) {
          return Icon(iconData, size: 14);
        }
      }
      final emojiIndex = AppIcons.findEmojiIndex(criterion.icon);
      if (emojiIndex != null) {
        return Text(
          AppIcons.emojis[emojiIndex],
          style: const TextStyle(fontSize: 12),
        );
      }
    } catch (e) {
      // Use default icon if parsing fails
    }
    return Text(criterion.icon, style: const TextStyle(fontSize: 14));
  }

  String _formatDateTime(DateTime dateTime, AppLocalizations l10n) {
    return DateFormat(
      l10n.dateFormatInSessionHistory,
      l10n.localeName,
    ).format(dateTime);
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

  String _formatRating(RatingValue rating, Criterion criterion) {
    return rating.when(
      discrete: (values) => values.join(', '),
      continuous: (value) => value.toStringAsFixed(1),
    );
  }
}
