import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{emails: [octocat@github.com, mona@github.com]}`
@immutable
class UsersAddEmailForAuthenticatedUserRequestOneOf0 {
  const UsersAddEmailForAuthenticatedUserRequestOneOf0({
    required this.emails,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersAddEmailForAuthenticatedUserRequestOneOf0].
  factory UsersAddEmailForAuthenticatedUserRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersAddEmailForAuthenticatedUserRequestOneOf0',
      json,
      () => UsersAddEmailForAuthenticatedUserRequestOneOf0(
        emails: (json['emails'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersAddEmailForAuthenticatedUserRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersAddEmailForAuthenticatedUserRequestOneOf0.fromJson(json);
  }

  /// Adds one or more email addresses to your GitHub account. Must contain at
  /// least one email address. **Note:** Alternatively, you can pass a single
  /// email address or an `array` of emails addresses directly, but we
  /// recommend that you pass an object using the `emails` key.
  final List<String> emails;

  /// Converts a [UsersAddEmailForAuthenticatedUserRequestOneOf0]
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
    return other is UsersAddEmailForAuthenticatedUserRequestOneOf0 &&
        listsEqual(emails, other.emails);
  }
}
