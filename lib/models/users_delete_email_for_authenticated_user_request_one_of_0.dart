import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template users_delete_email_for_authenticated_user_request_one_of_0}
/// Deletes one or more email addresses from your GitHub account. Must contain
/// at least one email address. **Note:** Alternatively, you can pass a single
/// email address or an `array` of emails addresses directly, but we recommend
/// that you pass an object using the `emails` key.
/// {@endtemplate}
/// example: `{emails: [octocat@github.com, mona@github.com]}`
@immutable
class UsersDeleteEmailForAuthenticatedUserRequestOneOf0 {
  /// {@macro users_delete_email_for_authenticated_user_request_one_of_0}
  const UsersDeleteEmailForAuthenticatedUserRequestOneOf0({
    required this.emails,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersDeleteEmailForAuthenticatedUserRequestOneOf0].
  factory UsersDeleteEmailForAuthenticatedUserRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersDeleteEmailForAuthenticatedUserRequestOneOf0',
      json,
      () => UsersDeleteEmailForAuthenticatedUserRequestOneOf0(
        emails: (json['emails'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersDeleteEmailForAuthenticatedUserRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersDeleteEmailForAuthenticatedUserRequestOneOf0.fromJson(json);
  }

  /// Email addresses associated with the GitHub user account.
  final List<String> emails;

  /// Converts a [UsersDeleteEmailForAuthenticatedUserRequestOneOf0]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'emails': emails,
    };
  }

  @override
  int get hashCode => listHash(emails).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersDeleteEmailForAuthenticatedUserRequestOneOf0 &&
        listsEqual(emails, other.emails);
  }
}
