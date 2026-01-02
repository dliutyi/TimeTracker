import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/session.dart';
import '../../../core/models/task.dart';
import '../../../core/models/criterion.dart';
import '../../../core/models/rating_value.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/services/session_service.dart';
import '../../../core/constants/icons.dart';

/// Rate Task Widget
class RateTaskWidget extends ConsumerStatefulWidget {
  final Session session;
  final Task task;

  const RateTaskWidget({
    super.key,
    required this.session,
    required this.task,
  });

  /// Show the widget as a modal
  static Future<void> show(
    BuildContext context, {
    required Session session,
    required Task task,
  }) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: (context) => RateTaskWidget(
        session: session,
        task: task,
      ),
    );
  }

  @override
  ConsumerState<RateTaskWidget> createState() => _RateTaskWidgetState();
}

class _RateTaskWidgetState extends ConsumerState<RateTaskWidget> {
  final Map<String, RatingValue> _ratings = {};
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    // Initialize with existing ratings if any
    _ratings.addAll(widget.session.ratings);
  }

  Future<void> _handleSave() async {
    setState(() {
      _isSaving = true;
    });

    try {
      final sessionRepository = ref.read(sessionRepositoryProvider);
      await sessionRepository.saveRatings(widget.session.id, _ratings);

      // Update session with ratings
      final updatedSession = widget.session.copyWith(ratings: _ratings);
      final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
      await activeSessionNotifier.updateSession(updatedSession);
      activeSessionNotifier.clearActiveSession();

      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving ratings: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  Future<void> _handleSkip() async {
    try {
      final activeSessionNotifier = ref.read(activeSessionProvider.notifier);
      activeSessionNotifier.clearActiveSession();

      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final criteriaAsync = ref.watch(_criteriaProvider(widget.task.criterionIds));

    return Container(
      height: screenHeight * 0.9,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusXL),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(AppTheme.spacingM),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rate Task: ${widget.task.name}',
                    style: theme.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),

            // Criteria List
            Expanded(
              child: criteriaAsync.when(
                data: (criteria) {
                  if (criteria.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            size: 64,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(height: AppTheme.spacingM),
                          Text(
                            'No criteria to rate',
                            style: theme.textTheme.titleMedium,
                          ),
                          const SizedBox(height: AppTheme.spacingS),
                          Text(
                            'This task has no criteria assigned.',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    itemCount: criteria.length,
                    itemBuilder: (context, index) {
                      final criterion = criteria[index];
                      return _buildCriterionRating(criterion);
                    },
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, stack) => Center(
                  child: Text('Error loading criteria: $error'),
                ),
              ),
            ),

            // Action Buttons
            Container(
              padding: const EdgeInsets.all(AppTheme.spacingM),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                border: Border(
                  top: BorderSide(
                    color: theme.colorScheme.outline.withValues(alpha: 0.2),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _isSaving ? null : _handleSkip,
                      child: const Text('Skip'),
                    ),
                  ),
                  const SizedBox(width: AppTheme.spacingM),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: _isSaving ? null : _handleSave,
                      child: _isSaving
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            )
                          : const Text('Save'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCriterionRating(Criterion criterion) {
    final theme = Theme.of(context);
    final currentRating = _ratings[criterion.id];

    return Card(
      margin: const EdgeInsets.only(bottom: AppTheme.spacingM),
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildCriterionIcon(criterion),
                const SizedBox(width: AppTheme.spacingS),
                Expanded(
                  child: Text(
                    criterion.name,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppTheme.spacingM),
            criterion.config.when(
              discrete: (selectionLimit, values) {
                return _buildDiscreteRating(
                  criterion,
                  selectionLimit,
                  values,
                  currentRating,
                );
              },
              continuous: (minValue, maxValue, stepValue) {
                return _buildContinuousRating(
                  criterion,
                  minValue,
                  maxValue,
                  stepValue,
                  currentRating,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiscreteRating(
    Criterion criterion,
    int selectionLimit,
    List<String> values,
    RatingValue? currentRating,
  ) {
    final theme = Theme.of(context);
    final selectedValues = currentRating?.when(
      discrete: (vals) => Set<String>.from(vals),
      continuous: (_) => <String>{},
    ) ?? <String>{};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select up to $selectionLimit value(s)',
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: AppTheme.spacingS),
        Wrap(
          spacing: AppTheme.spacingS,
          runSpacing: AppTheme.spacingS,
          children: values.map((value) {
            final isSelected = selectedValues.contains(value);
            final canSelect = selectedValues.length < selectionLimit || isSelected;

            return FilterChip(
              label: Text(value),
              selected: isSelected,
              onSelected: canSelect
                  ? (selected) {
                      setState(() {
                        if (selected) {
                          selectedValues.add(value);
                        } else {
                          selectedValues.remove(value);
                        }
                        _ratings[criterion.id] = RatingValue.discrete(
                          values: selectedValues.toList(),
                        );
                      });
                    }
                  : null,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildContinuousRating(
    Criterion criterion,
    double minValue,
    double maxValue,
    double stepValue,
    RatingValue? currentRating,
  ) {
    final theme = Theme.of(context);
    final currentValue = currentRating?.when(
      discrete: (_) => minValue,
      continuous: (val) => val,
    ) ?? minValue;

    final textController = TextEditingController(
      text: currentValue.toStringAsFixed(1),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Slider(
                value: currentValue.clamp(minValue, maxValue),
                min: minValue,
                max: maxValue,
                divisions: ((maxValue - minValue) / stepValue).round(),
                label: currentValue.toStringAsFixed(1),
                onChanged: (value) {
                  final roundedValue = (value / stepValue).round() * stepValue;
                  setState(() {
                    _ratings[criterion.id] = RatingValue.continuous(
                      value: roundedValue.clamp(minValue, maxValue),
                    );
                    textController.text = roundedValue.toStringAsFixed(1);
                  });
                },
              ),
            ),
            SizedBox(
              width: 80,
              child: TextField(
                controller: textController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(8),
                ),
                onChanged: (value) {
                  final numValue = double.tryParse(value);
                  if (numValue != null) {
                    final clampedValue = numValue.clamp(minValue, maxValue);
                    final roundedValue =
                        (clampedValue / stepValue).round() * stepValue;
                    setState(() {
                      _ratings[criterion.id] = RatingValue.continuous(
                        value: roundedValue,
                      );
                      textController.text = roundedValue.toStringAsFixed(1);
                    });
                  }
                },
              ),
            ),
          ],
        ),
        Text(
          'Range: $minValue - $maxValue (step: $stepValue)',
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }

  Widget _buildCriterionIcon(Criterion criterion) {
    // Try to parse as icon index first
    try {
      final iconIndex = int.tryParse(criterion.icon);
      if (iconIndex != null) {
        final iconData = AppIcons.getIcon(iconIndex);
        if (iconData != null) {
          return Icon(iconData);
        }
      }
    } catch (e) {
      // Not an icon index, treat as emoji
    }

    // Treat as emoji
    return Text(
      criterion.icon,
      style: const TextStyle(fontSize: 24),
    );
  }
}

/// Provider for criteria by IDs
final _criteriaProvider = FutureProvider.family<List<Criterion>, List<String>>(
  (ref, criterionIds) async {
    if (criterionIds.isEmpty) return [];
    final criterionRepository = ref.watch(criterionRepositoryProvider);
    return await criterionRepository.getCriteriaByIds(criterionIds);
  },
);

