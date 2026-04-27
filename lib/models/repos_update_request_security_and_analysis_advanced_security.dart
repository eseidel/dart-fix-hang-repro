import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template repos_update_request_security_and_analysis_advanced_security}
/// Use the `status` property to enable or disable GitHub Advanced Security for
/// this repository. For more information, see "[About GitHub Advanced
/// Security](/github/getting-started-with-github/learning-about-github/about-github-advanced-security)."
/// {@endtemplate}
@immutable
class ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity {
  /// {@macro repos_update_request_security_and_analysis_advanced_security}
  ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity({
    this.status,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity].
  factory ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity',
      json,
      () => ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity(
        status: json['status'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity.fromJson(json);
  }

  /// Can be `enabled` or `disabled`.
  final String? status;

  /// Converts a [ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity]
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
    return other is ReposUpdateRequestSecurityAndAnalysisAdvancedSecurity &&
        this.status == other.status;
  }
}
