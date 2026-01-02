/// Repository interface for settings operations.
abstract class SettingsRepository {
  /// Gets a setting value by key.
  /// Returns null if the setting doesn't exist.
  Future<String?> getSetting(String key);

  /// Sets a setting value.
  Future<void> setSetting(String key, String value);

  /// Gets all settings as a map.
  Future<Map<String, String>> getAllSettings();

  /// Deletes a setting.
  Future<void> deleteSetting(String key);
}

