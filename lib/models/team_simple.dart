import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template team_simple}
/// Team Simple
/// Groups of organization members that gives permissions on specified
/// repositories.
/// {@endtemplate}
@immutable
class TeamSimple {
  /// {@macro team_simple}
  TeamSimple({
    required this.id,
    required this.nodeId,
    required this.url,
    required this.membersUrl,
    required this.name,
    required this.description,
    required this.permission,
    this.privacy,
    this.notificationSetting,
    required this.htmlUrl,
    required this.repositoriesUrl,
    required this.slug,
    this.ldapDn,
  });

  /// Converts a `Map<String, dynamic>` to a [TeamSimple].
  factory TeamSimple.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'TeamSimple',
      json,
      () => TeamSimple(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        url: Uri.parse(json['url'] as String),
        membersUrl: json['members_url'] as String,
        name: json['name'] as String,
        description: checkedKey(json, 'description') as String?,
        permission: json['permission'] as String,
        privacy: json['privacy'] as String?,
        notificationSetting: json['notification_setting'] as String?,
        htmlUrl: Uri.parse(json['html_url'] as String),
        repositoriesUrl: Uri.parse(json['repositories_url'] as String),
        slug: json['slug'] as String,
        ldapDn: json['ldap_dn'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamSimple? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return TeamSimple.fromJson(json);
  }

  /// Unique identifier of the team
  /// example: `1`
  final int id;

  /// example: `'MDQ6VGVhbTE='`
  final String nodeId;

  /// URL for the team
  /// example: `'https://api.github.com/organizations/1/team/1'`
  final Uri url;

  /// example:
  /// `'https://api.github.com/organizations/1/team/1/members{/member}'`
  final String membersUrl;

  /// Name of the team
  /// example: `'Justice League'`
  final String name;

  /// Description of the team
  /// example: `'A great team.'`
  final String? description;

  /// Permission that the team will have for its repositories
  /// example: `'admin'`
  final String permission;

  /// The level of privacy this team should have
  /// example: `'closed'`
  final String? privacy;

  /// The notification setting the team has set
  /// example: `'notifications_enabled'`
  final String? notificationSetting;

  /// example: `'https://github.com/orgs/rails/teams/core'`
  final Uri htmlUrl;

  /// example: `'https://api.github.com/organizations/1/team/1/repos'`
  final Uri repositoriesUrl;

  /// example: `'justice-league'`
  final String slug;

  /// Distinguished Name (DN) that team maps to within LDAP environment
  /// example: `'uid=example,ou=users,dc=github,dc=com'`
  final String? ldapDn;

  /// Converts a [TeamSimple] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url.toString(),
      'members_url': membersUrl,
      'name': name,
      'description': description,
      'permission': permission,
      'privacy': privacy,
      'notification_setting': notificationSetting,
      'html_url': htmlUrl.toString(),
      'repositories_url': repositoriesUrl.toString(),
      'slug': slug,
      'ldap_dn': ldapDn,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    url,
    membersUrl,
    name,
    description,
    permission,
    privacy,
    notificationSetting,
    htmlUrl,
    repositoriesUrl,
    slug,
    ldapDn,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamSimple &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.membersUrl == other.membersUrl &&
        this.name == other.name &&
        this.description == other.description &&
        this.permission == other.permission &&
        this.privacy == other.privacy &&
        this.notificationSetting == other.notificationSetting &&
        this.htmlUrl == other.htmlUrl &&
        this.repositoriesUrl == other.repositoriesUrl &&
        this.slug == other.slug &&
        this.ldapDn == other.ldapDn;
  }
}
