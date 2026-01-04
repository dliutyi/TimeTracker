import 'package:flutter/material.dart';
import '../../app/theme/app_theme.dart';

/// Dialog types
enum DialogType { warning, info, confirmation, error }

/// Confirmation dialog widget
class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String message;
  final DialogType type;
  final String? primaryButtonText;
  final String? secondaryButtonText;
  final String? cancelButtonText;
  final VoidCallback? onPrimary;
  final VoidCallback? onSecondary;
  final VoidCallback? onCancel;

  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.message,
    this.type = DialogType.confirmation,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.cancelButtonText,
    this.onPrimary,
    this.onSecondary,
    this.onCancel,
  });

  /// Show confirmation dialog
  static Future<bool?> show(
    BuildContext context, {
    required String title,
    required String message,
    DialogType type = DialogType.confirmation,
    String? primaryButtonText,
    String? secondaryButtonText,
    String? cancelButtonText,
    VoidCallback? onPrimary,
    VoidCallback? onSecondary,
    VoidCallback? onCancel,
  }) async {
    return showDialog<bool>(
      context: context,
      builder:
          (context) => ConfirmationDialog(
            title: title,
            message: message,
            type: type,
            primaryButtonText: primaryButtonText,
            secondaryButtonText: secondaryButtonText,
            cancelButtonText: cancelButtonText,
            onPrimary: onPrimary ?? () => Navigator.of(context).pop(true),
            onSecondary: onSecondary ?? () => Navigator.of(context).pop(false),
            onCancel: onCancel ?? () => Navigator.of(context).pop(null),
          ),
    );
  }

  /// Show delete confirmation dialog
  static Future<bool?> showDeleteConfirmation(
    BuildContext context, {
    required String title,
    required String message,
    String deleteText = 'Delete',
    String cancelText = 'Cancel',
  }) async {
    return show(
      context,
      title: title,
      message: message,
      type: DialogType.warning,
      primaryButtonText: deleteText,
      cancelButtonText: cancelText,
    );
  }

  /// Show disable confirmation dialog
  static Future<bool?> showDisableConfirmation(
    BuildContext context, {
    required String title,
    required String message,
    String disableText = 'Disable',
    String cancelText = 'Cancel',
  }) async {
    return show(
      context,
      title: title,
      message: message,
      type: DialogType.info,
      primaryButtonText: disableText,
      cancelButtonText: cancelText,
    );
  }

  /// Show import confirmation dialog
  static Future<bool?> showImportConfirmation(
    BuildContext context, {
    required String title,
    required String message,
    String importText = 'Import',
    String cancelText = 'Cancel',
  }) async {
    return show(
      context,
      title: title,
      message: message,
      type: DialogType.warning,
      primaryButtonText: importText,
      cancelButtonText: cancelText,
    );
  }

  IconData _getIcon() {
    switch (type) {
      case DialogType.warning:
        return Icons.warning_amber_rounded;
      case DialogType.info:
        return Icons.info_outline_rounded;
      case DialogType.confirmation:
        return Icons.help_outline_rounded;
      case DialogType.error:
        return Icons.error_outline_rounded;
    }
  }

  Color _getIconColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (type) {
      case DialogType.warning:
        return Colors.orange;
      case DialogType.info:
        return theme.colorScheme.primary;
      case DialogType.confirmation:
        return theme.colorScheme.primary;
      case DialogType.error:
        return theme.colorScheme.error;
    }
  }

  String _getPrimaryButtonText() {
    if (primaryButtonText != null) return primaryButtonText!;
    switch (type) {
      case DialogType.warning:
        return 'Confirm';
      case DialogType.info:
        return 'OK';
      case DialogType.confirmation:
        return 'Confirm';
      case DialogType.error:
        return 'OK';
    }
  }

  String _getCancelButtonText() {
    return cancelButtonText ?? 'Cancel';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = _getIconColor(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTheme.radiusL),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(_getIcon(), color: iconColor, size: 48),
            const SizedBox(height: AppTheme.spacingM),
            Text(
              title,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppTheme.spacingS),
            Text(
              message,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppTheme.spacingL),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (cancelButtonText != null || onCancel != null)
                  Flexible(
                    child: TextButton(
                      onPressed:
                          onCancel ?? () => Navigator.of(context).pop(null),
                      child: Text(
                        _getCancelButtonText(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                if (secondaryButtonText != null && onSecondary != null) ...[
                  const SizedBox(width: AppTheme.spacingS),
                  Flexible(
                    child: OutlinedButton(
                      onPressed: onSecondary,
                      child: Text(
                        secondaryButtonText!,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
                const SizedBox(width: AppTheme.spacingS),
                Flexible(
                  child: ElevatedButton(
                    onPressed:
                        onPrimary ?? () => Navigator.of(context).pop(true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          type == DialogType.error
                              ? theme.colorScheme.error
                              : iconColor,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      _getPrimaryButtonText(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
