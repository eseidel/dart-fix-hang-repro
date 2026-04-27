// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/app_permissions.dart';
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
  const Installation({
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
    required this.appSlug,
    required this.suspendedBy,
    required this.suspendedAt,
    this.hasMultipleSingleFiles,
    this.singleFilePaths,
    this.contactEmail,
  });

  /// Converts a `Map<String, dynamic>` to an [Installation].
  factory Installation.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Installation',
      json,
      () => Installation(
        id: json['id'] as int,
        account: InstallationAccount.maybeFromJson(
          checkedKey(json, 'account') as Map<String, dynamic>,
        ),
        repositorySelection: InstallationRepositorySelection.fromJson(
          json['repository_selection'] as String,
        ),
        accessTokensUrl: Uri.parse(json['access_tokens_url'] as String),
        repositoriesUrl: Uri.parse(json['repositories_url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        appId: json['app_id'] as int,
        targetId: json['target_id'] as int,
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
        id == other.id &&
        account == other.account &&
        repositorySelection == other.repositorySelection &&
        accessTokensUrl == other.accessTokensUrl &&
        repositoriesUrl == other.repositoriesUrl &&
        htmlUrl == other.htmlUrl &&
        appId == other.appId &&
        targetId == other.targetId &&
        targetType == other.targetType &&
        permissions == other.permissions &&
        listsEqual(events, other.events) &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        singleFileName == other.singleFileName &&
        hasMultipleSingleFiles == other.hasMultipleSingleFiles &&
        listsEqual(singleFilePaths, other.singleFilePaths) &&
        appSlug == other.appSlug &&
        suspendedBy == other.suspendedBy &&
        suspendedAt == other.suspendedAt &&
        contactEmail == other.contactEmail;
  }
}
