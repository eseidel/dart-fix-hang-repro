import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// {@template protected_branch_pull_request_review_bypass_pull_request_allowances}
/// Allow specific users, teams, or apps to bypass pull request requirements.
/// {@endtemplate}
@immutable
class ProtectedBranchPullRequestReviewBypassPullRequestAllowances {
  /// {@macro protected_branch_pull_request_review_bypass_pull_request_allowances}
  ProtectedBranchPullRequestReviewBypassPullRequestAllowances({
    this.users,
    this.teams,
    this.apps,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ProtectedBranchPullRequestReviewBypassPullRequestAllowances].
  factory ProtectedBranchPullRequestReviewBypassPullRequestAllowances.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ProtectedBranchPullRequestReviewBypassPullRequestAllowances',
      json,
      () => ProtectedBranchPullRequestReviewBypassPullRequestAllowances(
        users: (json['users'] as List?)
            ?.map<SimpleUser>(
              (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        teams: (json['teams'] as List?)
            ?.map<Team>((e) => Team.fromJson(e as Map<String, dynamic>))
            .toList(),
        apps: (json['apps'] as List?)
            ?.map<Integration>(
              (e) => Integration.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProtectedBranchPullRequestReviewBypassPullRequestAllowances?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ProtectedBranchPullRequestReviewBypassPullRequestAllowances.fromJson(
      json,
    );
  }

  /// The list of users allowed to bypass pull request requirements.
  final List<SimpleUser>? users;

  /// The list of teams allowed to bypass pull request requirements.
  final List<Team>? teams;

  /// The list of apps allowed to bypass pull request requirements.
  final List<Integration>? apps;

  /// Converts a [ProtectedBranchPullRequestReviewBypassPullRequestAllowances]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'users': users?.map((e) => e.toJson()).toList(),
      'teams': teams?.map((e) => e.toJson()).toList(),
      'apps': apps?.map((e) => e.toJson()).toList(),
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
            is ProtectedBranchPullRequestReviewBypassPullRequestAllowances &&
        listsEqual(this.users, other.users) &&
        listsEqual(this.teams, other.teams) &&
        listsEqual(this.apps, other.apps);
  }
}
