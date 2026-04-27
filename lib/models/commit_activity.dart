import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template commit_activity}
/// Commit Activity
/// Commit Activity
/// {@endtemplate}
@immutable
class CommitActivity {
  /// {@macro commit_activity}
  CommitActivity({
    required this.days,
    required this.total,
    required this.week,
  });

  /// Converts a `Map<String, dynamic>` to a [CommitActivity].
  factory CommitActivity.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CommitActivity',
      json,
      () => CommitActivity(
        days: (json['days'] as List).cast<int>(),
        total: (json['total'] as int),
        week: (json['week'] as int),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitActivity? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CommitActivity.fromJson(json);
  }

  /// example: `0`
  /// example: `3`
  /// example: `26`
  /// example: `20`
  /// example: `39`
  /// example: `1`
  /// example: `0`
  final List<int> days;

  /// example: `89`
  final int total;

  /// example: `1336280400`
  final int week;

  /// Converts a [CommitActivity] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'days': days,
      'total': total,
      'week': week,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    listHash(days),
    total,
    week,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CommitActivity &&
        listsEqual(this.days, other.days) &&
        this.total == other.total &&
        this.week == other.week;
  }
}
