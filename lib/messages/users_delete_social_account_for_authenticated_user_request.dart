import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{account_urls: [https://www.linkedin.com/company/github/, https://twitter.com/github]}`
@immutable
class UsersDeleteSocialAccountForAuthenticatedUserRequest {
  UsersDeleteSocialAccountForAuthenticatedUserRequest({
    required this.accountUrls,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersDeleteSocialAccountForAuthenticatedUserRequest].
  factory UsersDeleteSocialAccountForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersDeleteSocialAccountForAuthenticatedUserRequest',
      json,
      () => UsersDeleteSocialAccountForAuthenticatedUserRequest(
        accountUrls: (json['account_urls'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersDeleteSocialAccountForAuthenticatedUserRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersDeleteSocialAccountForAuthenticatedUserRequest.fromJson(json);
  }

  /// Full URLs for the social media profiles to delete.
  final List<String> accountUrls;

  /// Converts a [UsersDeleteSocialAccountForAuthenticatedUserRequest]
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
    return other is UsersDeleteSocialAccountForAuthenticatedUserRequest &&
        listsEqual(this.accountUrls, other.accountUrls);
  }
}
