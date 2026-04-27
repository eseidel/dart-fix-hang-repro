import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/branch_protection.dart';
import 'package:github_out/models/branch_protection_allow_deletions.dart';
import 'package:github_out/models/branch_protection_allow_force_pushes.dart';
import 'package:github_out/models/branch_protection_allow_fork_syncing.dart';
import 'package:github_out/models/branch_protection_block_creations.dart';
import 'package:github_out/models/branch_protection_lock_branch.dart';
import 'package:github_out/models/branch_protection_required_conversation_resolution.dart';
import 'package:github_out/models/branch_protection_required_linear_history.dart';
import 'package:github_out/models/branch_protection_required_signatures.dart';
import 'package:github_out/models/branch_restriction_policy.dart';
import 'package:github_out/models/branch_restriction_policy_apps_inner.dart';
import 'package:github_out/models/branch_restriction_policy_apps_inner_owner.dart';
import 'package:github_out/models/branch_restriction_policy_apps_inner_permissions.dart';
import 'package:github_out/models/branch_restriction_policy_teams_inner.dart';
import 'package:github_out/models/branch_restriction_policy_users_inner.dart';
import 'package:github_out/models/branch_with_protection_links.dart';
import 'package:github_out/models/commit.dart';
import 'package:github_out/models/commit_author.dart';
import 'package:github_out/models/commit_commit.dart';
import 'package:github_out/models/commit_commit_tree.dart';
import 'package:github_out/models/commit_committer.dart';
import 'package:github_out/models/commit_parents_inner.dart';
import 'package:github_out/models/commit_stats.dart';
import 'package:github_out/models/diff_entry.dart';
import 'package:github_out/models/diff_entry_status.dart';
import 'package:github_out/models/empty_object.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/git_user.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/protected_branch_admin_enforced.dart';
import 'package:github_out/models/protected_branch_pull_request_review.dart';
import 'package:github_out/models/protected_branch_pull_request_review_bypass_pull_request_allowances.dart';
import 'package:github_out/models/protected_branch_pull_request_review_dismissal_restrictions.dart';
import 'package:github_out/models/protected_branch_required_status_check.dart';
import 'package:github_out/models/protected_branch_required_status_check_checks_inner.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:github_out/models/verification.dart';
import 'package:meta/meta.dart';

/// {@template branch_with_protection}
/// Branch With Protection
/// Branch With Protection
/// {@endtemplate}
@immutable
class BranchWithProtection {
  /// {@macro branch_with_protection}
  BranchWithProtection({
    required this.name,
    required this.commit,
    required this.links,
    required this.protected,
    required this.protection,
    required this.protectionUrl,
    this.pattern,
    this.requiredApprovingReviewCount,
  });

  /// Converts a `Map<String, dynamic>` to a [BranchWithProtection].
  factory BranchWithProtection.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'BranchWithProtection',
      json,
      () => BranchWithProtection(
        name: json['name'] as String,
        commit: Commit.fromJson(json['commit'] as Map<String, dynamic>),
        links: BranchWithProtectionLinks.fromJson(
          json['_links'] as Map<String, dynamic>,
        ),
        protected: json['protected'] as bool,
        protection: BranchProtection.fromJson(
          json['protection'] as Map<String, dynamic>,
        ),
        protectionUrl: Uri.parse(json['protection_url'] as String),
        pattern: json['pattern'] as String?,
        requiredApprovingReviewCount:
            (json['required_approving_review_count'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static BranchWithProtection? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return BranchWithProtection.fromJson(json);
  }

  final String name;

  /// Commit
  /// Commit
  final Commit commit;
  final BranchWithProtectionLinks links;
  final bool protected;

  /// Branch Protection
  /// Branch Protection
  final BranchProtection protection;
  final Uri protectionUrl;

  /// example: `'"mas*"'`
  final String? pattern;

  /// example: `1`
  final int? requiredApprovingReviewCount;

  /// Converts a [BranchWithProtection] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit.toJson(),
      '_links': links.toJson(),
      'protected': protected,
      'protection': protection.toJson(),
      'protection_url': protectionUrl.toString(),
      'pattern': pattern,
      'required_approving_review_count': requiredApprovingReviewCount,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    commit,
    links,
    protected,
    protection,
    protectionUrl,
    pattern,
    requiredApprovingReviewCount,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BranchWithProtection &&
        this.name == other.name &&
        this.commit == other.commit &&
        this.links == other.links &&
        this.protected == other.protected &&
        this.protection == other.protection &&
        this.protectionUrl == other.protectionUrl &&
        this.pattern == other.pattern &&
        this.requiredApprovingReviewCount == other.requiredApprovingReviewCount;
  }
}
