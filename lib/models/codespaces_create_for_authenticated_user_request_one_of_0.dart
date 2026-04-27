import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/codespaces_create_for_authenticated_user_request_one_of_0_geo.dart';
import 'package:meta/meta.dart';

@immutable
class CodespacesCreateForAuthenticatedUserRequestOneOf0 {
  CodespacesCreateForAuthenticatedUserRequestOneOf0({
    required this.repositoryId,
    this.ref,
    this.location,
    this.geo,
    this.clientIp,
    this.machine,
    this.devcontainerPath,
    this.multiRepoPermissionsOptOut,
    this.workingDirectory,
    this.idleTimeoutMinutes,
    this.displayName,
    this.retentionPeriodMinutes,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodespacesCreateForAuthenticatedUserRequestOneOf0].
  factory CodespacesCreateForAuthenticatedUserRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodespacesCreateForAuthenticatedUserRequestOneOf0',
      json,
      () => CodespacesCreateForAuthenticatedUserRequestOneOf0(
        repositoryId: (json['repository_id'] as int),
        ref: json['ref'] as String?,
        location: json['location'] as String?,
        geo: CodespacesCreateForAuthenticatedUserRequestOneOf0Geo.maybeFromJson(
          json['geo'] as String?,
        ),
        clientIp: json['client_ip'] as String?,
        machine: json['machine'] as String?,
        devcontainerPath: json['devcontainer_path'] as String?,
        multiRepoPermissionsOptOut:
            json['multi_repo_permissions_opt_out'] as bool?,
        workingDirectory: json['working_directory'] as String?,
        idleTimeoutMinutes: (json['idle_timeout_minutes'] as int?),
        displayName: json['display_name'] as String?,
        retentionPeriodMinutes: (json['retention_period_minutes'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesCreateForAuthenticatedUserRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesCreateForAuthenticatedUserRequestOneOf0.fromJson(json);
  }

  /// Repository id for this codespace
  final int repositoryId;

  /// Git ref (typically a branch name) for this codespace
  final String? ref;

  /// The requested location for a new codespace. Best efforts are made to
  /// respect this upon creation. Assigned by IP if not provided.
  final String? location;

  /// The geographic area for this codespace. If not specified, the value is
  /// assigned by IP. This property replaces `location`, which is closing
  /// down.
  final CodespacesCreateForAuthenticatedUserRequestOneOf0Geo? geo;

  /// IP for location auto-detection when proxying a request
  final String? clientIp;

  /// Machine type to use for this codespace
  final String? machine;

  /// Path to devcontainer.json config to use for this codespace
  final String? devcontainerPath;

  /// Whether to authorize requested permissions from devcontainer.json
  final bool? multiRepoPermissionsOptOut;

  /// Working directory for this codespace
  final String? workingDirectory;

  /// Time in minutes before codespace stops from inactivity
  final int? idleTimeoutMinutes;

  /// Display name for this codespace
  final String? displayName;

  /// Duration in minutes after codespace has gone idle in which it will be
  /// deleted. Must be integer minutes between 0 and 43200 (30 days).
  final int? retentionPeriodMinutes;

  /// Converts a [CodespacesCreateForAuthenticatedUserRequestOneOf0]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'repository_id': repositoryId,
      'ref': ref,
      'location': location,
      'geo': geo?.toJson(),
      'client_ip': clientIp,
      'machine': machine,
      'devcontainer_path': devcontainerPath,
      'multi_repo_permissions_opt_out': multiRepoPermissionsOptOut,
      'working_directory': workingDirectory,
      'idle_timeout_minutes': idleTimeoutMinutes,
      'display_name': displayName,
      'retention_period_minutes': retentionPeriodMinutes,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    repositoryId,
    ref,
    location,
    geo,
    clientIp,
    machine,
    devcontainerPath,
    multiRepoPermissionsOptOut,
    workingDirectory,
    idleTimeoutMinutes,
    displayName,
    retentionPeriodMinutes,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodespacesCreateForAuthenticatedUserRequestOneOf0 &&
        this.repositoryId == other.repositoryId &&
        this.ref == other.ref &&
        this.location == other.location &&
        this.geo == other.geo &&
        this.clientIp == other.clientIp &&
        this.machine == other.machine &&
        this.devcontainerPath == other.devcontainerPath &&
        this.multiRepoPermissionsOptOut == other.multiRepoPermissionsOptOut &&
        this.workingDirectory == other.workingDirectory &&
        this.idleTimeoutMinutes == other.idleTimeoutMinutes &&
        this.displayName == other.displayName &&
        this.retentionPeriodMinutes == other.retentionPeriodMinutes;
  }
}
