import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/users_set_primary_email_visibility_for_authenticated_user_request_visibility.dart';
import 'package:meta/meta.dart';

@immutable
class UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest {
  UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest({
    required this.visibility,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest].
  factory UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest',
      json,
      () => UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest(
        visibility:
            UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility.fromJson(
              json['visibility'] as String,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest.fromJson(
      json,
    );
  }

  /// Denotes whether an email is publicly visible.
  final UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility
  visibility;

  /// Converts a [UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'visibility': visibility.toJson(),
    };
  }

  @override
  int get hashCode => visibility.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersSetPrimaryEmailVisibilityForAuthenticatedUserRequest &&
        this.visibility == other.visibility;
  }
}
