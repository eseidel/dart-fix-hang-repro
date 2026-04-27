import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_update_parameters.dart';
import 'package:github_out/models/repository_rule_update_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_update}
/// update
/// Only allow users with bypass permission to update matching refs.
/// {@endtemplate}
@immutable
class RepositoryRuleUpdate {
  /// {@macro repository_rule_update}
  const RepositoryRuleUpdate({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleUpdate].
  factory RepositoryRuleUpdate.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleUpdate',
      json,
      () => RepositoryRuleUpdate(
        type: RepositoryRuleUpdateType.fromJson(json['type'] as String),
        parameters: RepositoryRuleUpdateParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleUpdate? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleUpdate.fromJson(json);
  }

  final RepositoryRuleUpdateType type;
  final RepositoryRuleUpdateParameters? parameters;

  /// Converts a [RepositoryRuleUpdate] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'parameters': parameters?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    parameters,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleUpdate &&
        type == other.type &&
        parameters == other.parameters;
  }
}
