import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/deployment_branch_policy_settings.dart';
import 'package:github_out/models/deployment_reviewer_type.dart';
import 'package:github_out/models/environment_protection_rules_inner.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_0.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1_reviewers_inner.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1_reviewers_inner_reviewer.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_2.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:github_out/models/wait_timer.dart';
import 'package:meta/meta.dart';

/// {@template environment}
/// Environment
/// Details of a deployment environment
/// {@endtemplate}
@immutable
class Environment {
  /// {@macro environment}
  Environment({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.url,
    required this.htmlUrl,
    required this.createdAt,
    required this.updatedAt,
    this.protectionRules,
    this.deploymentBranchPolicy,
  });

  /// Converts a `Map<String, dynamic>` to an [Environment].
  factory Environment.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Environment',
      json,
      () => Environment(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        url: json['url'] as String,
        htmlUrl: json['html_url'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        protectionRules: (json['protection_rules'] as List?)
            ?.map<EnvironmentProtectionRulesInner>(
              (e) => EnvironmentProtectionRulesInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        deploymentBranchPolicy: DeploymentBranchPolicySettings.maybeFromJson(
          json['deployment_branch_policy'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Environment? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Environment.fromJson(json);
  }

  /// The id of the environment.
  /// example: `56780428`
  final int id;

  /// example: `'MDExOkVudmlyb25tZW50NTY3ODA0Mjg='`
  final String nodeId;

  /// The name of the environment.
  /// example: `'staging'`
  final String name;

  /// example:
  /// `'https://api.github.com/repos/github/hello-world/environments/staging'`
  final String url;

  /// example:
  /// `'https://github.com/github/hello-world/deployments/activity_log?environments_filter=staging'`
  final String htmlUrl;

  /// The time that the environment was created, in ISO 8601 format.
  /// example: `'2020-11-23T22:00:40Z'`
  final DateTime createdAt;

  /// The time that the environment was last updated, in ISO 8601 format.
  /// example: `'2020-11-23T22:00:40Z'`
  final DateTime updatedAt;

  /// Built-in deployment protection rules for the environment.
  final List<EnvironmentProtectionRulesInner>? protectionRules;

  /// The type of deployment branch policy for this environment. To allow all
  /// branches to deploy, set to `null`.
  final DeploymentBranchPolicySettings? deploymentBranchPolicy;

  /// Converts an [Environment] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'url': url,
      'html_url': htmlUrl,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'protection_rules': protectionRules?.map((e) => e.toJson()).toList(),
      'deployment_branch_policy': deploymentBranchPolicy?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    url,
    htmlUrl,
    createdAt,
    updatedAt,
    listHash(protectionRules),
    deploymentBranchPolicy,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Environment &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        listsEqual(this.protectionRules, other.protectionRules) &&
        this.deploymentBranchPolicy == other.deploymentBranchPolicy;
  }
}
