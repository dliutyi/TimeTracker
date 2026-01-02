import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app/theme/app_theme.dart';
import '../../core/repositories/repository_providers.dart';
import '../../core/models/criterion.dart';
import 'widgets/criterion_item.dart';
import 'widgets/add_edit_criterion_widget.dart';

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
              await AddEditCriterionWidget.show(context);
              // Refresh criteria list
              ref.invalidate(criteriaProvider);
            },
            tooltip: l10n.addCriterion,
          ),
        ],
      ),
      body: criteriaAsync.when(
        data: (criteria) {
          if (criteria.isEmpty) {
            return _buildEmptyState(context, l10n);
          }
          return ListView.builder(
            padding: const EdgeInsets.all(AppTheme.spacingM),
            itemCount: criteria.length,
            itemBuilder: (context, index) {
              return CriterionItem(criterion: criteria[index]);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error loading criteria: $error'),
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
              l10n.noCriteria,
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: AppTheme.spacingS),
            Text(
              l10n.createFirstCriterion,
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
}

