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

@immutable
class ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances {
  ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances({
    required this.users,
    required this.teams,
    this.apps,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances].
  factory ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances',
      json,
      () =>
          ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances(
            users: (json['users'] as List)
                .map<SimpleUser>(
                  (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
            teams: (json['teams'] as List)
                .map<Team>((e) => Team.fromJson(e as Map<String, dynamic>))
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
  static ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(
      json,
    );
  }

  final List<SimpleUser> users;
  final List<Team> teams;
  final List<Integration>? apps;

  /// Converts a [ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'users': users.map((e) => e.toJson()).toList(),
      'teams': teams.map((e) => e.toJson()).toList(),
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
            is ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances &&
        listsEqual(this.users, other.users) &&
        listsEqual(this.teams, other.teams) &&
        listsEqual(this.apps, other.apps);
  }
}
