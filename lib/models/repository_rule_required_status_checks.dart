import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_params_status_check_configuration.dart';
import 'package:github_out/models/repository_rule_required_status_checks_parameters.dart';
import 'package:github_out/models/repository_rule_required_status_checks_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_required_status_checks}
/// required_status_checks
/// Choose which status checks must pass before the ref is updated. When
/// enabled, commits must first be pushed to another ref where the checks pass.
/// {@endtemplate}
@immutable
class RepositoryRuleRequiredStatusChecks {
  /// {@macro repository_rule_required_status_checks}
  RepositoryRuleRequiredStatusChecks({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleRequiredStatusChecks].
  factory RepositoryRuleRequiredStatusChecks.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleRequiredStatusChecks',
      json,
      () => RepositoryRuleRequiredStatusChecks(
        type: RepositoryRuleRequiredStatusChecksType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleRequiredStatusChecksParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleRequiredStatusChecks? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleRequiredStatusChecks.fromJson(json);
  }

  final RepositoryRuleRequiredStatusChecksType type;
  final RepositoryRuleRequiredStatusChecksParameters? parameters;

  /// Converts a [RepositoryRuleRequiredStatusChecks]
  /// to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleRequiredStatusChecks &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
