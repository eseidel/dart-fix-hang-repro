import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_non_fast_forward_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_non_fast_forward}
/// non_fast_forward
/// Prevent users with push access from force pushing to refs.
/// {@endtemplate}
@immutable
class RepositoryRuleNonFastForward {
  /// {@macro repository_rule_non_fast_forward}
  const RepositoryRuleNonFastForward({
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleNonFastForward].
  factory RepositoryRuleNonFastForward.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleNonFastForward',
      json,
      () => RepositoryRuleNonFastForward(
        type: RepositoryRuleNonFastForwardType.fromJson(json['type'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleNonFastForward? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleNonFastForward.fromJson(json);
  }

  final RepositoryRuleNonFastForwardType type;

  /// Converts a [RepositoryRuleNonFastForward] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleNonFastForward && type == other.type;
  }
}
