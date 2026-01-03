import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app/theme/app_theme.dart';
import '../../core/repositories/repository_providers.dart';
import '../../core/models/criterion.dart';
import '../../core/utils/responsive.dart';
import 'widgets/criterion_item.dart';
import 'widgets/add_edit_criterion_widget.dart';
import '../tasks/list_tasks_screen.dart';

/// Provider for criteria sorted by usage frequency
final criteriaProvider = FutureProvider<List<Criterion>>((ref) async {
  final criterionRepository = ref.watch(criterionRepositoryProvider);
  return await criterionRepository.getCriteriaByUsageFrequency();
});

/// List of Criteria screen
class ListCriteriaScreen extends ConsumerWidget {
  const ListCriteriaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final criteriaAsync = ref.watch(criteriaProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.listOfCriteria),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final result = await AddEditCriterionWidget.show(context);
              if (result != null && context.mounted) {
                // Refresh the criteria list
                ref.invalidate(criteriaProvider);
                // Also refresh tasks list in case criteria were updated
                ref.invalidate(tasksProvider);
              }
            },
            tooltip: 'Add Criterion',
          ),
        ],
      ),
      body: criteriaAsync.when(
        data: (criteria) {
          if (criteria.isEmpty) {
            return _buildEmptyState(context, l10n);
          }
          return _buildCriteriaList(context, criteria);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: AppTheme.spacingM),
              Text(
                'Error loading criteria: $error',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.rule_outlined,
              size: 64,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: AppTheme.spacingL),
            Text(
              'No Criteria',
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: AppTheme.spacingS),
            Text(
              'Create your first criterion to start rating tasks.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCriteriaList(BuildContext context, List<Criterion> criteria) {
    final padding = Responsive.getPadding(context);
    return ListView.builder(
      padding: padding,
      itemCount: criteria.length,
      itemBuilder: (context, index) {
        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: AppTheme.animationMedium,
          curve: Curves.easeOut,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 20 * (1 - value)),
                child: child,
              ),
            );
          },
          child: CriterionItem(criterion: criteria[index]),
        );
      },
    );
  }
}
