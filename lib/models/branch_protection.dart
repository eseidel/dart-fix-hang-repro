import 'package:github_out/model_helpers.dart';
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
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// {@template branch_protection}
/// Branch Protection
/// Branch Protection
/// {@endtemplate}
@immutable
class BranchProtection {
  /// {@macro branch_protection}
  BranchProtection({
    this.url,
    this.enabled,
    this.requiredStatusChecks,
    this.enforceAdmins,
    this.requiredPullRequestReviews,
    this.restrictions,
    this.requiredLinearHistory,
    this.allowForcePushes,
    this.allowDeletions,
    this.blockCreations,
    this.requiredConversationResolution,
    this.name,
    this.protectionUrl,
    this.requiredSignatures,
    this.lockBranch,
    this.allowForkSyncing,
  });

  /// Converts a `Map<String, dynamic>` to a [BranchProtection].
  factory BranchProtection.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'BranchProtection',
      json,
      () => BranchProtection(
        url: json['url'] as String?,
        enabled: json['enabled'] as bool?,
        requiredStatusChecks: ProtectedBranchRequiredStatusCheck.maybeFromJson(
          json['required_status_checks'] as Map<String, dynamic>?,
        ),
        enforceAdmins: ProtectedBranchAdminEnforced.maybeFromJson(
          json['enforce_admins'] as Map<String, dynamic>?,
        ),
        requiredPullRequestReviews:
            ProtectedBranchPullRequestReview.maybeFromJson(
              json['required_pull_request_reviews'] as Map<String, dynamic>?,
            ),
        restrictions: BranchRestrictionPolicy.maybeFromJson(
          json['restrictions'] as Map<String, dynamic>?,
        ),
        requiredLinearHistory:
            BranchProtectionRequiredLinearHistory.maybeFromJson(
              json['required_linear_history'] as Map<String, dynamic>?,
            ),
        allowForcePushes: BranchProtectionAllowForcePushes.maybeFromJson(
          json['allow_force_pushes'] as Map<String, dynamic>?,
        ),
        allowDeletions: BranchProtectionAllowDeletions.maybeFromJson(
          json['allow_deletions'] as Map<String, dynamic>?,
        ),
        blockCreations: BranchProtectionBlockCreations.maybeFromJson(
          json['block_creations'] as Map<String, dynamic>?,
        ),
        requiredConversationResolution:
            BranchProtectionRequiredConversationResolution.maybeFromJson(
              json['required_conversation_resolution'] as Map<String, dynamic>?,
            ),
        name: json['name'] as String?,
        protectionUrl: json['protection_url'] as String?,
        requiredSignatures: BranchProtectionRequiredSignatures.maybeFromJson(
          json['required_signatures'] as Map<String, dynamic>?,
        ),
        lockBranch: BranchProtectionLockBranch.maybeFromJson(
          json['lock_branch'] as Map<String, dynamic>?,
        ),
        allowForkSyncing: BranchProtectionAllowForkSyncing.maybeFromJson(
          json['allow_fork_syncing'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static BranchProtection? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return BranchProtection.fromJson(json);
  }

  final String? url;
  final bool? enabled;

  /// Protected Branch Required Status Check
  /// Protected Branch Required Status Check
  final ProtectedBranchRequiredStatusCheck? requiredStatusChecks;

  /// Protected Branch Admin Enforced
  /// Protected Branch Admin Enforced
  final ProtectedBranchAdminEnforced? enforceAdmins;

  /// Protected Branch Pull Request Review
  /// Protected Branch Pull Request Review
  final ProtectedBranchPullRequestReview? requiredPullRequestReviews;

  /// Branch Restriction Policy
  /// Branch Restriction Policy
  final BranchRestrictionPolicy? restrictions;
  final BranchProtectionRequiredLinearHistory? requiredLinearHistory;
  final BranchProtectionAllowForcePushes? allowForcePushes;
  final BranchProtectionAllowDeletions? allowDeletions;
  final BranchProtectionBlockCreations? blockCreations;
  final BranchProtectionRequiredConversationResolution?
  requiredConversationResolution;

  /// example: `'"branch/with/protection"'`
  final String? name;

  /// example:
  /// `'"https://api.github.com/repos/owner-79e94e2d36b3fd06a32bb213/AAA_Public_Repo/branches/branch/with/protection/protection"'`
  final String? protectionUrl;
  final BranchProtectionRequiredSignatures? requiredSignatures;

  /// Whether to set the branch as read-only. If this is true, users will not
  /// be able to push to the branch.
  final BranchProtectionLockBranch? lockBranch;

  /// Whether users can pull changes from upstream when the branch is locked.
  /// Set to `true` to allow fork syncing. Set to `false` to prevent fork
  /// syncing.
  final BranchProtectionAllowForkSyncing? allowForkSyncing;

  /// Converts a [BranchProtection] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'enabled': enabled,
      'required_status_checks': requiredStatusChecks?.toJson(),
      'enforce_admins': enforceAdmins?.toJson(),
      'required_pull_request_reviews': requiredPullRequestReviews?.toJson(),
      'restrictions': restrictions?.toJson(),
      'required_linear_history': requiredLinearHistory?.toJson(),
      'allow_force_pushes': allowForcePushes?.toJson(),
      'allow_deletions': allowDeletions?.toJson(),
      'block_creations': blockCreations?.toJson(),
      'required_conversation_resolution': requiredConversationResolution
          ?.toJson(),
      'name': name,
      'protection_url': protectionUrl,
      'required_signatures': requiredSignatures?.toJson(),
      'lock_branch': lockBranch?.toJson(),
      'allow_fork_syncing': allowForkSyncing?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    enabled,
    requiredStatusChecks,
    enforceAdmins,
    requiredPullRequestReviews,
    restrictions,
    requiredLinearHistory,
    allowForcePushes,
    allowDeletions,
    blockCreations,
    requiredConversationResolution,
    name,
    protectionUrl,
    requiredSignatures,
    lockBranch,
    allowForkSyncing,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BranchProtection &&
        this.url == other.url &&
        this.enabled == other.enabled &&
        this.requiredStatusChecks == other.requiredStatusChecks &&
        this.enforceAdmins == other.enforceAdmins &&
        this.requiredPullRequestReviews == other.requiredPullRequestReviews &&
        this.restrictions == other.restrictions &&
        this.requiredLinearHistory == other.requiredLinearHistory &&
        this.allowForcePushes == other.allowForcePushes &&
        this.allowDeletions == other.allowDeletions &&
        this.blockCreations == other.blockCreations &&
        this.requiredConversationResolution ==
            other.requiredConversationResolution &&
        this.name == other.name &&
        this.protectionUrl == other.protectionUrl &&
        this.requiredSignatures == other.requiredSignatures &&
        this.lockBranch == other.lockBranch &&
        this.allowForkSyncing == other.allowForkSyncing;
  }
}
