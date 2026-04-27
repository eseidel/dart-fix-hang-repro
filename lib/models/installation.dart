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
import 'package:github_out/models/installation_account.dart';
import 'package:github_out/models/installation_repository_selection.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template installation}
/// Installation
/// Installation
/// {@endtemplate}
@immutable
class Installation {
  /// {@macro installation}
  Installation({
    required this.id,
    required this.account,
    required this.repositorySelection,
    required this.accessTokensUrl,
    required this.repositoriesUrl,
    required this.htmlUrl,
    required this.appId,
    required this.targetId,
    required this.targetType,
    required this.permissions,
    required this.events,
    required this.createdAt,
    required this.updatedAt,
    required this.singleFileName,
    this.hasMultipleSingleFiles,
    this.singleFilePaths,
    required this.appSlug,
    required this.suspendedBy,
    required this.suspendedAt,
    this.contactEmail,
  });

  /// Converts a `Map<String, dynamic>` to an [Installation].
  factory Installation.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Installation',
      json,
      () => Installation(
        id: (json['id'] as int),
        account: InstallationAccount.maybeFromJson(
          checkedKey(json, 'account') as Map<String, dynamic>,
        ),
        repositorySelection: InstallationRepositorySelection.fromJson(
          json['repository_selection'] as String,
        ),
        accessTokensUrl: Uri.parse(json['access_tokens_url'] as String),
        repositoriesUrl: Uri.parse(json['repositories_url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        appId: (json['app_id'] as int),
        targetId: (json['target_id'] as int),
        targetType: json['target_type'] as String,
        permissions: AppPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>,
        ),
        events: (json['events'] as List).cast<String>(),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        singleFileName: checkedKey(json, 'single_file_name') as String?,
        hasMultipleSingleFiles: json['has_multiple_single_files'] as bool?,
        singleFilePaths: (json['single_file_paths'] as List?)?.cast<String>(),
        appSlug: json['app_slug'] as String,
        suspendedBy: SimpleUser.maybeFromJson(
          checkedKey(json, 'suspended_by') as Map<String, dynamic>?,
        ),
        suspendedAt: maybeParseDateTime(
          checkedKey(json, 'suspended_at') as String?,
        ),
        contactEmail: json['contact_email'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Installation? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Installation.fromJson(json);
  }

  /// The ID of the installation.
  /// example: `1`
  final int id;
  final InstallationAccount? account;

  /// Describe whether all repositories have been selected or there's a
  /// selection involved
  final InstallationRepositorySelection repositorySelection;

  /// example: `'https://api.github.com/app/installations/1/access_tokens'`
  final Uri accessTokensUrl;

  /// example: `'https://api.github.com/installation/repositories'`
  final Uri repositoriesUrl;

  /// example:
  /// `'https://github.com/organizations/github/settings/installations/1'`
  final Uri htmlUrl;

  /// example: `1`
  final int appId;

  /// The ID of the user or organization this token is being scoped to.
  final int targetId;

  /// example: `'Organization'`
  final String targetType;

  /// App Permissions
  /// The permissions granted to the user access token.
  /// example: `{contents: read, issues: read, deployments: write, single_file: read}`
  final AppPermissions permissions;
  final List<String> events;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// example: `'config.yaml'`
  final String? singleFileName;

  /// example: `true`
  final bool? hasMultipleSingleFiles;

  /// example: `'config.yml'`
  /// example: `'.github/issue_TEMPLATE.md'`
  final List<String>? singleFilePaths;

  /// example: `'github-actions'`
  final String appSlug;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? suspendedBy;
  final DateTime? suspendedAt;

  /// example: `'"test_13f1e99741e3e004@d7e1eb0bc0a1ba12.com"'`
  final String? contactEmail;

  /// Converts an [Installation] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'account': account?.toJson(),
      'repository_selection': repositorySelection.toJson(),
      'access_tokens_url': accessTokensUrl.toString(),
      'repositories_url': repositoriesUrl.toString(),
      'html_url': htmlUrl.toString(),
      'app_id': appId,
      'target_id': targetId,
      'target_type': targetType,
      'permissions': permissions.toJson(),
      'events': events,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'single_file_name': singleFileName,
      'has_multiple_single_files': hasMultipleSingleFiles,
      'single_file_paths': singleFilePaths,
      'app_slug': appSlug,
      'suspended_by': suspendedBy?.toJson(),
      'suspended_at': suspendedAt?.toIso8601String(),
      'contact_email': contactEmail,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    account,
    repositorySelection,
    accessTokensUrl,
    repositoriesUrl,
    htmlUrl,
    appId,
    targetId,
    targetType,
    permissions,
    listHash(events),
    createdAt,
    updatedAt,
    singleFileName,
    hasMultipleSingleFiles,
    listHash(singleFilePaths),
    appSlug,
    suspendedBy,
    suspendedAt,
    contactEmail,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Installation &&
        this.id == other.id &&
        this.account == other.account &&
        this.repositorySelection == other.repositorySelection &&
        this.accessTokensUrl == other.accessTokensUrl &&
        this.repositoriesUrl == other.repositoriesUrl &&
        this.htmlUrl == other.htmlUrl &&
        this.appId == other.appId &&
        this.targetId == other.targetId &&
        this.targetType == other.targetType &&
        this.permissions == other.permissions &&
        listsEqual(this.events, other.events) &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.singleFileName == other.singleFileName &&
        this.hasMultipleSingleFiles == other.hasMultipleSingleFiles &&
        listsEqual(this.singleFilePaths, other.singleFilePaths) &&
        this.appSlug == other.appSlug &&
        this.suspendedBy == other.suspendedBy &&
        this.suspendedAt == other.suspendedAt &&
        this.contactEmail == other.contactEmail;
  }
}
