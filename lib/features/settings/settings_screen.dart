import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import '../../app/theme/app_theme.dart';
import '../../app/theme/theme_mode_provider.dart';
import '../../app/config/locale_provider.dart';
import '../../core/services/export_service.dart';
import '../../core/services/import_service.dart';
import '../../shared/widgets/confirmation_dialog.dart';
import '../tasks/list_tasks_screen.dart';
import '../criteria/list_criteria_screen.dart';

/// App version constant
const String appVersion = '0.1.0';

/// Settings screen
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(AppTheme.spacingM),
              children: [
                // Dark Mode Section
                _buildSection(
                  context,
                  title: 'Dark Mode',
                  children: [
                    _buildDarkModeSelector(context, ref),
                  ],
                ),
                const SizedBox(height: AppTheme.spacingL),

                // Localization Section
                _buildSection(
                  context,
                  title: 'Language',
                  children: [
                    _buildLocalizationSelector(context, ref, l10n),
                  ],
                ),
                const SizedBox(height: AppTheme.spacingL),

                // Data Management Section
                _buildSection(
                  context,
                  title: 'Data Management',
                  children: [
                    _buildDataManagementButtons(context, l10n),
                  ],
                ),
              ],
            ),
          ),

          // App Version (Docked at bottom)
          Container(
            padding: const EdgeInsets.all(AppTheme.spacingM),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: theme.colorScheme.outline.withValues(alpha: 0.2),
                ),
              ),
            ),
            child: Center(
              child: Text(
                'Version $appVersion',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppTheme.spacingS,
            bottom: AppTheme.spacingS,
          ),
          child: Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Card(
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  Widget _buildDarkModeSelector(BuildContext context, WidgetRef ref) {
    final appThemeMode = ref.watch(themeModeProvider);
    final themeModeNotifier = ref.read(themeModeProvider.notifier);

    return Column(
      children: [
        RadioListTile<AppThemeMode>(
          title: const Text('Light'),
          value: AppThemeMode.light,
          groupValue: appThemeMode,
          onChanged: (value) {
            if (value != null) {
              themeModeNotifier.setThemeMode(value);
            }
          },
        ),
        RadioListTile<AppThemeMode>(
          title: const Text('Dark'),
          value: AppThemeMode.dark,
          groupValue: appThemeMode,
          onChanged: (value) {
            if (value != null) {
              themeModeNotifier.setThemeMode(value);
            }
          },
        ),
        RadioListTile<AppThemeMode>(
          title: const Text('Automatic'),
          subtitle: const Text('Follow system setting'),
          value: AppThemeMode.system,
          groupValue: appThemeMode,
          onChanged: (value) {
            if (value != null) {
              themeModeNotifier.setThemeMode(value);
            }
          },
        ),
      ],
    );
  }

  Widget _buildLocalizationSelector(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) {
    final currentLocale = ref.watch(localeProvider) ?? const Locale('en');
    final localeNotifier = ref.read(localeProvider.notifier);
    final supportedLocales = AppLocalizations.supportedLocales;

    return ListTile(
      title: const Text('Language'),
      subtitle: Text(_getLanguageName(currentLocale)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        _showLanguagePicker(context, ref, currentLocale, supportedLocales, localeNotifier);
      },
    );
  }

  void _showLanguagePicker(
    BuildContext context,
    WidgetRef ref,
    Locale currentLocale,
    List<Locale> supportedLocales,
    LocaleNotifier localeNotifier,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Language'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: supportedLocales.length,
            itemBuilder: (context, index) {
              final locale = supportedLocales[index];
              final isSelected = locale.languageCode == currentLocale.languageCode;

              return RadioListTile<Locale>(
                title: Text(_getLanguageName(locale)),
                value: locale,
                groupValue: isSelected ? currentLocale : null,
                onChanged: (selectedLocale) {
                  if (selectedLocale != null) {
                    localeNotifier.setLocale(selectedLocale);
                    Navigator.of(context).pop();
                  }
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _buildDataManagementButtons(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Consumer(
      builder: (context, ref, child) {
        return Column(
          children: [
            ListTile(
              leading: const Icon(Icons.upload),
              title: const Text('Export Data'),
              subtitle: const Text('Export all app data to a file'),
              onTap: () => _handleExport(context, ref),
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.download),
              title: const Text('Import Data'),
              subtitle: const Text('Import data from a file'),
              onTap: () => _handleImport(context, ref),
            ),
          ],
        );
      },
    );
  }

  Future<void> _handleExport(BuildContext context, WidgetRef ref) async {
    final exportService = ref.read(exportServiceProvider);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    // Show loading indicator
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      // Export data
      final jsonData = await exportService.exportData();

      // Close loading indicator
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      // Create file name with timestamp
      final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
      final fileName = 'yudi_time_tracker_export_$timestamp.json';

      // Share the file
      if (context.mounted) {
        // Save to temporary file first, then share
        final tempDir = await getTemporaryDirectory();
        final file = File('${tempDir.path}/$fileName');
        await file.writeAsString(jsonData);

        final result = await Share.shareXFiles(
          [XFile(file.path, name: fileName, mimeType: 'application/json')],
          text: 'YuDi Time Tracker Export',
        );

        if (result.status == ShareResultStatus.success) {
          scaffoldMessenger.showSnackBar(
            const SnackBar(
              content: Text('Data exported successfully'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    } catch (e) {
      // Close loading indicator if still open
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      if (context.mounted) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Failed to export data: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _handleImport(BuildContext context, WidgetRef ref) async {
    final importService = ref.read(importServiceProvider);

    // Show confirmation dialog first
    final confirmed = await ConfirmationDialog.showImportConfirmation(
      context,
      title: 'Import Data',
      message: 'All existing data will be permanently deleted.\n\n'
          'All current tasks, criteria, sessions, and settings will be lost.\n\n'
          'Data will be replaced with imported data.\n\n'
          'This action cannot be undone.',
      importText: 'Import',
      cancelText: 'Cancel',
    );

    if (confirmed != true || !context.mounted) {
      return;
    }

    // Pick file
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (result == null || result.files.single.path == null || !context.mounted) {
      return;
    }

    final filePath = result.files.single.path!;
    final file = File(filePath);

    // Show loading indicator
    if (!context.mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      // Read file
      final jsonData = await file.readAsString();

      // Import data
      await importService.importData(jsonData);

      // Invalidate providers to refresh UI
      ref.invalidate(tasksProvider);
      ref.invalidate(criteriaProvider);

      // Close loading indicator
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Data imported successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      // Close loading indicator if still open
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to import data: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  String _getLanguageName(Locale locale) {
    // Map of locale codes to language names
    const languageNames = {
      'en': 'English',
      'es': 'Spanish',
      'zh': 'Chinese',
      'hi': 'Hindi',
      'ar': 'Arabic',
      'pt': 'Portuguese',
      'bn': 'Bengali',
      'ru': 'Russian',
      'ja': 'Japanese',
      'pa': 'Punjabi',
      'de': 'German',
      'jv': 'Javanese',
      'ko': 'Korean',
      'fr': 'French',
      'te': 'Telugu',
      'mr': 'Marathi',
      'tr': 'Turkish',
      'ta': 'Tamil',
      'vi': 'Vietnamese',
      'it': 'Italian',
      'ur': 'Urdu',
      'uk': 'Ukrainian',
    };
    return languageNames[locale.languageCode] ?? locale.languageCode.toUpperCase();
  }
}

