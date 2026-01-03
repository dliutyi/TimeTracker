import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/task.dart';
import '../../../core/models/criterion.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/constants/icons.dart';
import '../../../shared/widgets/speech_text_field.dart';
import '../../../shared/widgets/icon_picker.dart';
import '../../../shared/widgets/color_picker.dart';
import '../../../core/utils/responsive.dart';
import '../list_tasks_screen.dart';
import '../../criteria/list_criteria_screen.dart';

/// Provider for criteria list sorted by usage frequency
/// Made public so it can be invalidated from other screens
final criteriaForTaskProvider = FutureProvider<List<Criterion>>((ref) async {
  final criterionRepository = ref.watch(criterionRepositoryProvider);
  return await criterionRepository.getCriteriaByUsageFrequency();
});

/// Add/Edit Task Widget
class AddEditTaskWidget extends ConsumerStatefulWidget {
  final Task? task; // If null, create mode; if not null, edit mode

  const AddEditTaskWidget({
    super.key,
    this.task,
  });

  /// Show the widget as a modal
  static Future<Task?> show(
    BuildContext context, {
    Task? task,
  }) async {
    return await showModalBottomSheet<Task?>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: (context) => AddEditTaskWidget(task: task),
    );
  }

  @override
  ConsumerState<AddEditTaskWidget> createState() => _AddEditTaskWidgetState();
}

class _AddEditTaskWidgetState extends ConsumerState<AddEditTaskWidget> {
  late TextEditingController _nameController;
  late TextEditingController _mottoController;
  IconData? _selectedIcon;
  String _selectedColor = '#f0aa11';
  Set<String> _selectedCriterionIds = {};
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.task?.name ?? '');
    _mottoController = TextEditingController(text: widget.task?.motto ?? '');
    
    // Set initial icon
    if (widget.task != null) {
      try {
        final iconIndex = int.tryParse(widget.task!.icon);
        if (iconIndex != null) {
          _selectedIcon = AppIcons.getIcon(iconIndex);
        }
      } catch (e) {
        // Use default icon
      }
      // Set initial color
      _selectedColor = widget.task!.color;
    }
    _selectedIcon ??= AppIcons.defaultIcons[0];
    
    // Set initial color
    if (widget.task != null) {
      _selectedColor = widget.task!.color;
    }
    
    // Set initial selected criteria
    if (widget.task != null) {
      _selectedCriterionIds = Set.from(widget.task!.criterionIds);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _mottoController.dispose();
    super.dispose();
  }

  Future<void> _handleSave() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      final taskRepository = ref.read(taskRepositoryProvider);
      final iconIndex = AppIcons.findIconIndex(_selectedIcon!);
      final iconString = iconIndex?.toString() ?? '0';

      final now = DateTime.now();
      final task = Task(
        id: widget.task?.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
        icon: iconString,
        name: _nameController.text.trim(),
        motto: _mottoController.text.trim().isEmpty
            ? null
            : _mottoController.text.trim(),
        color: _selectedColor,
        criterionIds: _selectedCriterionIds.toList(),
        createdAt: widget.task?.createdAt ?? now,
        updatedAt: now,
        disabledAt: widget.task?.disabledAt,
      );

      final savedTask = widget.task == null
          ? await taskRepository.createTask(task)
          : await taskRepository.updateTask(task);

      // Update criteria associations
      await taskRepository.updateTaskCriteria(
        savedTask.id,
        _selectedCriterionIds.toList(),
      );

      // Invalidate providers to refresh UI
      ref.invalidate(tasksProvider);
      ref.invalidate(criteriaProvider);

      if (mounted) {
        Navigator.of(context).pop(savedTask);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving task: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
            duration: const Duration(seconds: 2),
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

  void _handleDiscard() {
    Navigator.of(context).pop();
  }

  Future<void> _handleIconTap() async {
    final selectedIcon = await IconPicker.showIconPicker(
      context,
      selectedIcon: _selectedIcon,
    );
    if (selectedIcon != null) {
      setState(() {
        _selectedIcon = selectedIcon;
      });
    }
  }

  Future<void> _handleColorTap() async {
    final selectedColor = await ColorPicker.showColorPicker(
      context,
      selectedColor: _selectedColor,
    );
    if (selectedColor != null) {
      setState(() {
        _selectedColor = selectedColor;
      });
    }
  }

  Color _getColorFromHex(String hex) {
    try {
      if (hex.startsWith('#')) {
        hex = hex.substring(1);
      }
      if (hex.length == 6) {
        return Color(int.parse('FF$hex', radix: 16));
      }
    } catch (e) {
      // Return default color if parsing fails
    }
    return const Color(0xFFA1FF5F);
  }

  Color _getContrastColor(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  void _toggleCriterion(String criterionId) {
    setState(() {
      if (_selectedCriterionIds.contains(criterionId)) {
        _selectedCriterionIds.remove(criterionId);
      } else {
        _selectedCriterionIds.add(criterionId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final criteriaAsync = ref.watch(criteriaForTaskProvider);
    final screenHeight = MediaQuery.of(context).size.height;

    final isTablet = Responsive.isTablet(context);
    final maxWidth = Responsive.getMaxContentWidth(context);
    
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: isTablet ? maxWidth : double.infinity,
        constraints: BoxConstraints(
          maxHeight: screenHeight * 0.9,
          maxWidth: maxWidth,
        ),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.vertical(
            top: const Radius.circular(AppTheme.radiusXL),
            bottom: isTablet ? const Radius.circular(AppTheme.radiusXL) : Radius.zero,
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
                    widget.task == null ? l10n.addTask : 'Edit Task',
                    style: theme.textTheme.headlineSmall,
                  ),
                  IconButton(
                    onPressed: _handleDiscard,
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // First Section: Icon and Name
                    Padding(
                      padding: const EdgeInsets.all(AppTheme.spacingM),
                      child: Row(
                        children: [
                          // Icon with color background
                          GestureDetector(
                            onTap: _handleIconTap,
                            child: Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                color: _getColorFromHex(_selectedColor),
                                borderRadius: BorderRadius.circular(
                                  AppTheme.radiusM,
                                ),
                              ),
                              child: Icon(
                                _selectedIcon,
                                color: _getContrastColor(_getColorFromHex(_selectedColor)),
                                size: 32,
                              ),
                            ),
                          ),
                          const SizedBox(width: AppTheme.spacingM),
                          // Color picker button
                          GestureDetector(
                            onTap: _handleColorTap,
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: _getColorFromHex(_selectedColor),
                                borderRadius: BorderRadius.circular(
                                  AppTheme.radiusM,
                                ),
                                border: Border.all(
                                  color: theme.colorScheme.outline,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: AppTheme.spacingM),
                          // Name
                          Expanded(
                            child: SpeechTextField(
                              label: 'Task Name',
                              controller: _nameController,
                              maxLength: 32,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Task name is required';
                                }
                                if (value.trim().length > 32) {
                                  return 'Task name must be 32 characters or less';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Second Section: Motto
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppTheme.spacingM,
                      ),
                      child: SpeechTextField(
                        label: 'Motto (optional)',
                        controller: _mottoController,
                        maxLines: 2,
                        maxLength: 128,
                        validator: (value) {
                          if (value != null && value.trim().length > 128) {
                            return 'Motto must be 128 characters or less';
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: AppTheme.spacingM),

                    // Third Section: Criteria Selection
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppTheme.spacingM,
                            ),
                            child: Text(
                              'Criteria',
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          const SizedBox(height: AppTheme.spacingS),
                          Expanded(
                            child: criteriaAsync.when(
                              data: (criteria) {
                                // Sort: selected first, then by frequency (already sorted)
                                final sortedCriteria = [
                                  ...criteria.where(
                                    (c) => _selectedCriterionIds.contains(c.id),
                                  ),
                                  ...criteria.where(
                                    (c) => !_selectedCriterionIds.contains(c.id),
                                  ),
                                ];

                                if (sortedCriteria.isEmpty) {
                                  return Center(
                                    child: Text(
                                      'No criteria available. Create criteria first.',
                                      style: theme.textTheme.bodyMedium?.copyWith(
                                        color: theme.colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                  );
                                }

                                return ListView.builder(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppTheme.spacingM,
                                  ),
                                  itemCount: sortedCriteria.length,
                                  itemBuilder: (context, index) {
                                    final criterion = sortedCriteria[index];
                                    final isSelected = _selectedCriterionIds
                                        .contains(criterion.id);

                                    return CheckboxListTile(
                                      value: isSelected,
                                      onChanged: (_) =>
                                          _toggleCriterion(criterion.id),
                                      title: Text(criterion.name),
                                      secondary: _buildCriterionIcon(criterion),
                                    );
                                  },
                                );
                              },
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              error: (error, stack) => Center(
                                child: Text('Error: $error'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Fourth Section: Action Buttons (docked at bottom)
                    Container(
                      padding: const EdgeInsets.all(AppTheme.spacingM),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        border: Border(
                          top: BorderSide(
                            color: theme.colorScheme.outline.withValues(
                              alpha: 0.2,
                            ),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: _isSaving ? null : _handleDiscard,
                              child: const Text('Discard'),
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
                                  : Text(
                                      widget.task == null
                                          ? 'Add Task'
                                          : 'Update Task',
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
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

