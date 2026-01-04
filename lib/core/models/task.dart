import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

/// Represents a task that users can track time for.
@freezed
class Task with _$Task {
  const factory Task({
    /// Unique identifier for the task
    required String id,

    /// Icon identifier (String representation of icon)
    required String icon,

    /// Task name (max 32 characters)
    required String name,

    /// Optional motivational phrase or description (max 128 characters)
    String? motto,

    /// Task color (hex color string, e.g., "#f0aa11")
    @Default('#f0aa11') String color,

    /// List of criterion IDs associated with this task
    @Default([]) List<String> criterionIds,

    /// Timestamp when the task was created
    required DateTime createdAt,

    /// Timestamp when the task was last updated
    required DateTime updatedAt,

    /// Timestamp when the task was disabled (null if active)
    DateTime? disabledAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

