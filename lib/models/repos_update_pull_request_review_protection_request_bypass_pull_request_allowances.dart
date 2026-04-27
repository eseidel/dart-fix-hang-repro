import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template repos_update_pull_request_review_protection_request_bypass_pull_request_allowances}
/// Allow specific users, teams, or apps to bypass pull request requirements.
/// {@endtemplate}
@immutable
class ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances {
  /// {@macro repos_update_pull_request_review_protection_request_bypass_pull_request_allowances}
  ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances({
    this.users,
    this.teams,
    this.apps,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances].
  factory ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances',
      json,
      () =>
          ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances(
            users: (json['users'] as List?)?.cast<String>(),
            teams: (json['teams'] as List?)?.cast<String>(),
            apps: (json['apps'] as List?)?.cast<String>(),
          ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances.fromJson(
      json,
    );
  }

  /// The list of user `login`s allowed to bypass pull request requirements.
  final List<String>? users;

  /// The list of team `slug`s allowed to bypass pull request requirements.
  final List<String>? teams;

  /// The list of app `slug`s allowed to bypass pull request requirements.
  final List<String>? apps;

  /// Converts a [ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'users': users,
      'teams': teams,
      'apps': apps,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    listHash(users),
    listHash(teams),
    listHash(apps),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances &&
        listsEqual(this.users, other.users) &&
        listsEqual(this.teams, other.teams) &&
        listsEqual(this.apps, other.apps);
  }
}
