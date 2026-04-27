import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/environment_approvals_environments_inner.dart';
import 'package:github_out/models/environment_approvals_state.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template environment_approvals}
/// Environment Approval
/// An entry in the reviews log for environment deployments
/// {@endtemplate}
@immutable
class EnvironmentApprovals {
  /// {@macro environment_approvals}
  EnvironmentApprovals({
    required this.environments,
    required this.state,
    required this.user,
    required this.comment,
  });

  /// Converts a `Map<String, dynamic>` to an [EnvironmentApprovals].
  factory EnvironmentApprovals.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'EnvironmentApprovals',
      json,
      () => EnvironmentApprovals(
        environments: (json['environments'] as List)
            .map<EnvironmentApprovalsEnvironmentsInner>(
              (e) => EnvironmentApprovalsEnvironmentsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        state: EnvironmentApprovalsState.fromJson(json['state'] as String),
        user: SimpleUser.fromJson(json['user'] as Map<String, dynamic>),
        comment: json['comment'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentApprovals? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return EnvironmentApprovals.fromJson(json);
  }

  /// The list of environments that were approved or rejected
  final List<EnvironmentApprovalsEnvironmentsInner> environments;

  /// Whether deployment to the environment(s) was approved or rejected or
  /// pending (with comments)
  /// example: `'approved'`
  final EnvironmentApprovalsState state;

  /// Simple User
  /// A GitHub user.
  final SimpleUser user;

  /// The comment submitted with the deployment review
  /// example: `'Ship it!'`
  final String comment;

  /// Converts an [EnvironmentApprovals] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'environments': environments.map((e) => e.toJson()).toList(),
      'state': state.toJson(),
      'user': user.toJson(),
      'comment': comment,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    listHash(environments),
    state,
    user,
    comment,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnvironmentApprovals &&
        listsEqual(this.environments, other.environments) &&
        this.state == other.state &&
        this.user == other.user &&
        this.comment == other.comment;
  }
}
