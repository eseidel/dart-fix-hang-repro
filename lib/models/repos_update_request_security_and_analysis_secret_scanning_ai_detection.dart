import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template repos_update_request_security_and_analysis_secret_scanning_ai_detection}
/// Use the `status` property to enable or disable secret scanning AI detection
/// for this repository. For more information, see "[Responsible detection of
/// generic secrets with
/// AI](https://docs.github.com/code-security/secret-scanning/using-advanced-secret-scanning-and-push-protection-features/generic-secret-detection/responsible-ai-generic-secrets)."
/// {@endtemplate}
@immutable
class ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection {
  /// {@macro repos_update_request_security_and_analysis_secret_scanning_ai_detection}
  ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection({
    this.status,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection].
  factory ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection',
      json,
      () => ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection(
        status: json['status'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection.fromJson(
      json,
    );
  }

  /// Can be `enabled` or `disabled`.
  final String? status;

  /// Converts a [ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'status': status,
    };
  }

  @override
  int get hashCode => status.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposUpdateRequestSecurityAndAnalysisSecretScanningAiDetection &&
        this.status == other.status;
  }
}
