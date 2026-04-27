import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_required_linear_history_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_required_linear_history}
/// required_linear_history
/// Prevent merge commits from being pushed to matching refs.
/// {@endtemplate}
@immutable
class RepositoryRuleRequiredLinearHistory {
  /// {@macro repository_rule_required_linear_history}
  RepositoryRuleRequiredLinearHistory({
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleRequiredLinearHistory].
  factory RepositoryRuleRequiredLinearHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleRequiredLinearHistory',
      json,
      () => RepositoryRuleRequiredLinearHistory(
        type: RepositoryRuleRequiredLinearHistoryType.fromJson(
          json['type'] as String,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleRequiredLinearHistory? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleRequiredLinearHistory.fromJson(json);
  }

  final RepositoryRuleRequiredLinearHistoryType type;

  /// Converts a [RepositoryRuleRequiredLinearHistory]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }

  @override
  int get hashCode => type.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRequiredLinearHistory &&
        this.type == other.type;
  }
}
