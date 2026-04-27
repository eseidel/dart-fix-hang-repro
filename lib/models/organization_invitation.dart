import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template organization_invitation}
/// Organization Invitation
/// Organization Invitation
/// {@endtemplate}
@immutable
class OrganizationInvitation {
  /// {@macro organization_invitation}
  OrganizationInvitation({
    required this.id,
    required this.login,
    required this.email,
    required this.role,
    required this.createdAt,
    this.failedAt,
    this.failedReason,
    required this.inviter,
    required this.teamCount,
    required this.nodeId,
    required this.invitationTeamsUrl,
    this.invitationSource,
  });

  /// Converts a `Map<String, dynamic>` to an [OrganizationInvitation].
  factory OrganizationInvitation.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrganizationInvitation',
      json,
      () => OrganizationInvitation(
        id: (json['id'] as int),
        login: checkedKey(json, 'login') as String?,
        email: checkedKey(json, 'email') as String?,
        role: json['role'] as String,
        createdAt: json['created_at'] as String,
        failedAt: json['failed_at'] as String?,
        failedReason: json['failed_reason'] as String?,
        inviter: SimpleUser.fromJson(json['inviter'] as Map<String, dynamic>),
        teamCount: (json['team_count'] as int),
        nodeId: json['node_id'] as String,
        invitationTeamsUrl: json['invitation_teams_url'] as String,
        invitationSource: json['invitation_source'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationInvitation? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrganizationInvitation.fromJson(json);
  }

  final int id;
  final String? login;
  final String? email;
  final String role;
  final String createdAt;
  final String? failedAt;
  final String? failedReason;

  /// Simple User
  /// A GitHub user.
  final SimpleUser inviter;
  final int teamCount;

  /// example: `'"MDIyOk9yZ2FuaXphdGlvbkludml0YXRpb24x"'`
  final String nodeId;

  /// example:
  /// `'"https://api.github.com/organizations/16/invitations/1/teams"'`
  final String invitationTeamsUrl;

  /// example: `'"member"'`
  final String? invitationSource;

  /// Converts an [OrganizationInvitation] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'email': email,
      'role': role,
      'created_at': createdAt,
      'failed_at': failedAt,
      'failed_reason': failedReason,
      'inviter': inviter.toJson(),
      'team_count': teamCount,
      'node_id': nodeId,
      'invitation_teams_url': invitationTeamsUrl,
      'invitation_source': invitationSource,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    login,
    email,
    role,
    createdAt,
    failedAt,
    failedReason,
    inviter,
    teamCount,
    nodeId,
    invitationTeamsUrl,
    invitationSource,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrganizationInvitation &&
        this.id == other.id &&
        this.login == other.login &&
        this.email == other.email &&
        this.role == other.role &&
        this.createdAt == other.createdAt &&
        this.failedAt == other.failedAt &&
        this.failedReason == other.failedReason &&
        this.inviter == other.inviter &&
        this.teamCount == other.teamCount &&
        this.nodeId == other.nodeId &&
        this.invitationTeamsUrl == other.invitationTeamsUrl &&
        this.invitationSource == other.invitationSource;
  }
}
