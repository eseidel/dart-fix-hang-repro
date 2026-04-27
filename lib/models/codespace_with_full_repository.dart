import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_of_conduct_simple.dart';
import 'package:github_out/models/codespace_machine.dart';
import 'package:github_out/models/codespace_machine_prebuild_availability.dart';
import 'package:github_out/models/codespace_with_full_repository_git_status.dart';
import 'package:github_out/models/codespace_with_full_repository_location.dart';
import 'package:github_out/models/codespace_with_full_repository_runtime_constraints.dart';
import 'package:github_out/models/codespace_with_full_repository_state.dart';
import 'package:github_out/models/full_repository.dart';
import 'package:github_out/models/full_repository_merge_commit_message.dart';
import 'package:github_out/models/full_repository_merge_commit_title.dart';
import 'package:github_out/models/full_repository_permissions.dart';
import 'package:github_out/models/full_repository_squash_merge_commit_message.dart';
import 'package:github_out/models/full_repository_squash_merge_commit_title.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/security_and_analysis.dart';
import 'package:github_out/models/security_and_analysis_advanced_security.dart';
import 'package:github_out/models/security_and_analysis_advanced_security_status.dart';
import 'package:github_out/models/security_and_analysis_code_security.dart';
import 'package:github_out/models/security_and_analysis_code_security_status.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_status.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template codespace_with_full_repository}
/// Codespace
/// A codespace.
/// {@endtemplate}
@immutable
class CodespaceWithFullRepository {
  /// {@macro codespace_with_full_repository}
  CodespaceWithFullRepository({
    required this.id,
    required this.name,
    this.displayName,
    required this.environmentId,
    required this.owner,
    required this.billableOwner,
    required this.repository,
    required this.machine,
    this.devcontainerPath,
    required this.prebuild,
    required this.createdAt,
    required this.updatedAt,
    required this.lastUsedAt,
    required this.state,
    required this.url,
    required this.gitStatus,
    required this.location,
    required this.idleTimeoutMinutes,
    required this.webUrl,
    required this.machinesUrl,
    required this.startUrl,
    required this.stopUrl,
    this.publishUrl,
    required this.pullsUrl,
    required this.recentFolders,
    this.runtimeConstraints,
    this.pendingOperation,
    this.pendingOperationDisabledReason,
    this.idleTimeoutNotice,
    this.retentionPeriodMinutes,
    this.retentionExpiresAt,
  });

  /// Converts a `Map<String, dynamic>` to a [CodespaceWithFullRepository].
  factory CodespaceWithFullRepository.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CodespaceWithFullRepository',
      json,
      () => CodespaceWithFullRepository(
        id: (json['id'] as int),
        name: json['name'] as String,
        displayName: json['display_name'] as String?,
        environmentId: checkedKey(json, 'environment_id') as String?,
        owner: SimpleUser.fromJson(json['owner'] as Map<String, dynamic>),
        billableOwner: SimpleUser.fromJson(
          json['billable_owner'] as Map<String, dynamic>,
        ),
        repository: FullRepository.fromJson(
          json['repository'] as Map<String, dynamic>,
        ),
        machine: CodespaceMachine.maybeFromJson(
          checkedKey(json, 'machine') as Map<String, dynamic>?,
        ),
        devcontainerPath: json['devcontainer_path'] as String?,
        prebuild: checkedKey(json, 'prebuild') as bool?,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        lastUsedAt: DateTime.parse(json['last_used_at'] as String),
        state: CodespaceWithFullRepositoryState.fromJson(
          json['state'] as String,
        ),
        url: Uri.parse(json['url'] as String),
        gitStatus: CodespaceWithFullRepositoryGitStatus.fromJson(
          json['git_status'] as Map<String, dynamic>,
        ),
        location: CodespaceWithFullRepositoryLocation.fromJson(
          json['location'] as String,
        ),
        idleTimeoutMinutes: (checkedKey(json, 'idle_timeout_minutes') as int?),
        webUrl: Uri.parse(json['web_url'] as String),
        machinesUrl: Uri.parse(json['machines_url'] as String),
        startUrl: Uri.parse(json['start_url'] as String),
        stopUrl: Uri.parse(json['stop_url'] as String),
        publishUrl: maybeParseUri(json['publish_url'] as String?),
        pullsUrl: maybeParseUri(checkedKey(json, 'pulls_url') as String?),
        recentFolders: (json['recent_folders'] as List).cast<String>(),
        runtimeConstraints:
            CodespaceWithFullRepositoryRuntimeConstraints.maybeFromJson(
              json['runtime_constraints'] as Map<String, dynamic>?,
            ),
        pendingOperation: json['pending_operation'] as bool?,
        pendingOperationDisabledReason:
            json['pending_operation_disabled_reason'] as String?,
        idleTimeoutNotice: json['idle_timeout_notice'] as String?,
        retentionPeriodMinutes: (json['retention_period_minutes'] as int?),
        retentionExpiresAt: maybeParseDateTime(
          json['retention_expires_at'] as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespaceWithFullRepository? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespaceWithFullRepository.fromJson(json);
  }

  /// example: `1`
  final int id;

  /// Automatically generated name of this codespace.
  /// example: `'monalisa-octocat-hello-world-g4wpq6h95q'`
  final String name;

  /// Display name for this codespace.
  /// example: `'bookish space pancake'`
  final String? displayName;

  /// UUID identifying this codespace's environment.
  /// example: `'26a7c758-7299-4a73-b978-5a92a7ae98a0'`
  final String? environmentId;

  /// Simple User
  /// A GitHub user.
  final SimpleUser owner;

  /// Simple User
  /// A GitHub user.
  final SimpleUser billableOwner;

  /// Full Repository
  /// Full Repository
  final FullRepository repository;

  /// Codespace machine
  /// A description of the machine powering a codespace.
  final CodespaceMachine? machine;

  /// Path to devcontainer.json from repo root used to create Codespace.
  /// example: `'.devcontainer/example/devcontainer.json'`
  final String? devcontainerPath;

  /// Whether the codespace was created from a prebuild.
  /// example: `false`
  final bool? prebuild;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime createdAt;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime updatedAt;

  /// Last known time this codespace was started.
  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime lastUsedAt;

  /// State of this codespace.
  /// example: `'Available'`
  final CodespaceWithFullRepositoryState state;

  /// API URL for this codespace.
  final Uri url;

  /// Details about the codespace's git repository.
  final CodespaceWithFullRepositoryGitStatus gitStatus;

  /// The initally assigned location of a new codespace.
  /// example: `'WestUs2'`
  final CodespaceWithFullRepositoryLocation location;

  /// The number of minutes of inactivity after which this codespace will be
  /// automatically stopped.
  /// example: `60`
  final int? idleTimeoutMinutes;

  /// URL to access this codespace on the web.
  final Uri webUrl;

  /// API URL to access available alternate machine types for this codespace.
  final Uri machinesUrl;

  /// API URL to start this codespace.
  final Uri startUrl;

  /// API URL to stop this codespace.
  final Uri stopUrl;

  /// API URL to publish this codespace to a new repository.
  final Uri? publishUrl;

  /// API URL for the Pull Request associated with this codespace, if any.
  final Uri? pullsUrl;
  final List<String> recentFolders;
  final CodespaceWithFullRepositoryRuntimeConstraints? runtimeConstraints;

  /// Whether or not a codespace has a pending async operation. This would
  /// mean that the codespace is temporarily unavailable. The only thing that
  /// you can do with a codespace in this state is delete it.
  final bool? pendingOperation;

  /// Text to show user when codespace is disabled by a pending operation
  final String? pendingOperationDisabledReason;

  /// Text to show user when codespace idle timeout minutes has been overriden
  /// by an organization policy
  final String? idleTimeoutNotice;

  /// Duration in minutes after codespace has gone idle in which it will be
  /// deleted. Must be integer minutes between 0 and 43200 (30 days).
  /// example: `60`
  final int? retentionPeriodMinutes;

  /// When a codespace will be auto-deleted based on the
  /// "retention_period_minutes" and "last_used_at"
  /// example: `'2011-01-26T20:01:12Z'`
  final DateTime? retentionExpiresAt;

  /// Converts a [CodespaceWithFullRepository] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'display_name': displayName,
      'environment_id': environmentId,
      'owner': owner.toJson(),
      'billable_owner': billableOwner.toJson(),
      'repository': repository.toJson(),
      'machine': machine?.toJson(),
      'devcontainer_path': devcontainerPath,
      'prebuild': prebuild,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'last_used_at': lastUsedAt.toIso8601String(),
      'state': state.toJson(),
      'url': url.toString(),
      'git_status': gitStatus.toJson(),
      'location': location.toJson(),
      'idle_timeout_minutes': idleTimeoutMinutes,
      'web_url': webUrl.toString(),
      'machines_url': machinesUrl.toString(),
      'start_url': startUrl.toString(),
      'stop_url': stopUrl.toString(),
      'publish_url': publishUrl?.toString(),
      'pulls_url': pullsUrl?.toString(),
      'recent_folders': recentFolders,
      'runtime_constraints': runtimeConstraints?.toJson(),
      'pending_operation': pendingOperation,
      'pending_operation_disabled_reason': pendingOperationDisabledReason,
      'idle_timeout_notice': idleTimeoutNotice,
      'retention_period_minutes': retentionPeriodMinutes,
      'retention_expires_at': retentionExpiresAt?.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    displayName,
    environmentId,
    owner,
    billableOwner,
    repository,
    machine,
    devcontainerPath,
    prebuild,
    createdAt,
    updatedAt,
    lastUsedAt,
    state,
    url,
    gitStatus,
    location,
    idleTimeoutMinutes,
    webUrl,
    machinesUrl,
    startUrl,
    stopUrl,
    publishUrl,
    pullsUrl,
    listHash(recentFolders),
    runtimeConstraints,
    pendingOperation,
    pendingOperationDisabledReason,
    idleTimeoutNotice,
    retentionPeriodMinutes,
    retentionExpiresAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodespaceWithFullRepository &&
        this.id == other.id &&
        this.name == other.name &&
        this.displayName == other.displayName &&
        this.environmentId == other.environmentId &&
        this.owner == other.owner &&
        this.billableOwner == other.billableOwner &&
        this.repository == other.repository &&
        this.machine == other.machine &&
        this.devcontainerPath == other.devcontainerPath &&
        this.prebuild == other.prebuild &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.lastUsedAt == other.lastUsedAt &&
        this.state == other.state &&
        this.url == other.url &&
        this.gitStatus == other.gitStatus &&
        this.location == other.location &&
        this.idleTimeoutMinutes == other.idleTimeoutMinutes &&
        this.webUrl == other.webUrl &&
        this.machinesUrl == other.machinesUrl &&
        this.startUrl == other.startUrl &&
        this.stopUrl == other.stopUrl &&
        this.publishUrl == other.publishUrl &&
        this.pullsUrl == other.pullsUrl &&
        listsEqual(this.recentFolders, other.recentFolders) &&
        this.runtimeConstraints == other.runtimeConstraints &&
        this.pendingOperation == other.pendingOperation &&
        this.pendingOperationDisabledReason ==
            other.pendingOperationDisabledReason &&
        this.idleTimeoutNotice == other.idleTimeoutNotice &&
        this.retentionPeriodMinutes == other.retentionPeriodMinutes &&
        this.retentionExpiresAt == other.retentionExpiresAt;
  }
}
