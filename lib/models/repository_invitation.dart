import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_of_conduct.dart';
import 'package:github_out/models/minimal_repository.dart';
import 'package:github_out/models/minimal_repository_license.dart';
import 'package:github_out/models/minimal_repository_permissions.dart';
import 'package:github_out/models/repository_invitation_permissions.dart';
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

/// {@template repository_invitation}
/// Repository Invitation
/// Repository invitations let you manage who you collaborate with.
/// {@endtemplate}
@immutable
class RepositoryInvitation {
  /// {@macro repository_invitation}
  RepositoryInvitation({
    required this.id,
    required this.repository,
    required this.invitee,
    required this.inviter,
    required this.permissions,
    required this.createdAt,
    this.expired,
    required this.url,
    required this.htmlUrl,
    required this.nodeId,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryInvitation].
  factory RepositoryInvitation.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryInvitation',
      json,
      () => RepositoryInvitation(
        id: (json['id'] as int),
        repository: MinimalRepository.fromJson(
          json['repository'] as Map<String, dynamic>,
        ),
        invitee: SimpleUser.maybeFromJson(
          checkedKey(json, 'invitee') as Map<String, dynamic>?,
        ),
        inviter: SimpleUser.maybeFromJson(
          checkedKey(json, 'inviter') as Map<String, dynamic>?,
        ),
        permissions: RepositoryInvitationPermissions.fromJson(
          json['permissions'] as String,
        ),
        createdAt: DateTime.parse(json['created_at'] as String),
        expired: json['expired'] as bool?,
        url: json['url'] as String,
        htmlUrl: json['html_url'] as String,
        nodeId: json['node_id'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryInvitation? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryInvitation.fromJson(json);
  }

  /// Unique identifier of the repository invitation.
  /// example: `42`
  final int id;

  /// Minimal Repository
  /// Minimal Repository
  final MinimalRepository repository;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? invitee;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? inviter;

  /// The permission associated with the invitation.
  /// example: `'read'`
  final RepositoryInvitationPermissions permissions;

  /// example: `'2016-06-13T14:52:50-05:00'`
  final DateTime createdAt;

  /// Whether or not the invitation has expired
  final bool? expired;

  /// URL for the repository invitation
  /// example: `'https://api.github.com/user/repository-invitations/1'`
  final String url;

  /// example: `'https://github.com/octocat/Hello-World/invitations'`
  final String htmlUrl;
  final String nodeId;

  /// Converts a [RepositoryInvitation] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'repository': repository.toJson(),
      'invitee': invitee?.toJson(),
      'inviter': inviter?.toJson(),
      'permissions': permissions.toJson(),
      'created_at': createdAt.toIso8601String(),
      'expired': expired,
      'url': url,
      'html_url': htmlUrl,
      'node_id': nodeId,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    repository,
    invitee,
    inviter,
    permissions,
    createdAt,
    expired,
    url,
    htmlUrl,
    nodeId,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryInvitation &&
        this.id == other.id &&
        this.repository == other.repository &&
        this.invitee == other.invitee &&
        this.inviter == other.inviter &&
        this.permissions == other.permissions &&
        this.createdAt == other.createdAt &&
        this.expired == other.expired &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.nodeId == other.nodeId;
  }
}
