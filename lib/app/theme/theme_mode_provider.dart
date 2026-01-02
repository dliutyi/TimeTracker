import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/repositories/repository_providers.dart';
import '../../core/repositories/settings_repository.dart';

/// Theme mode options
enum AppThemeMode {
  light,
  dark,
  system,
}

/// Provider for theme mode state
final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, AppThemeMode>(
  (ref) {
    final settingsRepository = ref.watch(settingsRepositoryProvider);
    return ThemeModeNotifier(settingsRepository);
  },
);

/// Notifier for theme mode
class ThemeModeNotifier extends StateNotifier<AppThemeMode> {
  final SettingsRepository _settingsRepository;
  static const String _themeModeKey = 'theme_mode';
  bool _isInitialized = false;

  ThemeModeNotifier(this._settingsRepository) : super(AppThemeMode.system) {
    _loadThemeMode();
  }

  /// Load theme mode from settings
  Future<void> _loadThemeMode() async {
    if (_isInitialized) return;
    _isInitialized = true;

    try {
      final savedMode = await _settingsRepository.getSetting(_themeModeKey);
      if (savedMode != null) {
        final mode = AppThemeMode.values.firstWhere(
          (mode) => mode.name == savedMode,
          orElse: () => AppThemeMode.system,
        );
        state = mode;
      }
    } catch (e) {
      // If loading fails, use system default
      state = AppThemeMode.system;
    }
  }

  /// Set theme mode and persist to settings
  Future<void> setThemeMode(AppThemeMode mode) async {
    state = mode;
    try {
      await _settingsRepository.setSetting(_themeModeKey, mode.name);
    } catch (e) {
      // If saving fails, continue with the change
      // The user will see the change but it won't persist
    }
  }
}

/// Provider that converts AppThemeMode to Flutter's ThemeMode
final flutterThemeModeProvider = Provider<ThemeMode>((ref) {
  final mode = ref.watch(themeModeProvider);
  switch (mode) {
    case AppThemeMode.light:
      return ThemeMode.light;
    case AppThemeMode.dark:
      return ThemeMode.dark;
    case AppThemeMode.system:
      return ThemeMode.system;
  }
});

