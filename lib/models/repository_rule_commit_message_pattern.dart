// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_commit_message_pattern}
/// commit_message_pattern
/// Parameters to be used for the commit_message_pattern rule
/// {@endtemplate}
@immutable
class RepositoryRuleCommitMessagePattern {
  /// {@macro repository_rule_commit_message_pattern}
  const RepositoryRuleCommitMessagePattern({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleCommitMessagePattern].
  factory RepositoryRuleCommitMessagePattern.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleCommitMessagePattern',
      json,
      () => RepositoryRuleCommitMessagePattern(
        type: RepositoryRuleCommitMessagePatternType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleCommitMessagePatternParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitMessagePattern? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitMessagePattern.fromJson(json);
  }

  final RepositoryRuleCommitMessagePatternType type;
  final RepositoryRuleCommitMessagePatternParameters? parameters;

  /// Converts a [RepositoryRuleCommitMessagePattern]
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
    return other is RepositoryRuleCommitMessagePattern &&
        type == other.type &&
        parameters == other.parameters;
  }
}
