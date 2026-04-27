import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_params_workflow_file_reference.dart';
import 'package:github_out/models/repository_rule_workflows_parameters.dart';
import 'package:github_out/models/repository_rule_workflows_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_workflows}
/// workflows
/// Require all changes made to a targeted branch to pass the specified
/// workflows before they can be merged.
/// {@endtemplate}
@immutable
class RepositoryRuleWorkflows {
  /// {@macro repository_rule_workflows}
  RepositoryRuleWorkflows({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleWorkflows].
  factory RepositoryRuleWorkflows.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleWorkflows',
      json,
      () => RepositoryRuleWorkflows(
        type: RepositoryRuleWorkflowsType.fromJson(json['type'] as String),
        parameters: RepositoryRuleWorkflowsParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleWorkflows? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleWorkflows.fromJson(json);
  }

  final RepositoryRuleWorkflowsType type;
  final RepositoryRuleWorkflowsParameters? parameters;

  /// Converts a [RepositoryRuleWorkflows] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleWorkflows &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
