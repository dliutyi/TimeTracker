import 'app_database.dart';

/// Service for managing the application database.
/// Provides a singleton instance of the database.
class DatabaseService {
  static DatabaseService? _instance;
  AppDatabase? _database;

  DatabaseService._();

  /// Gets the singleton instance of DatabaseService.
  static DatabaseService get instance {
    _instance ??= DatabaseService._();
    return _instance!;
  }

  /// Initializes the database.
  /// Should be called during app startup.
  Future<void> initialize() async {
    _database ??= AppDatabase();
    // Database will be created and migrations run on first access
  }

  /// Gets the database instance.
  /// Throws an exception if database is not initialized.
  AppDatabase get database {
    if (_database == null) {
      throw StateError(
        'Database not initialized. Call DatabaseService.instance.initialize() first.',
      );
    }
    return _database!;
  }

  /// Closes the database connection.
  /// Should be called when the app is shutting down.
  Future<void> close() async {
    await _database?.close();
    _database = null;
  }
}

