import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../app/theme/app_theme.dart';
import '../../app/theme/theme_mode_provider.dart';
import '../../app/config/locale_provider.dart';

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
                  color: theme.colorScheme.outline.withOpacity(0.2),
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
    final theme = Theme.of(context);
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
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.upload),
          title: const Text('Export Data'),
          subtitle: const Text('Export all app data to a file'),
          onTap: () {
            // TODO: Implement export (TASK-033)
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Export functionality will be implemented in TASK-033'),
              ),
            );
          },
        ),
        const Divider(height: 1),
        ListTile(
          leading: const Icon(Icons.download),
          title: const Text('Import Data'),
          subtitle: const Text('Import data from a file'),
          onTap: () {
            // TODO: Implement import (TASK-034)
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Import functionality will be implemented in TASK-034'),
              ),
            );
          },
        ),
      ],
    );
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

