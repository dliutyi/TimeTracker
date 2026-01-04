import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(AppTheme.spacingM),
                children: [
                  // Dark Mode Section
                  _buildSection(
                    context,
                    title: l10n.darkMode,
                    children: [_buildDarkModeSelector(context, ref, l10n)],
                  ),
                  const SizedBox(height: AppTheme.spacingL),

                  // Localization Section
                  _buildSection(
                    context,
                    title: l10n.language,
                    children: [_buildLocalizationSelector(context, ref, l10n)],
                  ),
                  const SizedBox(height: AppTheme.spacingL),

                  // Data Management Section
                  _buildSection(
                    context,
                    title: l10n.dataManagement,
                    children: [
                      _buildDataManagementButtons(context, theme, l10n),
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
                  '${l10n.version} $appVersion',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ],
        ),
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
        Card(child: Column(children: children)),
      ],
    );
  }

  Widget _buildDarkModeSelector(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) {
    final appThemeMode = ref.watch(themeModeProvider);
    final themeModeNotifier = ref.read(themeModeProvider.notifier);

    return Column(
      children: [
        RadioListTile<AppThemeMode>(
          title: Text(l10n.light),
          value: AppThemeMode.light,
          groupValue: appThemeMode,
          onChanged: (value) {
            if (value != null) {
              themeModeNotifier.setThemeMode(value);
            }
          },
        ),
        RadioListTile<AppThemeMode>(
          title: Text(l10n.dark),
          value: AppThemeMode.dark,
          groupValue: appThemeMode,
          onChanged: (value) {
            if (value != null) {
              themeModeNotifier.setThemeMode(value);
            }
          },
        ),
        RadioListTile<AppThemeMode>(
          title: Text(l10n.automatic),
          subtitle: Text(l10n.followSystemSetting),
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
    var supportedLocales = AppLocalizations.supportedLocales.toList();
    supportedLocales.sort(
      (a, b) => _getLanguageName(a, l10n).compareTo(_getLanguageName(b, l10n)),
    );
    return ListTile(
      title: Text(l10n.language),
      subtitle: Text(_getLanguageName(currentLocale, l10n)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        _showLanguagePicker(
          context,
          ref,
          currentLocale,
          supportedLocales,
          localeNotifier,
          l10n,
        );
      },
    );
  }

  void _showLanguagePicker(
    BuildContext context,
    WidgetRef ref,
    Locale currentLocale,
    List<Locale> supportedLocales,
    LocaleNotifier localeNotifier,
    AppLocalizations l10n,
  ) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(l10n.selectLanguage),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: supportedLocales.length,
                itemBuilder: (context, index) {
                  final locale = supportedLocales[index];
                  final isSelected =
                      locale.languageCode == currentLocale.languageCode;

                  return RadioListTile<Locale>(
                    title: Text(_getLanguageName(locale, l10n)),
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
                child: Text(l10n.cancel),
              ),
            ],
          ),
    );
  }

  Widget _buildDataManagementButtons(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
  ) {
    return Consumer(
      builder: (context, ref, child) {
        return Column(
          children: [
            ListTile(
              leading: const Icon(Icons.upload),
              title: Text(l10n.exportData),
              subtitle: Text(l10n.exportAllAppDataToFile),
              onTap: () => _handleExport(context, ref, l10n),
            ),
            Divider(thickness: 1, color: theme.colorScheme.surface),
            ListTile(
              leading: const Icon(Icons.download),
              title: Text(l10n.importData),
              subtitle: Text(l10n.importDataFromFile),
              onTap: () => _handleImport(context, ref, l10n),
            ),
          ],
        );
      },
    );
  }

  Future<void> _handleExport(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) async {
    final exportService = ref.read(exportServiceProvider);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    bool loadingDialogOpen = false;

    // Show loading indicator
    if (context.mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );
      loadingDialogOpen = true;
    }

    try {
      // Export data
      final jsonData = await exportService.exportData();

      // Close loading indicator
      if (context.mounted && loadingDialogOpen) {
        Navigator.of(context).pop();
        loadingDialogOpen = false;
      }

      // Create file name with timestamp
      final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
      final fileName = 'yudi_time_tracker_export_$timestamp.json';

      // Show dialog to choose between share and save
      if (!context.mounted) return;
      final action = await showDialog<String>(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text(l10n.exportData),
              content: Text(l10n.chooseHowToExportData),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop('save'),
                  child: Text(l10n.saveToDevice),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop('share'),
                  child: Text(l10n.share),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(null),
                  child: Text(l10n.cancel),
                ),
              ],
            ),
      );

      if (action == null || !context.mounted) return;

      if (action == 'save') {
        // Allow user to choose save location
        // Use a small delay to ensure dialog is fully closed before opening file picker
        await Future.delayed(const Duration(milliseconds: 100));

        if (!context.mounted) return;

        // Convert JSON string to bytes for Android/iOS
        final bytes = Uint8List.fromList(utf8.encode(jsonData));

        final savePath = await FilePicker.platform.saveFile(
          dialogTitle: l10n.saveExportFile,
          fileName: fileName,
          type: FileType.custom,
          allowedExtensions: ['json'],
          bytes: bytes, // Required for Android/iOS
        );

        if (savePath != null && context.mounted) {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text(l10n.dataSavedTo(savePath)),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      } else if (action == 'share') {
        // Share the file
        final tempDir = await getTemporaryDirectory();
        final file = File('${tempDir.path}/$fileName');
        await file.writeAsString(jsonData);

        final result = await Share.shareXFiles([
          XFile(file.path, name: fileName, mimeType: 'application/json'),
        ], text: 'YuDi Time Tracker Export');

        if (result.status == ShareResultStatus.success) {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text(l10n.dataExportedSuccessfully),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    } catch (e) {
      // Close loading indicator if still open
      if (context.mounted && loadingDialogOpen) {
        try {
          Navigator.of(context).pop();
        } catch (_) {
          // Dialog might already be closed, ignore
        }
        loadingDialogOpen = false;
      }

      if (context.mounted) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text(l10n.errorExportingData(e.toString())),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _handleImport(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) async {
    final importService = ref.read(importServiceProvider);

    // Show confirmation dialog first
    final confirmed = await ConfirmationDialog.showImportConfirmation(
      context,
      title: l10n.importData,
      message: l10n.allExistingDataWillBePermanentlyDeleted,
      importText: l10n.import,
      cancelText: l10n.cancel,
    );

    if (confirmed != true || !context.mounted) {
      return;
    }

    // Pick file
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (result == null ||
        result.files.single.path == null ||
        !context.mounted) {
      return;
    }

    final filePath = result.files.single.path!;
    final file = File(filePath);

    // Show loading indicator
    if (!context.mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (dialogContext) => const Center(child: CircularProgressIndicator()),
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
          SnackBar(
            content: Text(l10n.dataImportedSuccessfully),
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
            content: Text(l10n.errorImportingData(e.toString())),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  String _getLanguageName(Locale locale, AppLocalizations l10n) {
    // Map of locale codes to language names
    final languageNames = {
      'en': l10n.english,
      'es': l10n.spanish,
      'zh': l10n.chinese,
      'hi': l10n.hindi,
      'ar': l10n.arabic,
      'pt': l10n.portuguese,
      'bn': l10n.bengali,
      'ru': l10n.russian,
      'ja': l10n.japanese,
      'pa': l10n.punjabi,
      'de': l10n.german,
      'jv': l10n.javanese,
      'ko': l10n.korean,
      'fr': l10n.french,
      'te': l10n.telugu,
      'mr': l10n.marathi,
      'tr': l10n.turkish,
      'ta': l10n.tamil,
      'vi': l10n.vietnamese,
      'it': l10n.italian,
      'ur': l10n.urdu,
      'uk': l10n.ukrainian,
    };
    return languageNames[locale.languageCode] ??
        locale.languageCode.toUpperCase();
  }
}
