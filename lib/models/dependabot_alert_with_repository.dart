import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/alert_auto_dismissed_at.dart';
import 'package:github_out/models/alert_created_at.dart';
import 'package:github_out/models/alert_dismissed_at.dart';
import 'package:github_out/models/alert_fixed_at.dart';
import 'package:github_out/models/alert_html_url.dart';
import 'package:github_out/models/alert_number.dart';
import 'package:github_out/models/alert_updated_at.dart';
import 'package:github_out/models/alert_url.dart';
import 'package:github_out/models/cvss_severities.dart';
import 'package:github_out/models/cvss_severities_cvss_v3.dart';
import 'package:github_out/models/cvss_severities_cvss_v4.dart';
import 'package:github_out/models/dependabot_alert_package.dart';
import 'package:github_out/models/dependabot_alert_security_advisory.dart';
import 'package:github_out/models/dependabot_alert_security_advisory_cvss.dart';
import 'package:github_out/models/dependabot_alert_security_advisory_cwes_inner.dart';
import 'package:github_out/models/dependabot_alert_security_advisory_identifiers_inner.dart';
import 'package:github_out/models/dependabot_alert_security_advisory_identifiers_inner_type.dart';
import 'package:github_out/models/dependabot_alert_security_advisory_references_inner.dart';
import 'package:github_out/models/dependabot_alert_security_advisory_severity.dart';
import 'package:github_out/models/dependabot_alert_security_vulnerability.dart';
import 'package:github_out/models/dependabot_alert_security_vulnerability_first_patched_version.dart';
import 'package:github_out/models/dependabot_alert_security_vulnerability_severity.dart';
import 'package:github_out/models/dependabot_alert_with_repository_dependency.dart';
import 'package:github_out/models/dependabot_alert_with_repository_dependency_relationship.dart';
import 'package:github_out/models/dependabot_alert_with_repository_dependency_scope.dart';
import 'package:github_out/models/dependabot_alert_with_repository_dismissed_reason.dart';
import 'package:github_out/models/dependabot_alert_with_repository_state.dart';
import 'package:github_out/models/security_advisory_epss.dart';
import 'package:github_out/models/simple_repository.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template dependabot_alert_with_repository}
/// A Dependabot alert.
/// {@endtemplate}
@immutable
class DependabotAlertWithRepository {
  /// {@macro dependabot_alert_with_repository}
  DependabotAlertWithRepository({
    required this.number,
    required this.state,
    required this.dependency,
    required this.securityAdvisory,
    required this.securityVulnerability,
    required this.url,
    required this.htmlUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.dismissedAt,
    required this.dismissedBy,
    required this.dismissedReason,
    required this.dismissedComment,
    required this.fixedAt,
    this.autoDismissedAt,
    required this.repository,
  });

  /// Converts a `Map<String, dynamic>` to a [DependabotAlertWithRepository].
  factory DependabotAlertWithRepository.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'DependabotAlertWithRepository',
      json,
      () => DependabotAlertWithRepository(
        number: AlertNumber.fromJson(json['number'] as int),
        state: DependabotAlertWithRepositoryState.fromJson(
          json['state'] as String,
        ),
        dependency: DependabotAlertWithRepositoryDependency.fromJson(
          json['dependency'] as Map<String, dynamic>,
        ),
        securityAdvisory: DependabotAlertSecurityAdvisory.fromJson(
          json['security_advisory'] as Map<String, dynamic>,
        ),
        securityVulnerability: DependabotAlertSecurityVulnerability.fromJson(
          json['security_vulnerability'] as Map<String, dynamic>,
        ),
        url: AlertUrl.fromJson(json['url'] as String),
        htmlUrl: AlertHtmlUrl.fromJson(json['html_url'] as String),
        createdAt: AlertCreatedAt.fromJson(json['created_at'] as String),
        updatedAt: AlertUpdatedAt.fromJson(json['updated_at'] as String),
        dismissedAt: AlertDismissedAt.maybeFromJson(
          checkedKey(json, 'dismissed_at') as String?,
        ),
        dismissedBy: SimpleUser.maybeFromJson(
          checkedKey(json, 'dismissed_by') as Map<String, dynamic>?,
        ),
        dismissedReason:
            DependabotAlertWithRepositoryDismissedReason.maybeFromJson(
              checkedKey(json, 'dismissed_reason') as String?,
            ),
        dismissedComment: checkedKey(json, 'dismissed_comment') as String?,
        fixedAt: AlertFixedAt.maybeFromJson(
          checkedKey(json, 'fixed_at') as String?,
        ),
        autoDismissedAt: AlertAutoDismissedAt.maybeFromJson(
          json['auto_dismissed_at'] as String?,
        ),
        repository: SimpleRepository.fromJson(
          json['repository'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertWithRepository? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependabotAlertWithRepository.fromJson(json);
  }

  /// The security alert number.
  final AlertNumber number;

  /// The state of the Dependabot alert.
  final DependabotAlertWithRepositoryState state;

  /// Details for the vulnerable dependency.
  final DependabotAlertWithRepositoryDependency dependency;

  /// Details for the GitHub Security Advisory.
  final DependabotAlertSecurityAdvisory securityAdvisory;

  /// Details pertaining to one vulnerable version range for the advisory.
  final DependabotAlertSecurityVulnerability securityVulnerability;

  /// The REST API URL of the alert resource.
  final AlertUrl url;

  /// The GitHub URL of the alert resource.
  final AlertHtmlUrl htmlUrl;

  /// The time that the alert was created in ISO 8601 format:
  /// `YYYY-MM-DDTHH:MM:SSZ`.
  final AlertCreatedAt createdAt;

  /// The time that the alert was last updated in ISO 8601 format:
  /// `YYYY-MM-DDTHH:MM:SSZ`.
  final AlertUpdatedAt updatedAt;

  /// The time that the alert was dismissed in ISO 8601 format:
  /// `YYYY-MM-DDTHH:MM:SSZ`.
  final AlertDismissedAt? dismissedAt;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? dismissedBy;

  /// The reason that the alert was dismissed.
  final DependabotAlertWithRepositoryDismissedReason? dismissedReason;

  /// An optional comment associated with the alert's dismissal.
  final String? dismissedComment;

  /// The time that the alert was no longer detected and was considered fixed
  /// in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
  final AlertFixedAt? fixedAt;

  /// The time that the alert was auto-dismissed in ISO 8601 format:
  /// `YYYY-MM-DDTHH:MM:SSZ`.
  final AlertAutoDismissedAt? autoDismissedAt;

  /// Simple Repository
  /// A GitHub repository.
  final SimpleRepository repository;

  /// Converts a [DependabotAlertWithRepository] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'number': number.toJson(),
      'state': state.toJson(),
      'dependency': dependency.toJson(),
      'security_advisory': securityAdvisory.toJson(),
      'security_vulnerability': securityVulnerability.toJson(),
      'url': url.toJson(),
      'html_url': htmlUrl.toJson(),
      'created_at': createdAt.toJson(),
      'updated_at': updatedAt.toJson(),
      'dismissed_at': dismissedAt?.toJson(),
      'dismissed_by': dismissedBy?.toJson(),
      'dismissed_reason': dismissedReason?.toJson(),
      'dismissed_comment': dismissedComment,
      'fixed_at': fixedAt?.toJson(),
      'auto_dismissed_at': autoDismissedAt?.toJson(),
      'repository': repository.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    number,
    state,
    dependency,
    securityAdvisory,
    securityVulnerability,
    url,
    htmlUrl,
    createdAt,
    updatedAt,
    dismissedAt,
    dismissedBy,
    dismissedReason,
    dismissedComment,
    fixedAt,
    autoDismissedAt,
    repository,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DependabotAlertWithRepository &&
        this.number == other.number &&
        this.state == other.state &&
        this.dependency == other.dependency &&
        this.securityAdvisory == other.securityAdvisory &&
        this.securityVulnerability == other.securityVulnerability &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.dismissedAt == other.dismissedAt &&
        this.dismissedBy == other.dismissedBy &&
        this.dismissedReason == other.dismissedReason &&
        this.dismissedComment == other.dismissedComment &&
        this.fixedAt == other.fixedAt &&
        this.autoDismissedAt == other.autoDismissedAt &&
        this.repository == other.repository;
  }
}
