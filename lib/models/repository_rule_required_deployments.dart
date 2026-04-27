import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_required_deployments_parameters.dart';
import 'package:github_out/models/repository_rule_required_deployments_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_required_deployments}
/// required_deployments
/// Choose which environments must be successfully deployed to before refs can
/// be pushed into a ref that matches this rule.
/// {@endtemplate}
@immutable
class RepositoryRuleRequiredDeployments {
  /// {@macro repository_rule_required_deployments}
  RepositoryRuleRequiredDeployments({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleRequiredDeployments].
  factory RepositoryRuleRequiredDeployments.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleRequiredDeployments',
      json,
      () => RepositoryRuleRequiredDeployments(
        type: RepositoryRuleRequiredDeploymentsType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleRequiredDeploymentsParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleRequiredDeployments? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleRequiredDeployments.fromJson(json);
  }

  final RepositoryRuleRequiredDeploymentsType type;
  final RepositoryRuleRequiredDeploymentsParameters? parameters;

  /// Converts a [RepositoryRuleRequiredDeployments]
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
    return other is RepositoryRuleRequiredDeployments &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
