import '../models/task.dart';
import '../models/session.dart';
import '../repositories/session_repository.dart';

/// Service for calculating task frequency scores
class FrequencyService {
  final SessionRepository _sessionRepository;

  FrequencyService(this._sessionRepository);

  /// Calculate frequency score for a task
  /// Considers: usage rate, time of day, day of week, day of month
  Future<double> calculateFrequencyScore(Task task) async {
    // Get all sessions for this task
    final sessions = await _sessionRepository.getSessionsByTask(task.id);
    
    if (sessions.isEmpty) {
      return 0.0;
    }

    final now = DateTime.now();
    final currentHour = now.hour;
    final currentDayOfWeek = now.weekday;
    final currentDayOfMonth = now.day;

    // Factor 1: Overall usage rate (weight: 0.4)
    final usageRate = _calculateUsageRate(sessions, now);
    
    // Factor 2: Time of day pattern (weight: 0.2)
    final timeOfDayScore = _calculateTimeOfDayScore(sessions, currentHour);
    
    // Factor 3: Day of week pattern (weight: 0.2)
    final dayOfWeekScore = _calculateDayOfWeekScore(sessions, currentDayOfWeek);
    
    // Factor 4: Day of month pattern (weight: 0.2)
    final dayOfMonthScore = _calculateDayOfMonthScore(sessions, currentDayOfMonth);

    // Weighted combination
    final score = (usageRate * 0.4) +
        (timeOfDayScore * 0.2) +
        (dayOfWeekScore * 0.2) +
        (dayOfMonthScore * 0.2);

    return score;
  }

  /// Calculate overall usage rate
  /// Returns a normalized score between 0 and 1
  double _calculateUsageRate(List<Session> sessions, DateTime now) {
    if (sessions.isEmpty) return 0.0;

    // Calculate total duration of all sessions
    final totalDuration = sessions.fold<Duration>(
      0.seconds,
      (sum, session) => sum + (session.endDateTime.difference(session.startDateTime)),
    );

    // Calculate time since first session (or task creation)
    final firstSession = sessions.reduce(
      (a, b) => a.startDateTime.isBefore(b.startDateTime) ? a : b,
    );
    final timeSpan = now.difference(firstSession.startDateTime);

    if (timeSpan.inSeconds == 0) return 0.0;

    // Usage rate = total duration / time span
    // Normalize to 0-1 range (assuming max 8 hours per day average)
    final usageRate = totalDuration.inSeconds / timeSpan.inSeconds;
    final normalizedRate = (usageRate * 24 * 3600 / (8 * 3600)).clamp(0.0, 1.0);

    return normalizedRate;
  }

  /// Calculate time of day pattern score
  /// Returns a score between 0 and 1 based on how often task is used at current hour
  double _calculateTimeOfDayScore(List<Session> sessions, int currentHour) {
    if (sessions.isEmpty) return 0.0;

    // Count sessions in the same hour window (±2 hours)
    final hourWindow = 2;
    final matchingSessions = sessions.where((session) {
      final sessionHour = session.startDateTime.hour;
      final diff = (sessionHour - currentHour).abs();
      return diff <= hourWindow || diff >= (24 - hourWindow);
    }).length;

    // Normalize by total sessions
    return (matchingSessions / sessions.length).clamp(0.0, 1.0);
  }

  /// Calculate day of week pattern score
  /// Returns a score between 0 and 1 based on how often task is used on current day of week
  double _calculateDayOfWeekScore(List<Session> sessions, int currentDayOfWeek) {
    if (sessions.isEmpty) return 0.0;

    // Count sessions on the same day of week
    final matchingSessions = sessions.where((session) {
      return session.startDateTime.weekday == currentDayOfWeek;
    }).length;

    // Normalize by total sessions
    return (matchingSessions / sessions.length).clamp(0.0, 1.0);
  }

  /// Calculate day of month pattern score
  /// Returns a score between 0 and 1 based on how often task is used on current day of month
  double _calculateDayOfMonthScore(List<Session> sessions, int currentDayOfMonth) {
    if (sessions.isEmpty) return 0.0;

    // Count sessions on similar days of month (±3 days)
    final dayWindow = 3;
    final matchingSessions = sessions.where((session) {
      final sessionDay = session.startDateTime.day;
      final diff = (sessionDay - currentDayOfMonth).abs();
      return diff <= dayWindow;
    }).length;

    // Normalize by total sessions
    return (matchingSessions / sessions.length).clamp(0.0, 1.0);
  }

  /// Sort tasks by frequency
  /// Enabled tasks sorted by frequency (highest first)
  /// Disabled tasks sorted by disable timestamp (most recent first)
  Future<List<Task>> sortTasksByFrequency(List<Task> tasks) async {
    // Separate enabled and disabled tasks
    final enabledTasks = tasks.where((t) => t.disabledAt == null).toList();
    final disabledTasks = tasks.where((t) => t.disabledAt != null).toList();

    // Calculate frequency scores for enabled tasks
    final enabledWithScores = await Future.wait(
      enabledTasks.map((task) async {
        final score = await calculateFrequencyScore(task);
        return (task: task, score: score);
      }),
    );

    // Sort enabled tasks by frequency (highest first)
    enabledWithScores.sort((a, b) => b.score.compareTo(a.score));
    final sortedEnabled = enabledWithScores.map((e) => e.task).toList();

    // Sort disabled tasks by disable timestamp (most recent first)
    disabledTasks.sort((a, b) {
      if (a.disabledAt == null) return 1;
      if (b.disabledAt == null) return -1;
      return b.disabledAt!.compareTo(a.disabledAt!);
    });

    // Combine: enabled first, then disabled
    return [...sortedEnabled, ...disabledTasks];
  }
}

// Extension for Duration
extension DurationExtension on int {
  Duration get seconds => Duration(seconds: this);
}

