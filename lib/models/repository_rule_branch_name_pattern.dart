import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_branch_name_pattern}
/// branch_name_pattern
/// Parameters to be used for the branch_name_pattern rule
/// {@endtemplate}
@immutable
class RepositoryRuleBranchNamePattern {
  /// {@macro repository_rule_branch_name_pattern}
  RepositoryRuleBranchNamePattern({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleBranchNamePattern].
  factory RepositoryRuleBranchNamePattern.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleBranchNamePattern',
      json,
      () => RepositoryRuleBranchNamePattern(
        type: RepositoryRuleBranchNamePatternType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleBranchNamePatternParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleBranchNamePattern? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleBranchNamePattern.fromJson(json);
  }

  final RepositoryRuleBranchNamePatternType type;
  final RepositoryRuleBranchNamePatternParameters? parameters;

  /// Converts a [RepositoryRuleBranchNamePattern] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleBranchNamePattern &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
