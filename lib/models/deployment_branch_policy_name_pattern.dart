import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template deployment_branch_policy_name_pattern}
/// Deployment branch policy name pattern
/// {@endtemplate}
@immutable
class DeploymentBranchPolicyNamePattern {
  /// {@macro deployment_branch_policy_name_pattern}
  DeploymentBranchPolicyNamePattern({
    required this.name,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [DeploymentBranchPolicyNamePattern].
  factory DeploymentBranchPolicyNamePattern.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'DeploymentBranchPolicyNamePattern',
      json,
      () => DeploymentBranchPolicyNamePattern(
        name: json['name'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentBranchPolicyNamePattern? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return DeploymentBranchPolicyNamePattern.fromJson(json);
  }

  /// The name pattern that branches must match in order to deploy to the
  /// environment.
  ///
  /// Wildcard characters will not match `/`. For example, to match branches
  /// that begin with `release/` and contain an additional single slash, use
  /// `release/*/*`.
  /// For more information about pattern matching syntax, see the [Ruby
  /// File.fnmatch
  /// documentation](https://ruby-doc.org/core-2.5.1/File.html#method-c-fnmatch).
  /// example: `'release/*'`
  final String name;

  /// Converts a [DeploymentBranchPolicyNamePattern]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DeploymentBranchPolicyNamePattern &&
        this.name == other.name;
  }
}
