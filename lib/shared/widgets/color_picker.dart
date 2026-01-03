import 'package:flutter/material.dart';
import '../../app/theme/app_theme.dart';

/// Predefined color palette for task colors (slightly darker)
class TaskColors {
  static const List<Color> palette = [
    Color(0xFFF0AA11), // Main app color
    Color(0xFFE55A5A), // Red (darker)
    Color(0xFF3EB8B0), // Teal (darker)
    Color(0xFF3599B3), // Blue (darker)
    Color(0xFF7AB89A), // Green (darker)
    Color(0xFFE5D48F), // Yellow (darker)
    Color(0xFFC5894A), // Orange (darker)
    Color(0xFF8A7AE6), // Purple (darker)
    Color(0xFFE5619A), // Pink (darker)
    Color(0xFF5648C9), // Indigo (darker)
    Color(0xFF009A7A), // Mint (darker)
    Color(0xFFC95A3D), // Coral (darker)
    Color(0xFF5C9BD9), // Light Blue (darker)
    Color(0xFF3DC9A6), // Turquoise (darker)
    Color(0xFFD9B925), // Gold (darker)
    Color(0xFF7D4798), // Amethyst (darker)
  ];

  /// Convert Color to hex string
  static String colorToHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2).toLowerCase()}';
  }

  /// Convert hex string to Color
  static Color? hexToColor(String hex) {
    try {
      if (hex.startsWith('#')) {
        hex = hex.substring(1);
      }
      if (hex.length == 6) {
        return Color(int.parse('FF$hex', radix: 16));
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}

/// Color picker widget
class ColorPicker extends StatelessWidget {
  final String? selectedColor;
  final ValueChanged<String> onColorSelected;

  const ColorPicker({
    super.key,
    this.selectedColor,
    required this.onColorSelected,
  });

  /// Show color picker as bottom sheet
  static Future<String?> showColorPicker(
    BuildContext context, {
    String? selectedColor,
  }) async {
    String? result;
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _ColorPickerSheet(
        selectedColor: selectedColor,
        onColorSelected: (color) {
          result = color;
          Navigator.of(context).pop();
        },
      ),
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusXL),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: AppTheme.spacingM),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurfaceVariant,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppTheme.spacingM),
            child: Text(
              'Select Color',
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppTheme.spacingM),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: AppTheme.spacingM,
                mainAxisSpacing: AppTheme.spacingM,
              ),
              itemCount: TaskColors.palette.length,
              itemBuilder: (context, index) {
                final color = TaskColors.palette[index];
                final colorHex = TaskColors.colorToHex(color);
                final isSelected = selectedColor == colorHex;

                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => onColorSelected(colorHex),
                    borderRadius: BorderRadius.circular(AppTheme.radiusM),
                    child: Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(AppTheme.radiusM),
                        border: isSelected
                            ? Border.all(
                                color: theme.colorScheme.onSurface,
                                width: 3,
                              )
                            : Border.all(
                                color: theme.colorScheme.outline,
                                width: 1,
                              ),
                      ),
                      child: isSelected
                          ? Icon(
                              Icons.check,
                              color: _getContrastColor(color),
                            )
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: AppTheme.spacingM),
        ],
      ),
    );
  }

  Color _getContrastColor(Color backgroundColor) {
    // Calculate relative luminance
    final luminance = backgroundColor.computeLuminance();
    // Return black for light colors, white for dark colors
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}

class _ColorPickerSheet extends StatelessWidget {
  final String? selectedColor;
  final ValueChanged<String> onColorSelected;

  const _ColorPickerSheet({
    required this.selectedColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ColorPicker(
      selectedColor: selectedColor,
      onColorSelected: onColorSelected,
    );
  }
}

