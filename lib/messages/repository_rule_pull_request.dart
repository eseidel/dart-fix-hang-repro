import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_pull_request_parameters.dart';
import 'package:github_out/models/repository_rule_pull_request_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_pull_request}
/// pull_request
/// Require all commits be made to a non-target branch and submitted via a pull
/// request before they can be merged.
/// {@endtemplate}
@immutable
class RepositoryRulePullRequest {
  /// {@macro repository_rule_pull_request}
  const RepositoryRulePullRequest({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRulePullRequest].
  factory RepositoryRulePullRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRulePullRequest',
      json,
      () => RepositoryRulePullRequest(
        type: RepositoryRulePullRequestType.fromJson(json['type'] as String),
        parameters: RepositoryRulePullRequestParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRulePullRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRulePullRequest.fromJson(json);
  }

  final RepositoryRulePullRequestType type;
  final RepositoryRulePullRequestParameters? parameters;

  /// Converts a [RepositoryRulePullRequest] to a `Map<String, dynamic>`.
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
    return other is RepositoryRulePullRequest &&
        type == other.type &&
        parameters == other.parameters;
  }
}
