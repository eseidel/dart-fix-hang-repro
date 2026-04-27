import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/teams_add_or_update_project_permissions_legacy_request_permission.dart';
import 'package:meta/meta.dart';

@immutable
class TeamsAddOrUpdateProjectPermissionsLegacyRequest {
  TeamsAddOrUpdateProjectPermissionsLegacyRequest({
    this.permission,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [TeamsAddOrUpdateProjectPermissionsLegacyRequest].
  factory TeamsAddOrUpdateProjectPermissionsLegacyRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'TeamsAddOrUpdateProjectPermissionsLegacyRequest',
      json,
      () => TeamsAddOrUpdateProjectPermissionsLegacyRequest(
        permission:
            TeamsAddOrUpdateProjectPermissionsLegacyRequestPermission.maybeFromJson(
              json['permission'] as String?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsAddOrUpdateProjectPermissionsLegacyRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return TeamsAddOrUpdateProjectPermissionsLegacyRequest.fromJson(json);
  }

  /// The permission to grant to the team for this project. Default: the
  /// team's `permission` attribute will be used to determine what permission
  /// to grant the team on this project. Note that, if you choose not to pass
  /// any parameters, you'll need to set `Content-Length` to zero when calling
  /// this endpoint. For more information, see "[HTTP
  /// method](https://docs.github.com/rest/guides/getting-started-with-the-rest-api#http-method)."
  final TeamsAddOrUpdateProjectPermissionsLegacyRequestPermission? permission;

  /// Converts a [TeamsAddOrUpdateProjectPermissionsLegacyRequest]
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
    return other is TeamsAddOrUpdateProjectPermissionsLegacyRequest &&
        this.permission == other.permission;
  }
}
