import 'package:freezed_annotation/freezed_annotation.dart';
import 'rating_value.dart';

part 'session.freezed.dart';
part 'session.g.dart';

/// Helper function for JSON serialization of ratings map
Map<String, dynamic> _ratingsToJson(Map<String, RatingValue> ratings) {
  return ratings.map((key, value) => MapEntry(key, value.toJson()));
}

/// Helper function for JSON deserialization of ratings map
Map<String, RatingValue> _ratingsFromJson(dynamic json) {
  if (json is Map) {
    return (json as Map).map((key, value) {
      if (value is Map<String, dynamic>) {
        return MapEntry(key.toString(), RatingValue.fromJson(value));
      }
      // If it's already a RatingValue (shouldn't happen but handle it)
      return MapEntry(key.toString(), value as RatingValue);
    });
  }
  return {};
}

/// Represents a time tracking session for a task.
@Freezed(toJson: true, fromJson: true)
class Session with _$Session {
  const factory Session({
    /// Unique identifier for the session
    required String id,

    /// ID of the task this session belongs to
    required String taskId,

    /// Start datetime of the session
    required DateTime startDateTime,

    /// End datetime of the session
    required DateTime endDateTime,

    /// Map of criterion ID to rating value
    @JsonKey(
      toJson: _ratingsToJson,
      fromJson: _ratingsFromJson,
    )
    @Default({})
    Map<String, RatingValue> ratings,

    /// Timestamp when the session was created
    required DateTime createdAt,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

