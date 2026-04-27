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
import 'package:github_out/models/installation_token_repository_selection.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template installation_token}
/// Installation Token
/// Authentication token for a GitHub App installed on a user or org.
/// {@endtemplate}
@immutable
class InstallationToken {
  /// {@macro installation_token}
  InstallationToken({
    required this.token,
    required this.expiresAt,
    this.permissions,
    this.repositorySelection,
    this.repositories,
    this.singleFile,
    this.hasMultipleSingleFiles,
    this.singleFilePaths,
  });

  /// Converts a `Map<String, dynamic>` to an [InstallationToken].
  factory InstallationToken.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'InstallationToken',
      json,
      () => InstallationToken(
        token: json['token'] as String,
        expiresAt: json['expires_at'] as String,
        permissions: AppPermissions.maybeFromJson(
          json['permissions'] as Map<String, dynamic>?,
        ),
        repositorySelection: InstallationTokenRepositorySelection.maybeFromJson(
          json['repository_selection'] as String?,
        ),
        repositories: (json['repositories'] as List?)
            ?.map<Repository>(
              (e) => Repository.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        singleFile: json['single_file'] as String?,
        hasMultipleSingleFiles: json['has_multiple_single_files'] as bool?,
        singleFilePaths: (json['single_file_paths'] as List?)?.cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InstallationToken? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return InstallationToken.fromJson(json);
  }

  final String token;
  final String expiresAt;

  /// App Permissions
  /// The permissions granted to the user access token.
  /// example: `{contents: read, issues: read, deployments: write, single_file: read}`
  final AppPermissions? permissions;
  final InstallationTokenRepositorySelection? repositorySelection;
  final List<Repository>? repositories;

  /// example: `'README.md'`
  final String? singleFile;

  /// example: `true`
  final bool? hasMultipleSingleFiles;

  /// example: `'config.yml'`
  /// example: `'.github/issue_TEMPLATE.md'`
  final List<String>? singleFilePaths;

  /// Converts an [InstallationToken] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'expires_at': expiresAt,
      'permissions': permissions?.toJson(),
      'repository_selection': repositorySelection?.toJson(),
      'repositories': repositories?.map((e) => e.toJson()).toList(),
      'single_file': singleFile,
      'has_multiple_single_files': hasMultipleSingleFiles,
      'single_file_paths': singleFilePaths,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    token,
    expiresAt,
    permissions,
    repositorySelection,
    listHash(repositories),
    singleFile,
    hasMultipleSingleFiles,
    listHash(singleFilePaths),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is InstallationToken &&
        this.token == other.token &&
        this.expiresAt == other.expiresAt &&
        this.permissions == other.permissions &&
        this.repositorySelection == other.repositorySelection &&
        listsEqual(this.repositories, other.repositories) &&
        this.singleFile == other.singleFile &&
        this.hasMultipleSingleFiles == other.hasMultipleSingleFiles &&
        listsEqual(this.singleFilePaths, other.singleFilePaths);
  }
}
