import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:yudi_time_tracker/generated/l10n/app_localizations.dart';
import '../../core/repositories/repository_providers.dart';
import '../../core/repositories/settings_repository.dart';

/// Locale setting key
const String _localeKey = 'app_locale';

/// Provider for the current locale
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale?>((ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return LocaleNotifier(settingsRepository);
});

/// Notifier for managing locale state
class LocaleNotifier extends StateNotifier<Locale?> {
  final SettingsRepository _settingsRepository;

  LocaleNotifier(this._settingsRepository) : super(null) {
    _loadLocale();
  }

  /// Loads the saved locale from settings
  Future<void> _loadLocale() async {
    final localeString = await _settingsRepository.getSetting(_localeKey);
    if (localeString != null) {
      state = AppLocalizations.supportedLocales.firstWhere(
        (locale) => locale.languageCode == localeString,
        orElse: () => Locale('en'),
      );
    } else {
      // Default to system locale
      final systemLocale = Intl.systemLocale;
      final localeParts = systemLocale.split('_');
      if (localeParts.isNotEmpty) {
        state = AppLocalizations.supportedLocales.firstWhere(
          (locale) => locale.languageCode == localeParts[0],
          orElse: () => Locale('en'),
        );
      }
    }
  }

  /// Sets the locale and saves it to settings
  Future<void> setLocale(Locale locale) async {
    state = locale;
    await _settingsRepository.setSetting(_localeKey, locale.languageCode);
  }

  /// Resets to system locale
  Future<void> resetToSystemLocale() async {
    final systemLocale = Intl.systemLocale;
    final localeParts = systemLocale.split('_');
    if (localeParts.isNotEmpty) {
      final locale = Locale(localeParts[0]);
      state = locale;
      await _settingsRepository.setSetting(_localeKey, locale.languageCode);
    }
  }
}
