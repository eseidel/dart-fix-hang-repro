import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/artifact_workflow_run.dart';
import 'package:meta/meta.dart';

/// {@template artifact}
/// Artifact
/// An artifact
/// {@endtemplate}
@immutable
class Artifact {
  /// {@macro artifact}
  Artifact({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.sizeInBytes,
    required this.url,
    required this.archiveDownloadUrl,
    required this.expired,
    required this.createdAt,
    required this.expiresAt,
    required this.updatedAt,
    this.digest,
    this.workflowRun,
  });

  /// Converts a `Map<String, dynamic>` to an [Artifact].
  factory Artifact.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Artifact',
      json,
      () => Artifact(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        sizeInBytes: (json['size_in_bytes'] as int),
        url: json['url'] as String,
        archiveDownloadUrl: json['archive_download_url'] as String,
        expired: json['expired'] as bool,
        createdAt: maybeParseDateTime(
          checkedKey(json, 'created_at') as String?,
        ),
        expiresAt: maybeParseDateTime(
          checkedKey(json, 'expires_at') as String?,
        ),
        updatedAt: maybeParseDateTime(
          checkedKey(json, 'updated_at') as String?,
        ),
        digest: json['digest'] as String?,
        workflowRun: ArtifactWorkflowRun.maybeFromJson(
          json['workflow_run'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Artifact? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Artifact.fromJson(json);
  }

  /// example: `5`
  final int id;

  /// example: `'MDEwOkNoZWNrU3VpdGU1'`
  final String nodeId;

  /// The name of the artifact.
  /// example: `'AdventureWorks.Framework'`
  final String name;

  /// The size in bytes of the artifact.
  /// example: `12345`
  final int sizeInBytes;

  /// example:
  /// `'https://api.github.com/repos/github/hello-world/actions/artifacts/5'`
  final String url;

  /// example:
  /// `'https://api.github.com/repos/github/hello-world/actions/artifacts/5/zip'`
  final String archiveDownloadUrl;

  /// Whether or not the artifact has expired.
  final bool expired;
  final DateTime? createdAt;
  final DateTime? expiresAt;
  final DateTime? updatedAt;

  /// The SHA256 digest of the artifact. This field will only be populated on
  /// artifacts uploaded with upload-artifact v4 or newer. For older versions,
  /// this field will be null.
  /// example:
  /// `'sha256:cfc3236bdad15b5898bca8408945c9e19e1917da8704adc20eaa618444290a8c'`
  final String? digest;
  final ArtifactWorkflowRun? workflowRun;

  /// Converts an [Artifact] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'size_in_bytes': sizeInBytes,
      'url': url,
      'archive_download_url': archiveDownloadUrl,
      'expired': expired,
      'created_at': createdAt?.toIso8601String(),
      'expires_at': expiresAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'digest': digest,
      'workflow_run': workflowRun?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    sizeInBytes,
    url,
    archiveDownloadUrl,
    expired,
    createdAt,
    expiresAt,
    updatedAt,
    digest,
    workflowRun,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Artifact &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.sizeInBytes == other.sizeInBytes &&
        this.url == other.url &&
        this.archiveDownloadUrl == other.archiveDownloadUrl &&
        this.expired == other.expired &&
        this.createdAt == other.createdAt &&
        this.expiresAt == other.expiresAt &&
        this.updatedAt == other.updatedAt &&
        this.digest == other.digest &&
        this.workflowRun == other.workflowRun;
  }
}
