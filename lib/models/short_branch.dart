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
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/protected_branch_admin_enforced.dart';
import 'package:github_out/models/protected_branch_pull_request_review.dart';
import 'package:github_out/models/protected_branch_pull_request_review_bypass_pull_request_allowances.dart';
import 'package:github_out/models/protected_branch_pull_request_review_dismissal_restrictions.dart';
import 'package:github_out/models/protected_branch_required_status_check.dart';
import 'package:github_out/models/protected_branch_required_status_check_checks_inner.dart';
import 'package:github_out/models/short_branch_commit.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// {@template short_branch}
/// Short Branch
/// Short Branch
/// {@endtemplate}
@immutable
class ShortBranch {
  /// {@macro short_branch}
  ShortBranch({
    required this.name,
    required this.commit,
    required this.protected,
    this.protection,
    this.protectionUrl,
  });

  /// Converts a `Map<String, dynamic>` to a [ShortBranch].
  factory ShortBranch.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ShortBranch',
      json,
      () => ShortBranch(
        name: json['name'] as String,
        commit: ShortBranchCommit.fromJson(
          json['commit'] as Map<String, dynamic>,
        ),
        protected: json['protected'] as bool,
        protection: BranchProtection.maybeFromJson(
          json['protection'] as Map<String, dynamic>?,
        ),
        protectionUrl: maybeParseUri(json['protection_url'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ShortBranch? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ShortBranch.fromJson(json);
  }

  final String name;
  final ShortBranchCommit commit;
  final bool protected;

  /// Branch Protection
  /// Branch Protection
  final BranchProtection? protection;
  final Uri? protectionUrl;

  /// Converts a [ShortBranch] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit.toJson(),
      'protected': protected,
      'protection': protection?.toJson(),
      'protection_url': protectionUrl?.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    commit,
    protected,
    protection,
    protectionUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShortBranch &&
        this.name == other.name &&
        this.commit == other.commit &&
        this.protected == other.protected &&
        this.protection == other.protection &&
        this.protectionUrl == other.protectionUrl;
  }
}
