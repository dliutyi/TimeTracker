import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/theme/app_theme.dart';
import '../../../core/models/criterion.dart';
import '../../../core/models/criterion_config.dart';
import '../../../core/models/criterion_type.dart';
import '../../../core/repositories/repository_providers.dart';
import '../../../core/constants/icons.dart';
import '../../../shared/widgets/speech_text_field.dart';
import '../../../shared/widgets/icon_picker.dart';

/// Add/Edit Criterion Widget
class AddEditCriterionWidget extends ConsumerStatefulWidget {
  final Criterion? criterion; // If null, create mode; if not null, edit mode

  const AddEditCriterionWidget({
    super.key,
    this.criterion,
  });

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
  IconData? _selectedIcon;
  String? _selectedEmoji;
  CriterionType _selectedType = CriterionType.discrete;
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;

  // Discrete configuration
  final List<TextEditingController> _valueControllers = [];
  final List<FocusNode> _valueFocusNodes = [];
  late TextEditingController _selectionLimitController;

  // Continuous configuration
  late TextEditingController _minValueController;
  late TextEditingController _maxValueController;
  late TextEditingController _stepValueController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.criterion?.name ?? '');

    // Initialize icon/emoji
    if (widget.criterion != null) {
      try {
        final iconIndex = int.tryParse(widget.criterion!.icon);
        if (iconIndex != null) {
          _selectedIcon = AppIcons.getIcon(iconIndex);
        } else {
          _selectedEmoji = widget.criterion!.icon;
        }
      } catch (e) {
        // Use default
      }
    }
    _selectedIcon ??= AppIcons.defaultIcons[0];

    // Initialize type
    if (widget.criterion != null) {
      _selectedType = widget.criterion!.type;
    }

    // Initialize configuration
    _initializeConfiguration();
  }

  void _initializeConfiguration() {
    if (widget.criterion != null) {
      final config = widget.criterion!.config;
      config.when(
        discrete: (selectionLimit, values) {
          _selectionLimitController =
              TextEditingController(text: selectionLimit.toString());
          for (final value in values) {
            final controller = TextEditingController(text: value);
            final focusNode = FocusNode();
            _valueControllers.add(controller);
            _valueFocusNodes.add(focusNode);
          }
        },
        continuous: (minValue, maxValue, stepValue) {
          _minValueController =
              TextEditingController(text: minValue.toString());
          _maxValueController =
              TextEditingController(text: maxValue.toString());
          _stepValueController =
              TextEditingController(text: stepValue.toString());
        },
      );
    } else {
      // Default values for new criterion
      _selectionLimitController = TextEditingController(text: '1');
      _minValueController = TextEditingController(text: '0');
      _maxValueController = TextEditingController(text: '10');
      _stepValueController = TextEditingController(text: '1');
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _selectionLimitController.dispose();
    for (final controller in _valueControllers) {
      controller.dispose();
    }
    for (final focusNode in _valueFocusNodes) {
      focusNode.dispose();
    }
    _minValueController.dispose();
    _maxValueController.dispose();
    _stepValueController.dispose();
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
      final criterionRepository = ref.read(criterionRepositoryProvider);
      final iconString = _selectedEmoji ??
          (AppIcons.findIconIndex(_selectedIcon!)?.toString() ?? '0');

      final now = DateTime.now();
      final config = _selectedType == CriterionType.discrete
          ? _buildDiscreteConfig()
          : _buildContinuousConfig();

      final criterion = Criterion(
        id: widget.criterion?.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
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

      if (mounted) {
        Navigator.of(context).pop(criterion);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving criterion: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  CriterionConfig _buildDiscreteConfig() {
    final values = _valueControllers
        .map((c) => c.text.trim())
        .where((v) => v.isNotEmpty)
        .toList();
    final selectionLimit = int.tryParse(_selectionLimitController.text) ?? 1;
    return CriterionConfig.discrete(
      selectionLimit: selectionLimit,
      values: values,
    );
  }

  CriterionConfig _buildContinuousConfig() {
    final minValue = double.tryParse(_minValueController.text) ?? 0.0;
    final maxValue = double.tryParse(_maxValueController.text) ?? 10.0;
    final stepValue = double.tryParse(_stepValueController.text) ?? 1.0;
    return CriterionConfig.continuous(
      minValue: minValue,
      maxValue: maxValue,
      stepValue: stepValue,
    );
  }

  void _handleDiscard() {
    Navigator.of(context).pop();
  }

  Future<void> _handleIconTap() async {
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

  Future<void> _handleEmojiTap() async {
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

  void _addValueField() {
    setState(() {
      _valueControllers.add(TextEditingController());
      _valueFocusNodes.add(FocusNode());
    });
  }

  void _removeValueField(int index) {
    if (_valueControllers.length > 1) {
      setState(() {
        _valueControllers[index].dispose();
        _valueFocusNodes[index].dispose();
        _valueControllers.removeAt(index);
        _valueFocusNodes.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isEditMode = widget.criterion != null;

    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(AppTheme.spacingM),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isEditMode ? l10n.updateCriterion : l10n.addCriterion,
                    style: theme.textTheme.headlineSmall,
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: _handleDiscard,
                  ),
                ],
              ),
            ),
            const Divider(),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppTheme.spacingM),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Section: Icon and Name
                    _buildFirstSection(l10n, theme),

                    const SizedBox(height: AppTheme.spacingL),

                    // Second Section: Type Selector
                    _buildSecondSection(l10n, theme),

                    const SizedBox(height: AppTheme.spacingL),

                    // Third Section: Configuration (Dynamic)
                    _buildThirdSection(l10n, theme),
                  ],
                ),
              ),
            ),

            // Fourth Section: Action Buttons (Docked at bottom)
            _buildActionButtons(l10n, theme),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstSection(AppLocalizations l10n, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon/Emoji selector
        Row(
          children: [
            GestureDetector(
              onTap: _handleIconTap,
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: _selectedEmoji != null
                    ? Center(
                        child: Text(
                          _selectedEmoji!,
                          style: const TextStyle(fontSize: 32),
                        ),
                      )
                    : Icon(
                        _selectedIcon,
                        size: 32,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
              ),
            ),
            const SizedBox(width: AppTheme.spacingM),
            Expanded(
              child: SpeechTextField(
                label: l10n.criterionName,
                controller: _nameController,
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
        const SizedBox(height: AppTheme.spacingS),
        // Emoji button
        TextButton.icon(
          onPressed: _handleEmojiTap,
          icon: const Icon(Icons.emoji_emotions),
          label: const Text('Use Emoji'),
        ),
      ],
    );
  }

  Widget _buildSecondSection(AppLocalizations l10n, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.criterionType,
          style: theme.textTheme.titleMedium,
        ),
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

  Widget _buildThirdSection(AppLocalizations l10n, ThemeData theme) {
    if (_selectedType == CriterionType.discrete) {
      return _buildDiscreteSection(l10n, theme);
    } else {
      return _buildContinuousSection(l10n, theme);
    }
  }

  Widget _buildDiscreteSection(AppLocalizations l10n, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Values list
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.values,
              style: theme.textTheme.titleMedium,
            ),
            TextButton.icon(
              onPressed: _addValueField,
              icon: const Icon(Icons.add),
              label: Text(l10n.addValue),
            ),
          ],
        ),
        const SizedBox(height: AppTheme.spacingS),
        ...List.generate(_valueControllers.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: AppTheme.spacingS),
            child: Row(
              children: [
                Expanded(
                  child: SpeechTextField(
                    label: '${l10n.value} ${index + 1}',
                    controller: _valueControllers[index],
                    focusNode: _valueFocusNodes[index],
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return l10n.atLeastOneValue;
                      }
                      return null;
                    },
                  ),
                ),
                if (_valueControllers.length > 1)
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () => _removeValueField(index),
                    color: theme.colorScheme.error,
                  ),
              ],
            ),
          );
        }),

        const SizedBox(height: AppTheme.spacingL),

        // Selection limit
        SpeechTextField(
          label: l10n.selectionLimit,
          controller: _selectionLimitController,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.selectionLimitRequired;
            }
            final limit = int.tryParse(value);
            if (limit == null || limit <= 0) {
              return l10n.selectionLimitRequired;
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildContinuousSection(AppLocalizations l10n, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpeechTextField(
          label: l10n.minValue,
          controller: _minValueController,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.minMustBeLessThanMax;
            }
            final min = double.tryParse(value);
            if (min == null) {
              return l10n.minMustBeLessThanMax;
            }
            final max = double.tryParse(_maxValueController.text);
            if (max != null && min >= max) {
              return l10n.minMustBeLessThanMax;
            }
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          label: l10n.maxValue,
          controller: _maxValueController,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.minMustBeLessThanMax;
            }
            final max = double.tryParse(value);
            if (max == null) {
              return l10n.minMustBeLessThanMax;
            }
            final min = double.tryParse(_minValueController.text);
            if (min != null && min >= max) {
              return l10n.minMustBeLessThanMax;
            }
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          label: l10n.stepValue,
          controller: _stepValueController,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return l10n.stepMustBeGreaterThanZero;
            }
            final step = double.tryParse(value);
            if (step == null || step <= 0) {
              return l10n.stepMustBeGreaterThanZero;
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildActionButtons(AppLocalizations l10n, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.spacingM),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border(
          top: BorderSide(color: theme.dividerColor),
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
              onPressed: _isSaving ? null : _handleSave,
              child: _isSaving
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(widget.criterion == null
                      ? l10n.addCriterion
                      : l10n.updateCriterion),
            ),
          ),
        ],
      ),
    );
  }
}

