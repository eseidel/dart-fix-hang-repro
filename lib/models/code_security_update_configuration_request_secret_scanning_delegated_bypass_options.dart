import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_security_update_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github_out/models/code_security_update_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:meta/meta.dart';

/// {@template code_security_update_configuration_request_secret_scanning_delegated_bypass_options}
/// Feature options for secret scanning delegated bypass
/// {@endtemplate}
@immutable
class CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions {
  /// {@macro code_security_update_configuration_request_secret_scanning_delegated_bypass_options}
  CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions({
    this.reviewers,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions].
  factory CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions',
      json,
      () => CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions(
        reviewers: (json['reviewers'] as List?)
            ?.map<
              CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInner
            >(
              (e) =>
                  CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInner.fromJson(
                    e as Map<String, dynamic>,
                  ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions.fromJson(
      json,
    );
  }

  /// The bypass reviewers for secret scanning delegated bypass
  final List<
    CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInner
  >?
  reviewers;

  /// Converts a [CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'reviewers': reviewers?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => listHash(reviewers).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedBypassOptions &&
        listsEqual(this.reviewers, other.reviewers);
  }
}
