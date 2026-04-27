// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/security_and_analysis_advanced_security_status.dart';
import 'package:meta/meta.dart';

@immutable
class SecurityAndAnalysisAdvancedSecurity {
  const SecurityAndAnalysisAdvancedSecurity({
    this.status,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [SecurityAndAnalysisAdvancedSecurity].
  factory SecurityAndAnalysisAdvancedSecurity.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'SecurityAndAnalysisAdvancedSecurity',
      json,
      () => SecurityAndAnalysisAdvancedSecurity(
        status: SecurityAndAnalysisAdvancedSecurityStatus.maybeFromJson(
          json['status'] as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAndAnalysisAdvancedSecurity? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAndAnalysisAdvancedSecurity.fromJson(json);
  }

  final SecurityAndAnalysisAdvancedSecurityStatus? status;

  /// Converts a [SecurityAndAnalysisAdvancedSecurity]
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
    return other is SecurityAndAnalysisAdvancedSecurity &&
        status == other.status;
  }
}
