import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template repos_update_branch_protection_request_required_pull_request_reviews_bypass_pull_request_allowances}
/// Allow specific users, teams, or apps to bypass pull request requirements.
/// {@endtemplate}
@immutable
class ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances {
  /// {@macro repos_update_branch_protection_request_required_pull_request_reviews_bypass_pull_request_allowances}
  ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances({
    this.users,
    this.teams,
    this.apps,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances].
  factory ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances',
      json,
      () =>
          ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances(
            users: (json['users'] as List?)?.cast<String>(),
            teams: (json['teams'] as List?)?.cast<String>(),
            apps: (json['apps'] as List?)?.cast<String>(),
          ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(
      json,
    );
  }

  /// The list of user `login`s allowed to bypass pull request requirements.
  final List<String>? users;

  /// The list of team `slug`s allowed to bypass pull request requirements.
  final List<String>? teams;

  /// The list of app `slug`s allowed to bypass pull request requirements.
  final List<String>? apps;

  /// Converts a [ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances]
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
            is ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances &&
        listsEqual(this.users, other.users) &&
        listsEqual(this.teams, other.teams) &&
        listsEqual(this.apps, other.apps);
  }
}
