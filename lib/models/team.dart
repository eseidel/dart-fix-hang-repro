import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// {@template team}
/// Team
/// Groups of organization members that gives permissions on specified
/// repositories.
/// {@endtemplate}
@immutable
class Team {
  /// {@macro team}
  Team({
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

  /// Converts a `Map<String, dynamic>` to a [Team].
  factory Team.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Team',
      json,
      () => Team(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        slug: json['slug'] as String,
        description: checkedKey(json, 'description') as String?,
        privacy: json['privacy'] as String?,
        notificationSetting: json['notification_setting'] as String?,
        permission: json['permission'] as String,
        permissions: TeamPermissions.maybeFromJson(
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
  static Team? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Team.fromJson(json);
  }

  final int id;
  final String nodeId;
  final String name;
  final String slug;
  final String? description;
  final String? privacy;
  final String? notificationSetting;
  final String permission;
  final TeamPermissions? permissions;
  final Uri url;

  /// example: `'https://github.com/orgs/rails/teams/core'`
  final Uri htmlUrl;
  final String membersUrl;
  final Uri repositoriesUrl;

  /// Team Simple
  /// Groups of organization members that gives permissions on specified
  /// repositories.
  final TeamSimple? parent;

  /// Converts a [Team] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
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
    return other is Team &&
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
