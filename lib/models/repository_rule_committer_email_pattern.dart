// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_committer_email_pattern}
/// committer_email_pattern
/// Parameters to be used for the committer_email_pattern rule
/// {@endtemplate}
@immutable
class RepositoryRuleCommitterEmailPattern {
  /// {@macro repository_rule_committer_email_pattern}
  const RepositoryRuleCommitterEmailPattern({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleCommitterEmailPattern].
  factory RepositoryRuleCommitterEmailPattern.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleCommitterEmailPattern',
      json,
      () => RepositoryRuleCommitterEmailPattern(
        type: RepositoryRuleCommitterEmailPatternType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleCommitterEmailPatternParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitterEmailPattern? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitterEmailPattern.fromJson(json);
  }

  final RepositoryRuleCommitterEmailPatternType type;
  final RepositoryRuleCommitterEmailPatternParameters? parameters;

  /// Converts a [RepositoryRuleCommitterEmailPattern]
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
    return other is RepositoryRuleCommitterEmailPattern &&
        type == other.type &&
        parameters == other.parameters;
  }
}
