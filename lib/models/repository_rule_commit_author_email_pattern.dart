// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_commit_author_email_pattern}
/// commit_author_email_pattern
/// Parameters to be used for the commit_author_email_pattern rule
/// {@endtemplate}
@immutable
class RepositoryRuleCommitAuthorEmailPattern {
  /// {@macro repository_rule_commit_author_email_pattern}
  const RepositoryRuleCommitAuthorEmailPattern({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleCommitAuthorEmailPattern].
  factory RepositoryRuleCommitAuthorEmailPattern.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleCommitAuthorEmailPattern',
      json,
      () => RepositoryRuleCommitAuthorEmailPattern(
        type: RepositoryRuleCommitAuthorEmailPatternType.fromJson(
          json['type'] as String,
        ),
        parameters:
            RepositoryRuleCommitAuthorEmailPatternParameters.maybeFromJson(
              json['parameters'] as Map<String, dynamic>?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitAuthorEmailPattern? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitAuthorEmailPattern.fromJson(json);
  }

  final RepositoryRuleCommitAuthorEmailPatternType type;
  final RepositoryRuleCommitAuthorEmailPatternParameters? parameters;

  /// Converts a [RepositoryRuleCommitAuthorEmailPattern]
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
    return other is RepositoryRuleCommitAuthorEmailPattern &&
        type == other.type &&
        parameters == other.parameters;
  }
}
