import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/deployment_branch_policy_type.dart';
import 'package:meta/meta.dart';

/// {@template deployment_branch_policy}
/// Deployment branch policy
/// Details of a deployment branch or tag policy.
/// {@endtemplate}
@immutable
class DeploymentBranchPolicy {
  /// {@macro deployment_branch_policy}
  DeploymentBranchPolicy({
    this.id,
    this.nodeId,
    this.name,
    this.type,
  });

  /// Converts a `Map<String, dynamic>` to a [DeploymentBranchPolicy].
  factory DeploymentBranchPolicy.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'DeploymentBranchPolicy',
      json,
      () => DeploymentBranchPolicy(
        id: (json['id'] as int?),
        nodeId: json['node_id'] as String?,
        name: json['name'] as String?,
        type: DeploymentBranchPolicyType.maybeFromJson(json['type'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentBranchPolicy? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return DeploymentBranchPolicy.fromJson(json);
  }

  /// The unique identifier of the branch or tag policy.
  /// example: `361471`
  final int? id;

  /// example: `'MDE2OkdhdGVCcmFuY2hQb2xpY3kzNjE0NzE='`
  final String? nodeId;

  /// The name pattern that branches or tags must match in order to deploy to
  /// the environment.
  /// example: `'release/*'`
  final String? name;

  /// Whether this rule targets a branch or tag.
  /// example: `'branch'`
  final DeploymentBranchPolicyType? type;

  /// Converts a [DeploymentBranchPolicy] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'type': type?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    type,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DeploymentBranchPolicy &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.type == other.type;
  }
}
