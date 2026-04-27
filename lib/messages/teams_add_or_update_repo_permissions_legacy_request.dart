import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/teams_add_or_update_repo_permissions_legacy_request_permission.dart';
import 'package:meta/meta.dart';

@immutable
class TeamsAddOrUpdateRepoPermissionsLegacyRequest {
  TeamsAddOrUpdateRepoPermissionsLegacyRequest({
    this.permission,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [TeamsAddOrUpdateRepoPermissionsLegacyRequest].
  factory TeamsAddOrUpdateRepoPermissionsLegacyRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'TeamsAddOrUpdateRepoPermissionsLegacyRequest',
      json,
      () => TeamsAddOrUpdateRepoPermissionsLegacyRequest(
        permission:
            TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission.maybeFromJson(
              json['permission'] as String?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsAddOrUpdateRepoPermissionsLegacyRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return TeamsAddOrUpdateRepoPermissionsLegacyRequest.fromJson(json);
  }

  /// The permission to grant the team on this repository. If no permission is
  /// specified, the team's `permission` attribute will be used to determine
  /// what permission to grant the team on this repository.
  final TeamsAddOrUpdateRepoPermissionsLegacyRequestPermission? permission;

  /// Converts a [TeamsAddOrUpdateRepoPermissionsLegacyRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'permission': permission?.toJson(),
    };
  }

  @override
  int get hashCode => permission.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamsAddOrUpdateRepoPermissionsLegacyRequest &&
        this.permission == other.permission;
  }
}
