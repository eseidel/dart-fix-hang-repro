import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template integration_permissions}
/// The set of permissions for the GitHub app
/// {@endtemplate}
/// example: `{issues: read, deployments: write}`
@immutable
class IntegrationPermissions {
  /// {@macro integration_permissions}
  IntegrationPermissions({
    this.issues,
    this.checks,
    this.metadata,
    this.contents,
    this.deployments,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to an [IntegrationPermissions].
  factory IntegrationPermissions.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IntegrationPermissions',
      json,
      () => IntegrationPermissions(
        issues: json['issues'] as String?,
        checks: json['checks'] as String?,
        metadata: json['metadata'] as String?,
        contents: json['contents'] as String?,
        deployments: json['deployments'] as String?,
        entries: json.map((key, value) => MapEntry(key, value as String)),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IntegrationPermissions? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IntegrationPermissions.fromJson(json);
  }

  final String? issues;
  final String? checks;
  final String? metadata;
  final String? contents;
  final String? deployments;
  final Map<String, String> entries;

  String? operator [](String key) => entries[key];

  /// Converts an [IntegrationPermissions] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'issues': issues,
      'checks': checks,
      'metadata': metadata,
      'contents': contents,
      'deployments': deployments,
      ...entries.map((key, value) => MapEntry(key, value)),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    issues,
    checks,
    metadata,
    contents,
    deployments,
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IntegrationPermissions &&
        this.issues == other.issues &&
        this.checks == other.checks &&
        this.metadata == other.metadata &&
        this.contents == other.contents &&
        this.deployments == other.deployments &&
        mapsEqual(entries, other.entries);
  }
}
