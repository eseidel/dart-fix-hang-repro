import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:meta/meta.dart';

@immutable
class CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner {
  CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner({
    required this.reviewerId,
    required this.reviewerType,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner].
  factory CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner',
      json,
      () => CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner(
        reviewerId: (json['reviewer_id'] as int),
        reviewerType:
            CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(
              json['reviewer_type'] as String,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(
      json,
    );
  }

  /// The ID of the team or role selected as a bypass reviewer
  final int reviewerId;

  /// The type of the bypass reviewer
  final CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType
  reviewerType;

  /// Converts a [CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'reviewer_id': reviewerId,
      'reviewer_type': reviewerType.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    reviewerId,
    reviewerType,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is CodeSecurityConfigurationSecretScanningDelegatedBypassOptionsReviewersInner &&
        this.reviewerId == other.reviewerId &&
        this.reviewerType == other.reviewerType;
  }
}
