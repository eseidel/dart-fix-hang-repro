import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/team_role_assignment_assignment.dart';
import 'package:github_out/models/team_role_assignment_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// {@template team_role_assignment}
/// A Role Assignment for a Team
/// The Relationship a Team has with a role.
/// {@endtemplate}
@immutable
class TeamRoleAssignment {
  /// {@macro team_role_assignment}
  TeamRoleAssignment({
    this.assignment,
    required this.id,
    required this.nodeId,
    required this.name,
    required this.slug,
    required this.description,
    this.privacy,
    this.notificationSetting,
    required this.permission,
    this.permissions,
    required this.url,
    required this.htmlUrl,
    required this.membersUrl,
    required this.repositoriesUrl,
    required this.parent,
  });

  /// Converts a `Map<String, dynamic>` to a [TeamRoleAssignment].
  factory TeamRoleAssignment.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'TeamRoleAssignment',
      json,
      () => TeamRoleAssignment(
        assignment: TeamRoleAssignmentAssignment.maybeFromJson(
          json['assignment'] as String?,
        ),
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        slug: json['slug'] as String,
        description: checkedKey(json, 'description') as String?,
        privacy: json['privacy'] as String?,
        notificationSetting: json['notification_setting'] as String?,
        permission: json['permission'] as String,
        permissions: TeamRoleAssignmentPermissions.maybeFromJson(
          json['permissions'] as Map<String, dynamic>?,
        ),
        url: Uri.parse(json['url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        membersUrl: json['members_url'] as String,
        repositoriesUrl: Uri.parse(json['repositories_url'] as String),
        parent: TeamSimple.maybeFromJson(
          checkedKey(json, 'parent') as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamRoleAssignment? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return TeamRoleAssignment.fromJson(json);
  }

  /// Determines if the team has a direct, indirect, or mixed relationship to
  /// a role
  /// example: `'direct'`
  final TeamRoleAssignmentAssignment? assignment;
  final int id;
  final String nodeId;
  final String name;
  final String slug;
  final String? description;
  final String? privacy;
  final String? notificationSetting;
  final String permission;
  final TeamRoleAssignmentPermissions? permissions;
  final Uri url;

  /// example: `'https://github.com/orgs/rails/teams/core'`
  final Uri htmlUrl;
  final String membersUrl;
  final Uri repositoriesUrl;

  /// Team Simple
  /// Groups of organization members that gives permissions on specified
  /// repositories.
  final TeamSimple? parent;

  /// Converts a [TeamRoleAssignment] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'assignment': assignment?.toJson(),
      'id': id,
      'node_id': nodeId,
      'name': name,
      'slug': slug,
      'description': description,
      'privacy': privacy,
      'notification_setting': notificationSetting,
      'permission': permission,
      'permissions': permissions?.toJson(),
      'url': url.toString(),
      'html_url': htmlUrl.toString(),
      'members_url': membersUrl,
      'repositories_url': repositoriesUrl.toString(),
      'parent': parent?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    assignment,
    id,
    nodeId,
    name,
    slug,
    description,
    privacy,
    notificationSetting,
    permission,
    permissions,
    url,
    htmlUrl,
    membersUrl,
    repositoriesUrl,
    parent,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamRoleAssignment &&
        this.assignment == other.assignment &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.slug == other.slug &&
        this.description == other.description &&
        this.privacy == other.privacy &&
        this.notificationSetting == other.notificationSetting &&
        this.permission == other.permission &&
        this.permissions == other.permissions &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.membersUrl == other.membersUrl &&
        this.repositoriesUrl == other.repositoriesUrl &&
        this.parent == other.parent;
  }
}
