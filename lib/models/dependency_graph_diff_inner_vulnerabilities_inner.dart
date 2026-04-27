import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class DependencyGraphDiffInnerVulnerabilitiesInner {
  DependencyGraphDiffInnerVulnerabilitiesInner({
    required this.severity,
    required this.advisoryGhsaId,
    required this.advisorySummary,
    required this.advisoryUrl,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [DependencyGraphDiffInnerVulnerabilitiesInner].
  factory DependencyGraphDiffInnerVulnerabilitiesInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'DependencyGraphDiffInnerVulnerabilitiesInner',
      json,
      () => DependencyGraphDiffInnerVulnerabilitiesInner(
        severity: json['severity'] as String,
        advisoryGhsaId: json['advisory_ghsa_id'] as String,
        advisorySummary: json['advisory_summary'] as String,
        advisoryUrl: json['advisory_url'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependencyGraphDiffInnerVulnerabilitiesInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependencyGraphDiffInnerVulnerabilitiesInner.fromJson(json);
  }

  /// example: `'critical'`
  final String severity;

  /// example: `'GHSA-rf4j-j272-fj86'`
  final String advisoryGhsaId;

  /// example: `'A summary of the advisory.'`
  final String advisorySummary;

  /// example: `'https://github.com/advisories/GHSA-rf4j-j272-fj86'`
  final String advisoryUrl;

  /// Converts a [DependencyGraphDiffInnerVulnerabilitiesInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'severity': severity,
      'advisory_ghsa_id': advisoryGhsaId,
      'advisory_summary': advisorySummary,
      'advisory_url': advisoryUrl,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    severity,
    advisoryGhsaId,
    advisorySummary,
    advisoryUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DependencyGraphDiffInnerVulnerabilitiesInner &&
        this.severity == other.severity &&
        this.advisoryGhsaId == other.advisoryGhsaId &&
        this.advisorySummary == other.advisorySummary &&
        this.advisoryUrl == other.advisoryUrl;
  }
}
