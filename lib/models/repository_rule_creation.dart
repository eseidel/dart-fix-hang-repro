import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_creation_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_creation}
/// creation
/// Only allow users with bypass permission to create matching refs.
/// {@endtemplate}
@immutable
class RepositoryRuleCreation {
  /// {@macro repository_rule_creation}
  const RepositoryRuleCreation({
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleCreation].
  factory RepositoryRuleCreation.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleCreation',
      json,
      () => RepositoryRuleCreation(
        type: RepositoryRuleCreationType.fromJson(json['type'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCreation? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCreation.fromJson(json);
  }

  final RepositoryRuleCreationType type;

  /// Converts a [RepositoryRuleCreation] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleCreation && type == other.type;
  }
}
