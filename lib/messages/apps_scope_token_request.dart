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
import 'package:meta/meta.dart';

@immutable
class AppsScopeTokenRequest {
  AppsScopeTokenRequest({
    required this.accessToken,
    this.target,
    this.targetId,
    this.repositories,
    this.repositoryIds,
    this.permissions,
  });

  /// Converts a `Map<String, dynamic>` to an [AppsScopeTokenRequest].
  factory AppsScopeTokenRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'AppsScopeTokenRequest',
      json,
      () => AppsScopeTokenRequest(
        accessToken: json['access_token'] as String,
        target: json['target'] as String?,
        targetId: (json['target_id'] as int?),
        repositories: (json['repositories'] as List?)?.cast<String>(),
        repositoryIds: (json['repository_ids'] as List?)?.cast<int>(),
        permissions: AppPermissions.maybeFromJson(
          json['permissions'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppsScopeTokenRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return AppsScopeTokenRequest.fromJson(json);
  }

  /// The access token used to authenticate to the GitHub API.
  /// example: `'e72e16c7e42f292c6912e7710c838347ae178b4a'`
  final String accessToken;

  /// The name of the user or organization to scope the user access token to.
  /// **Required** unless `target_id` is specified.
  /// example: `'octocat'`
  final String? target;

  /// The ID of the user or organization to scope the user access token to.
  /// **Required** unless `target` is specified.
  /// example: `1`
  final int? targetId;

  /// The list of repository names to scope the user access token to.
  /// `repositories` may not be specified if `repository_ids` is specified.
  final List<String>? repositories;

  /// The list of repository IDs to scope the user access token to.
  /// `repository_ids` may not be specified if `repositories` is specified.
  /// example: `1`
  final List<int>? repositoryIds;

  /// App Permissions
  /// The permissions granted to the user access token.
  /// example: `{contents: read, issues: read, deployments: write, single_file: read}`
  final AppPermissions? permissions;

  /// Converts an [AppsScopeTokenRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'target': target,
      'target_id': targetId,
      'repositories': repositories,
      'repository_ids': repositoryIds,
      'permissions': permissions?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    accessToken,
    target,
    targetId,
    listHash(repositories),
    listHash(repositoryIds),
    permissions,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppsScopeTokenRequest &&
        this.accessToken == other.accessToken &&
        this.target == other.target &&
        this.targetId == other.targetId &&
        listsEqual(this.repositories, other.repositories) &&
        listsEqual(this.repositoryIds, other.repositoryIds) &&
        this.permissions == other.permissions;
  }
}
