// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/teams_add_or_update_membership_for_user_legacy_request_role.dart';
import 'package:meta/meta.dart';

@immutable
class TeamsAddOrUpdateMembershipForUserLegacyRequest {
  const TeamsAddOrUpdateMembershipForUserLegacyRequest({
    this.role,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [TeamsAddOrUpdateMembershipForUserLegacyRequest].
  factory TeamsAddOrUpdateMembershipForUserLegacyRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'TeamsAddOrUpdateMembershipForUserLegacyRequest',
      json,
      () => TeamsAddOrUpdateMembershipForUserLegacyRequest(
        role: TeamsAddOrUpdateMembershipForUserLegacyRequestRole.maybeFromJson(
          json['role'] as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsAddOrUpdateMembershipForUserLegacyRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return TeamsAddOrUpdateMembershipForUserLegacyRequest.fromJson(json);
  }

  /// The role that this user should have in the team.
  final TeamsAddOrUpdateMembershipForUserLegacyRequestRole? role;

  /// Converts a [TeamsAddOrUpdateMembershipForUserLegacyRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'role': role?.toJson(),
    };
  }

  @override
  int get hashCode => role.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamsAddOrUpdateMembershipForUserLegacyRequest &&
        role == other.role;
  }
}
