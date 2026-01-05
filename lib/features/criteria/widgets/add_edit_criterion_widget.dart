import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/criterion.dart';
import '../../../core/models/criterion_config.dart';
import '../../../core/models/criterion_type.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/constants/icons.dart';
import '../../../shared/widgets/speech_text_field.dart';
import '../../../shared/widgets/icon_picker.dart';
import '../../../core/utils/responsive.dart';
import '../list_criteria_screen.dart';
import '../../tasks/list_tasks_screen.dart';
import '../../statistics/widgets/history_view.dart'
    show allTasksProvider, allCriteriaProvider;

/// Add/Edit Criterion Widget
class AddEditCriterionWidget extends ConsumerStatefulWidget {
  final Criterion? criterion; // If null, create mode; if not null, edit mode

  const AddEditCriterionWidget({super.key, this.criterion});

  /// Show the widget as a modal
  static Future<Criterion?> show(
    BuildContext context, {
    Criterion? criterion,
  }) async {
    return await showModalBottomSheet<Criterion?>(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder: (context) => AddEditCriterionWidget(criterion: criterion),
    );
  }

  @override
  ConsumerState<AddEditCriterionWidget> createState() =>
      _AddEditCriterionWidgetState();
}

class _AddEditCriterionWidgetState
    extends ConsumerState<AddEditCriterionWidget> {
  late TextEditingController _nameController;
  late TextEditingController _selectionLimitController;
  late TextEditingController _minValueController;
  late TextEditingController _maxValueController;
  late TextEditingController _stepValueController;
  final List<TextEditingController> _valueControllers = [];
  final List<FocusNode> _valueFocusNodes = [];
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  IconData? _selectedIcon;
  String? _selectedEmoji;
  CriterionType _selectedType = CriterionType.discrete;
  int _selectionLimit = 1;
  List<String> _discreteValues = [];
  double _minValue = 0.0;
  double _maxValue = 10.0;
  double _stepValue = 1.0;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.criterion?.name ?? '');

    // Initialize all controllers first
    _selectionLimitController = TextEditingController(text: '1');
    _minValueController = TextEditingController(text: '0.0');
    _maxValueController = TextEditingController(text: '10.0');
    _stepValueController = TextEditingController(text: '1.0');

    if (widget.criterion != null) {
      // Edit mode - populate fields
      final criterion = widget.criterion!;
      _selectedType = criterion.type;

      // Set icon/emoji
      final iconIndex = int.tryParse(criterion.icon);
      if (iconIndex != null) {
        _selectedIcon = AppIcons.getIcon(iconIndex);
      } else {
        _selectedEmoji = criterion.icon;
      }

      // Set configuration based on type
      criterion.config.when(
        discrete: (limit, values) {
          _selectionLimit = limit;
          _discreteValues = List.from(values);
          _selectionLimitController.text = limit.toString();
          for (var value in values) {
            final controller = TextEditingController(text: value);
            final focusNode = FocusNode();
            _valueControllers.add(controller);
            _valueFocusNodes.add(focusNode);
          }
        },
        continuous: (min, max, step) {
          _minValue = min;
          _maxValue = max;
          _stepValue = step;
          _minValueController.text = min.toString();
          _maxValueController.text = max.toString();
          _stepValueController.text = step.toString();
        },
      );
    } else {
      // Create mode - set defaults
      _selectedIcon = AppIcons.defaultIcons[0];
      // Add default first value for discrete type
      if (_selectedType == CriterionType.discrete) {
        final controller = TextEditingController();
        final focusNode = FocusNode();
        _valueControllers.add(controller);
        _valueFocusNodes.add(focusNode);
      }
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _selectionLimitController.dispose();
    _minValueController.dispose();
    _maxValueController.dispose();
    _stepValueController.dispose();
    for (var controller in _valueControllers) {
      controller.dispose();
    }
    for (var focusNode in _valueFocusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  Future<void> _handleSave(AppLocalizations l10n) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Additional validation
    if (_selectedType == CriterionType.discrete) {
      if (_discreteValues.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.atLeastOneValueForDiscreteCriteria),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }
      if (_selectionLimit <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.selectionLimitMustBeGreaterThanZero),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }
    } else {
      if (_minValue >= _maxValue) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.minValueMustBeLessThanMaxValue),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }
      if (_stepValue <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.stepValueMustBeGreaterThanZero),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }
    }

    setState(() {
      _isSaving = true;
    });

    try {
      final criterionRepository = ref.read(criterionRepositoryProvider);
      String iconString;
      if (_selectedIcon != null) {
        final iconIndex = AppIcons.findIconIndex(_selectedIcon!);
        iconString = iconIndex?.toString() ?? '0';
      } else {
        iconString = _selectedEmoji ?? '0';
      }

      final config =
          _selectedType == CriterionType.discrete
              ? CriterionConfig.discrete(
                selectionLimit: _selectionLimit,
                values: _discreteValues,
              )
              : CriterionConfig.continuous(
                minValue: _minValue,
                maxValue: _maxValue,
                stepValue: _stepValue,
              );

      final now = DateTime.now();
      final criterion = Criterion(
        id:
            widget.criterion?.id ??
            DateTime.now().millisecondsSinceEpoch.toString(),
        icon: iconString,
        name: _nameController.text.trim(),
        type: _selectedType,
        config: config,
        createdAt: widget.criterion?.createdAt ?? now,
        updatedAt: now,
      );

      if (widget.criterion == null) {
        await criterionRepository.createCriterion(criterion);
      } else {
        await criterionRepository.updateCriterion(criterion);
      }

      // Invalidate providers to refresh UI
      ref.invalidate(criteriaProvider);
      ref.invalidate(tasksProvider);
      // Invalidate statistics providers for live updates
      ref.invalidate(allTasksProvider);
      ref.invalidate(allCriteriaProvider);

      if (mounted) {
        Navigator.of(context).pop(criterion);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.errorSavingCriterion(e.toString())),
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

  Future<void> _selectIcon() async {
    final icon = await IconPicker.showIconPicker(
      context,
      selectedIcon: _selectedIcon,
    );
    if (icon != null) {
      setState(() {
        _selectedIcon = icon;
        _selectedEmoji = null;
      });
    }
  }

  Future<void> _selectEmoji() async {
    final emoji = await IconPicker.showEmojiPicker(
      context,
      selectedEmoji: _selectedEmoji,
    );
    if (emoji != null) {
      setState(() {
        _selectedEmoji = emoji;
        _selectedIcon = null;
      });
    }
  }

  void _addDiscreteValue() {
    setState(() {
      final controller = TextEditingController();
      final focusNode = FocusNode();
      _valueControllers.add(controller);
      _valueFocusNodes.add(focusNode);
    });
  }

  void _removeDiscreteValue(int index) {
    setState(() {
      _valueControllers[index].dispose();
      _valueFocusNodes[index].dispose();
      _valueControllers.removeAt(index);
      _valueFocusNodes.removeAt(index);
      _discreteValues.removeAt(index);
    });
  }

  void _updateDiscreteValues() {
    _discreteValues.clear();
    for (var controller in _valueControllers) {
      final value = controller.text.trim();
      if (value.isNotEmpty) {
        _discreteValues.add(value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final screenHeight = MediaQuery.of(context).size.height;
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

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
            bottom:
                isTablet
                    ? const Radius.circular(AppTheme.radiusXL)
                    : Radius.zero,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(AppTheme.spacingM),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: theme.colorScheme.outline.withOpacity(0.2),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      widget.criterion == null
                          ? l10n.addCriterion
                          : l10n.editCriterion,
                      style: theme.textTheme.titleLarge,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: _handleDiscard,
                    ),
                  ],
                ),
              ),

              // Content
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: keyboardHeight + AppTheme.spacingXL,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppTheme.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // First Section: Icon/Emoji and Name
                        _buildFirstSection(theme, l10n),
                        const SizedBox(height: AppTheme.spacingL),

                        // Second Section: Type Selector
                        _buildSecondSection(theme, l10n),
                        const SizedBox(height: AppTheme.spacingL),

                        // Third Section: Configuration (Dynamic)
                        _buildThirdSection(theme, l10n),
                      ],
                    ),
                  ),
                ),
              ),

              // Fourth Section: Action Buttons (Docked at bottom)
              Container(
                padding: EdgeInsets.only(
                  left: AppTheme.spacingM,
                  right: AppTheme.spacingM,
                  top: AppTheme.spacingM,
                  bottom: AppTheme.spacingM + keyboardHeight,
                ),
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  border: Border(
                    top: BorderSide(
                      color: theme.colorScheme.outline.withOpacity(0.2),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _isSaving ? null : _handleDiscard,
                        child: Text(l10n.discard),
                      ),
                    ),
                    const SizedBox(width: AppTheme.spacingM),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: _isSaving ? null : () => _handleSave(l10n),
                        child:
                            _isSaving
                                ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                                : Text(
                                  widget.criterion == null
                                      ? l10n.addCriterion
                                      : l10n.updateCriterion,
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
    );
  }

  Widget _buildFirstSection(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon/Emoji selector
        Row(
          children: [
            GestureDetector(
              onTap: () async {
                // Show dialog to choose icon or emoji
                final choice = await showDialog<String>(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        title: Text(l10n.selectIconType),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.image),
                              title: Text(l10n.icon),
                              onTap: () => Navigator.of(context).pop('icon'),
                            ),
                            ListTile(
                              leading: const Text(
                                '😀',
                                style: TextStyle(fontSize: 24),
                              ),
                              title: Text(l10n.emoji),
                              onTap: () => Navigator.of(context).pop('emoji'),
                            ),
                          ],
                        ),
                      ),
                );
                if (choice == 'icon') {
                  await _selectIcon();
                } else if (choice == 'emoji') {
                  await _selectEmoji();
                }
              },
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(AppTheme.radiusM),
                ),
                alignment: Alignment.center,
                child:
                    _selectedIcon != null
                        ? Icon(
                          _selectedIcon,
                          size: 32,
                          color: theme.colorScheme.onPrimaryContainer,
                        )
                        : _selectedEmoji != null
                        ? Text(
                          _selectedEmoji!,
                          style: const TextStyle(fontSize: 32),
                          textAlign: TextAlign.center,
                        )
                        : Icon(
                          Icons.add,
                          size: 32,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
              ),
            ),
            const SizedBox(width: AppTheme.spacingM),
            Expanded(
              child: SpeechTextField(
                controller: _nameController,
                label: l10n.criterionName,
                hint: l10n.enterCriterionName,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return l10n.nameRequired;
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSecondSection(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.type, style: theme.textTheme.titleMedium),
        const SizedBox(height: AppTheme.spacingS),
        SegmentedButton<CriterionType>(
          segments: [
            ButtonSegment(
              value: CriterionType.discrete,
              label: Text(l10n.discrete),
            ),
            ButtonSegment(
              value: CriterionType.continuous,
              label: Text(l10n.continuous),
            ),
          ],
          selected: {_selectedType},
          onSelectionChanged: (Set<CriterionType> newSelection) {
            setState(() {
              _selectedType = newSelection.first;
            });
          },
        ),
      ],
    );
  }

  Widget _buildThirdSection(ThemeData theme, AppLocalizations l10n) {
    if (_selectedType == CriterionType.discrete) {
      return _buildDiscreteSection(theme, l10n);
    } else {
      return _buildContinuousSection(theme, l10n);
    }
  }

  Widget _buildDiscreteSection(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.discreteConfiguration, style: theme.textTheme.titleMedium),
        const SizedBox(height: AppTheme.spacingM),

        // Selection Limit
        SpeechTextField(
          controller: _selectionLimitController,
          label: l10n.selectionLimit,
          hint: l10n.howManyValuesCanBeSelected,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.selectionLimitRequired;
            }
            final limit = int.tryParse(value);
            if (limit == null || limit <= 0) {
              return l10n.selectionLimitMustBeAPositiveNumber;
            }
            _selectionLimit = limit;
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),

        // Values
        Text(l10n.values, style: theme.textTheme.titleSmall),
        const SizedBox(height: AppTheme.spacingS),
        ...List.generate(_valueControllers.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: AppTheme.spacingS),
            child: Row(
              children: [
                Expanded(
                  child: SpeechTextField(
                    controller: _valueControllers[index],
                    hint: l10n.valueX(index + 1),
                    onChanged: (_) => _updateDiscreteValues(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return l10n.valueCannotBeEmpty;
                      }
                      return null;
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () => _removeDiscreteValue(index),
                  color: theme.colorScheme.error,
                ),
              ],
            ),
          );
        }),
        OutlinedButton.icon(
          onPressed: _addDiscreteValue,
          icon: const Icon(Icons.add),
          label: Text(l10n.addValue),
        ),
      ],
    );
  }

  Widget _buildContinuousSection(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.continuousConfiguration, style: theme.textTheme.titleMedium),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          controller: _minValueController,
          label: l10n.minValue,
          hint: l10n.minimumAllowedValue,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.minValueRequired;
            }
            final min = double.tryParse(value);
            if (min == null) {
              return l10n.minValueMustBeANumber;
            }
            _minValue = min;
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          controller: _maxValueController,
          label: l10n.maxValue,
          hint: l10n.maximumAllowedValue,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.maxValueRequired;
            }
            final max = double.tryParse(value);
            if (max == null) {
              return l10n.maxValueMustBeANumber;
            }
            _maxValue = max;
            if (_maxValue <= _minValue) {
              return l10n.maxValueMustBeGreaterThanMinValue;
            }
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          controller: _stepValueController,
          label: l10n.stepValue,
          hint: l10n.incrementDecrementStep,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.stepValueRequired;
            }
            final step = double.tryParse(value);
            if (step == null || step <= 0) {
              return l10n.stepValueMustBeAPositiveNumber;
            }
            _stepValue = step;
            return null;
          },
        ),
      ],
    );
  }
}
