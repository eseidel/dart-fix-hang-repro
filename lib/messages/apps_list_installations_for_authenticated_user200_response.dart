import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/app_permissions.dart';
import 'package:github_out/models/app_permissions_actions.dart';
import 'package:github_out/models/app_permissions_administration.dart';
import 'package:github_out/models/app_permissions_checks.dart';
import 'package:github_out/models/app_permissions_codespaces.dart';
import 'package:github_out/models/app_permissions_contents.dart';
import 'package:github_out/models/app_permissions_dependabot_secrets.dart';
import 'package:github_out/models/app_permissions_deployments.dart';
import 'package:github_out/models/app_permissions_email_addresses.dart';
import 'package:github_out/models/app_permissions_environments.dart';
import 'package:github_out/models/app_permissions_followers.dart';
import 'package:github_out/models/app_permissions_git_ssh_keys.dart';
import 'package:github_out/models/app_permissions_gpg_keys.dart';
import 'package:github_out/models/app_permissions_interaction_limits.dart';
import 'package:github_out/models/app_permissions_issues.dart';
import 'package:github_out/models/app_permissions_members.dart';
import 'package:github_out/models/app_permissions_metadata.dart';
import 'package:github_out/models/app_permissions_organization_administration.dart';
import 'package:github_out/models/app_permissions_organization_announcement_banners.dart';
import 'package:github_out/models/app_permissions_organization_copilot_seat_management.dart';
import 'package:github_out/models/app_permissions_organization_custom_org_roles.dart';
import 'package:github_out/models/app_permissions_organization_custom_properties.dart';
import 'package:github_out/models/app_permissions_organization_custom_roles.dart';
import 'package:github_out/models/app_permissions_organization_events.dart';
import 'package:github_out/models/app_permissions_organization_hooks.dart';
import 'package:github_out/models/app_permissions_organization_packages.dart';
import 'package:github_out/models/app_permissions_organization_personal_access_token_requests.dart';
import 'package:github_out/models/app_permissions_organization_personal_access_tokens.dart';
import 'package:github_out/models/app_permissions_organization_plan.dart';
import 'package:github_out/models/app_permissions_organization_projects.dart';
import 'package:github_out/models/app_permissions_organization_secrets.dart';
import 'package:github_out/models/app_permissions_organization_self_hosted_runners.dart';
import 'package:github_out/models/app_permissions_organization_user_blocking.dart';
import 'package:github_out/models/app_permissions_packages.dart';
import 'package:github_out/models/app_permissions_pages.dart';
import 'package:github_out/models/app_permissions_profile.dart';
import 'package:github_out/models/app_permissions_pull_requests.dart';
import 'package:github_out/models/app_permissions_repository_custom_properties.dart';
import 'package:github_out/models/app_permissions_repository_hooks.dart';
import 'package:github_out/models/app_permissions_repository_projects.dart';
import 'package:github_out/models/app_permissions_secret_scanning_alerts.dart';
import 'package:github_out/models/app_permissions_secrets.dart';
import 'package:github_out/models/app_permissions_security_events.dart';
import 'package:github_out/models/app_permissions_single_file.dart';
import 'package:github_out/models/app_permissions_starring.dart';
import 'package:github_out/models/app_permissions_statuses.dart';
import 'package:github_out/models/app_permissions_team_discussions.dart';
import 'package:github_out/models/app_permissions_vulnerability_alerts.dart';
import 'package:github_out/models/app_permissions_workflows.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/installation.dart';
import 'package:github_out/models/installation_account.dart';
import 'package:github_out/models/installation_repository_selection.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

@immutable
class AppsListInstallationsForAuthenticatedUser200Response {
  AppsListInstallationsForAuthenticatedUser200Response({
    required this.totalCount,
    required this.installations,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [AppsListInstallationsForAuthenticatedUser200Response].
  factory AppsListInstallationsForAuthenticatedUser200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'AppsListInstallationsForAuthenticatedUser200Response',
      json,
      () => AppsListInstallationsForAuthenticatedUser200Response(
        totalCount: (json['total_count'] as int),
        installations: (json['installations'] as List)
            .map<Installation>(
              (e) => Installation.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppsListInstallationsForAuthenticatedUser200Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return AppsListInstallationsForAuthenticatedUser200Response.fromJson(json);
  }

  final int totalCount;
  final List<Installation> installations;

  /// Converts an [AppsListInstallationsForAuthenticatedUser200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'installations': installations.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalCount,
    listHash(installations),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppsListInstallationsForAuthenticatedUser200Response &&
        this.totalCount == other.totalCount &&
        listsEqual(this.installations, other.installations);
  }
}
