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
  double _stepValue = 0.5;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.criterion?.name ?? '');

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
          _selectionLimitController =
              TextEditingController(text: limit.toString());
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
          _minValueController = TextEditingController(text: min.toString());
          _maxValueController = TextEditingController(text: max.toString());
          _stepValueController = TextEditingController(text: step.toString());
        },
      );
    } else {
      // Create mode - set defaults
      _selectedIcon = AppIcons.defaultIcons[0];
      _selectionLimitController = TextEditingController(text: '1');
      _minValueController = TextEditingController(text: '0.0');
      _maxValueController = TextEditingController(text: '10.0');
      _stepValueController = TextEditingController(text: '0.5');
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

  Future<void> _handleSave() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Additional validation
    if (_selectedType == CriterionType.discrete) {
      if (_discreteValues.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('At least one value is required for discrete criteria'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
      if (_selectionLimit <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Selection limit must be greater than 0'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
    } else {
      if (_minValue >= _maxValue) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Min value must be less than max value'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
      if (_stepValue <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Step value must be greater than 0'),
            backgroundColor: Colors.red,
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

      final config = _selectedType == CriterionType.discrete
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
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      height: screenHeight * 0.9,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusXL),
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
                        ? 'Add Criterion'
                        : 'Edit Criterion',
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
                      _buildFirstSection(theme),
                      const SizedBox(height: AppTheme.spacingL),

                      // Second Section: Type Selector
                      _buildSecondSection(theme),
                      const SizedBox(height: AppTheme.spacingL),

                      // Third Section: Configuration (Dynamic)
                      _buildThirdSection(theme),
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
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(widget.criterion == null ? 'Add' : 'Update'),
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

  Widget _buildFirstSection(ThemeData theme) {
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
                  builder: (context) => AlertDialog(
                    title: const Text('Select Icon Type'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.image),
                          title: const Text('Icon'),
                          onTap: () => Navigator.of(context).pop('icon'),
                        ),
                        ListTile(
                          leading: const Text('😀', style: TextStyle(fontSize: 24)),
                          title: const Text('Emoji'),
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
                child: _selectedIcon != null
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
                labelText: 'Name',
                hintText: 'Enter criterion name',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Name is required';
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

  Widget _buildSecondSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Type',
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: AppTheme.spacingS),
        SegmentedButton<CriterionType>(
          segments: const [
            ButtonSegment(
              value: CriterionType.discrete,
              label: Text('Discrete'),
            ),
            ButtonSegment(
              value: CriterionType.continuous,
              label: Text('Continuous'),
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

  Widget _buildThirdSection(ThemeData theme) {
    if (_selectedType == CriterionType.discrete) {
      return _buildDiscreteSection(theme);
    } else {
      return _buildContinuousSection(theme);
    }
  }

  Widget _buildDiscreteSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discrete Configuration',
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: AppTheme.spacingM),
        
        // Selection Limit
        SpeechTextField(
          controller: _selectionLimitController,
          labelText: 'Selection Limit',
          hintText: 'How many values can be selected',
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Selection limit is required';
            }
            final limit = int.tryParse(value);
            if (limit == null || limit <= 0) {
              return 'Selection limit must be a positive number';
            }
            _selectionLimit = limit;
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        
        // Values
        Text(
          'Values',
          style: theme.textTheme.titleSmall,
        ),
        const SizedBox(height: AppTheme.spacingS),
        ...List.generate(_valueControllers.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: AppTheme.spacingS),
            child: Row(
              children: [
                Expanded(
                  child: SpeechTextField(
                    controller: _valueControllers[index],
                    hintText: 'Value ${index + 1}',
                    onChanged: (_) => _updateDiscreteValues(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Value cannot be empty';
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
          label: const Text('Add Value'),
        ),
      ],
    );
  }

  Widget _buildContinuousSection(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Continuous Configuration',
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          controller: _minValueController,
          labelText: 'Min Value',
          hintText: 'Minimum allowed value',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Min value is required';
            }
            final min = double.tryParse(value);
            if (min == null) {
              return 'Min value must be a number';
            }
            _minValue = min;
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          controller: _maxValueController,
          labelText: 'Max Value',
          hintText: 'Maximum allowed value',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Max value is required';
            }
            final max = double.tryParse(value);
            if (max == null) {
              return 'Max value must be a number';
            }
            _maxValue = max;
            if (_maxValue <= _minValue) {
              return 'Max value must be greater than min value';
            }
            return null;
          },
        ),
        const SizedBox(height: AppTheme.spacingM),
        SpeechTextField(
          controller: _stepValueController,
          labelText: 'Step Value',
          hintText: 'Increment/decrement step',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Step value is required';
            }
            final step = double.tryParse(value);
            if (step == null || step <= 0) {
              return 'Step value must be a positive number';
            }
            _stepValue = step;
            return null;
          },
        ),
      ],
    );
  }
}
