import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{account_urls: [https://www.linkedin.com/company/github/, https://twitter.com/github]}`
@immutable
class UsersAddSocialAccountForAuthenticatedUserRequest {
  UsersAddSocialAccountForAuthenticatedUserRequest({
    required this.accountUrls,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersAddSocialAccountForAuthenticatedUserRequest].
  factory UsersAddSocialAccountForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersAddSocialAccountForAuthenticatedUserRequest',
      json,
      () => UsersAddSocialAccountForAuthenticatedUserRequest(
        accountUrls: (json['account_urls'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersAddSocialAccountForAuthenticatedUserRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersAddSocialAccountForAuthenticatedUserRequest.fromJson(json);
  }

  /// Full URLs for the social media profiles to add.
  final List<String> accountUrls;

  /// Converts a [UsersAddSocialAccountForAuthenticatedUserRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'account_urls': accountUrls,
    };
  }

  @override
  int get hashCode => listHash(accountUrls).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersAddSocialAccountForAuthenticatedUserRequest &&
        listsEqual(this.accountUrls, other.accountUrls);
  }
}
