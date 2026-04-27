import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class PendingDeploymentEnvironment {
  PendingDeploymentEnvironment({
    this.id,
    this.nodeId,
    this.name,
    this.url,
    this.htmlUrl,
  });

  /// Converts a `Map<String, dynamic>` to a [PendingDeploymentEnvironment].
  factory PendingDeploymentEnvironment.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PendingDeploymentEnvironment',
      json,
      () => PendingDeploymentEnvironment(
        id: (json['id'] as int?),
        nodeId: json['node_id'] as String?,
        name: json['name'] as String?,
        url: json['url'] as String?,
        htmlUrl: json['html_url'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PendingDeploymentEnvironment? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return PendingDeploymentEnvironment.fromJson(json);
  }

  /// The id of the environment.
  /// example: `56780428`
  final int? id;

  /// example: `'MDExOkVudmlyb25tZW50NTY3ODA0Mjg='`
  final String? nodeId;

  /// The name of the environment.
  /// example: `'staging'`
  final String? name;

  /// example:
  /// `'https://api.github.com/repos/github/hello-world/environments/staging'`
  final String? url;

  /// example:
  /// `'https://github.com/github/hello-world/deployments/activity_log?environments_filter=staging'`
  final String? htmlUrl;

  /// Converts a [PendingDeploymentEnvironment] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'url': url,
      'html_url': htmlUrl,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    url,
    htmlUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PendingDeploymentEnvironment &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl;
  }
}
