import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/protected_branch_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github_out/models/protected_branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

@immutable
class ProtectedBranchRequiredPullRequestReviews {
  ProtectedBranchRequiredPullRequestReviews({
    required this.url,
    this.dismissStaleReviews,
    this.requireCodeOwnerReviews,
    this.requiredApprovingReviewCount,
    this.requireLastPushApproval = false,
    this.dismissalRestrictions,
    this.bypassPullRequestAllowances,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ProtectedBranchRequiredPullRequestReviews].
  factory ProtectedBranchRequiredPullRequestReviews.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ProtectedBranchRequiredPullRequestReviews',
      json,
      () => ProtectedBranchRequiredPullRequestReviews(
        url: Uri.parse(json['url'] as String),
        dismissStaleReviews: json['dismiss_stale_reviews'] as bool?,
        requireCodeOwnerReviews: json['require_code_owner_reviews'] as bool?,
        requiredApprovingReviewCount:
            (json['required_approving_review_count'] as int?),
        requireLastPushApproval:
            json['require_last_push_approval'] as bool? ?? false,
        dismissalRestrictions:
            ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions.maybeFromJson(
              json['dismissal_restrictions'] as Map<String, dynamic>?,
            ),
        bypassPullRequestAllowances:
            ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances.maybeFromJson(
              json['bypass_pull_request_allowances'] as Map<String, dynamic>?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProtectedBranchRequiredPullRequestReviews? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ProtectedBranchRequiredPullRequestReviews.fromJson(json);
  }

  final Uri url;
  final bool? dismissStaleReviews;
  final bool? requireCodeOwnerReviews;
  final int? requiredApprovingReviewCount;

  /// Whether the most recent push must be approved by someone other than the
  /// person who pushed it.
  final bool? requireLastPushApproval;
  final ProtectedBranchRequiredPullRequestReviewsDismissalRestrictions?
  dismissalRestrictions;
  final ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances?
  bypassPullRequestAllowances;

  /// Converts a [ProtectedBranchRequiredPullRequestReviews]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'dismiss_stale_reviews': dismissStaleReviews,
      'require_code_owner_reviews': requireCodeOwnerReviews,
      'required_approving_review_count': requiredApprovingReviewCount,
      'require_last_push_approval': requireLastPushApproval,
      'dismissal_restrictions': dismissalRestrictions?.toJson(),
      'bypass_pull_request_allowances': bypassPullRequestAllowances?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    dismissStaleReviews,
    requireCodeOwnerReviews,
    requiredApprovingReviewCount,
    requireLastPushApproval,
    dismissalRestrictions,
    bypassPullRequestAllowances,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProtectedBranchRequiredPullRequestReviews &&
        this.url == other.url &&
        this.dismissStaleReviews == other.dismissStaleReviews &&
        this.requireCodeOwnerReviews == other.requireCodeOwnerReviews &&
        this.requiredApprovingReviewCount ==
            other.requiredApprovingReviewCount &&
        this.requireLastPushApproval == other.requireLastPushApproval &&
        this.dismissalRestrictions == other.dismissalRestrictions &&
        this.bypassPullRequestAllowances == other.bypassPullRequestAllowances;
  }
}
