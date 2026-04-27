import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:meta/meta.dart';

@immutable
class SecurityAndAnalysisSecretScanningNonProviderPatterns {
  SecurityAndAnalysisSecretScanningNonProviderPatterns({
    this.status,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [SecurityAndAnalysisSecretScanningNonProviderPatterns].
  factory SecurityAndAnalysisSecretScanningNonProviderPatterns.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'SecurityAndAnalysisSecretScanningNonProviderPatterns',
      json,
      () => SecurityAndAnalysisSecretScanningNonProviderPatterns(
        status:
            SecurityAndAnalysisSecretScanningNonProviderPatternsStatus.maybeFromJson(
              json['status'] as String?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAndAnalysisSecretScanningNonProviderPatterns? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAndAnalysisSecretScanningNonProviderPatterns.fromJson(json);
  }

  final SecurityAndAnalysisSecretScanningNonProviderPatternsStatus? status;

  /// Converts a [SecurityAndAnalysisSecretScanningNonProviderPatterns]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'status': status?.toJson(),
    };
  }

  @override
  int get hashCode => status.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SecurityAndAnalysisSecretScanningNonProviderPatterns &&
        this.status == other.status;
  }
}
