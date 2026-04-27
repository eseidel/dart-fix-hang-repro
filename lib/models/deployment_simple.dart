import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template deployment_simple}
/// Deployment
/// A deployment created as the result of an Actions check run from a workflow
/// that references an environment
/// {@endtemplate}
@immutable
class DeploymentSimple {
  /// {@macro deployment_simple}
  DeploymentSimple({
    required this.url,
    required this.id,
    required this.nodeId,
    required this.task,
    this.originalEnvironment,
    required this.environment,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.statusesUrl,
    required this.repositoryUrl,
    this.transientEnvironment,
    this.productionEnvironment,
    this.performedViaGithubApp,
  });

  /// Converts a `Map<String, dynamic>` to a [DeploymentSimple].
  factory DeploymentSimple.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'DeploymentSimple',
      json,
      () => DeploymentSimple(
        url: Uri.parse(json['url'] as String),
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        task: json['task'] as String,
        originalEnvironment: json['original_environment'] as String?,
        environment: json['environment'] as String,
        description: checkedKey(json, 'description') as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        statusesUrl: Uri.parse(json['statuses_url'] as String),
        repositoryUrl: Uri.parse(json['repository_url'] as String),
        transientEnvironment: json['transient_environment'] as bool?,
        productionEnvironment: json['production_environment'] as bool?,
        performedViaGithubApp: Integration.maybeFromJson(
          json['performed_via_github_app'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentSimple? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return DeploymentSimple.fromJson(json);
  }

  /// example: `'https://api.github.com/repos/octocat/example/deployments/1'`
  final Uri url;

  /// Unique identifier of the deployment
  /// example: `42`
  final int id;

  /// example: `'MDEwOkRlcGxveW1lbnQx'`
  final String nodeId;

  /// Parameter to specify a task to execute
  /// example: `'deploy'`
  final String task;

  /// example: `'staging'`
  final String? originalEnvironment;

  /// Name for the target deployment environment.
  /// example: `'production'`
  final String environment;

  /// example: `'Deploy request from hubot'`
  final String? description;

  /// example: `'2012-07-20T01:19:13Z'`
  final DateTime createdAt;

  /// example: `'2012-07-20T01:19:13Z'`
  final DateTime updatedAt;

  /// example:
  /// `'https://api.github.com/repos/octocat/example/deployments/1/statuses'`
  final Uri statusesUrl;

  /// example: `'https://api.github.com/repos/octocat/example'`
  final Uri repositoryUrl;

  /// Specifies if the given environment is will no longer exist at some point
  /// in the future. Default: false.
  /// example: `true`
  final bool? transientEnvironment;

  /// Specifies if the given environment is one that end-users directly
  /// interact with. Default: false.
  /// example: `true`
  final bool? productionEnvironment;

  /// GitHub app
  /// GitHub apps are a new way to extend GitHub. They can be installed
  /// directly on organizations and user accounts and granted access to
  /// specific repositories. They come with granular permissions and built-in
  /// webhooks. GitHub apps are first class actors within GitHub.
  final Integration? performedViaGithubApp;

  /// Converts a [DeploymentSimple] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'id': id,
      'node_id': nodeId,
      'task': task,
      'original_environment': originalEnvironment,
      'environment': environment,
      'description': description,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'statuses_url': statusesUrl.toString(),
      'repository_url': repositoryUrl.toString(),
      'transient_environment': transientEnvironment,
      'production_environment': productionEnvironment,
      'performed_via_github_app': performedViaGithubApp?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    id,
    nodeId,
    task,
    originalEnvironment,
    environment,
    description,
    createdAt,
    updatedAt,
    statusesUrl,
    repositoryUrl,
    transientEnvironment,
    productionEnvironment,
    performedViaGithubApp,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DeploymentSimple &&
        this.url == other.url &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.task == other.task &&
        this.originalEnvironment == other.originalEnvironment &&
        this.environment == other.environment &&
        this.description == other.description &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.statusesUrl == other.statusesUrl &&
        this.repositoryUrl == other.repositoryUrl &&
        this.transientEnvironment == other.transientEnvironment &&
        this.productionEnvironment == other.productionEnvironment &&
        this.performedViaGithubApp == other.performedViaGithubApp;
  }
}
