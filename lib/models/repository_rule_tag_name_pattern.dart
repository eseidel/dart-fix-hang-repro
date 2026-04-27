import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_tag_name_pattern}
/// tag_name_pattern
/// Parameters to be used for the tag_name_pattern rule
/// {@endtemplate}
@immutable
class RepositoryRuleTagNamePattern {
  /// {@macro repository_rule_tag_name_pattern}
  RepositoryRuleTagNamePattern({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleTagNamePattern].
  factory RepositoryRuleTagNamePattern.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleTagNamePattern',
      json,
      () => RepositoryRuleTagNamePattern(
        type: RepositoryRuleTagNamePatternType.fromJson(json['type'] as String),
        parameters: RepositoryRuleTagNamePatternParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleTagNamePattern? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleTagNamePattern.fromJson(json);
  }

  final RepositoryRuleTagNamePatternType type;
  final RepositoryRuleTagNamePatternParameters? parameters;

  /// Converts a [RepositoryRuleTagNamePattern] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleTagNamePattern &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
