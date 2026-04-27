import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/collaborator_permissions.dart';
import 'package:meta/meta.dart';

/// {@template collaborator}
/// Collaborator
/// Collaborator
/// {@endtemplate}
@immutable
class Collaborator {
  /// {@macro collaborator}
  const Collaborator({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
    required this.roleName,
    this.email,
    this.name,
    this.permissions,
    this.userViewType,
  });

  /// Converts a `Map<String, dynamic>` to a [Collaborator].
  factory Collaborator.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Collaborator',
      json,
      () => Collaborator(
        login: json['login'] as String,
        id: json['id'] as int,
        email: json['email'] as String?,
        name: json['name'] as String?,
        nodeId: json['node_id'] as String,
        avatarUrl: Uri.parse(json['avatar_url'] as String),
        gravatarId: checkedKey(json, 'gravatar_id') as String?,
        url: Uri.parse(json['url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        followersUrl: Uri.parse(json['followers_url'] as String),
        followingUrl: json['following_url'] as String,
        gistsUrl: json['gists_url'] as String,
        starredUrl: json['starred_url'] as String,
        subscriptionsUrl: Uri.parse(json['subscriptions_url'] as String),
        organizationsUrl: Uri.parse(json['organizations_url'] as String),
        reposUrl: Uri.parse(json['repos_url'] as String),
        eventsUrl: json['events_url'] as String,
        receivedEventsUrl: Uri.parse(json['received_events_url'] as String),
        type: json['type'] as String,
        siteAdmin: json['site_admin'] as bool,
        permissions: CollaboratorPermissions.maybeFromJson(
          json['permissions'] as Map<String, dynamic>?,
        ),
        roleName: json['role_name'] as String,
        userViewType: json['user_view_type'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Collaborator? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Collaborator.fromJson(json);
  }

  /// example: `'octocat'`
  final String login;

  /// example: `1`
  final int id;
  final String? email;
  final String? name;

  /// example: `'MDQ6VXNlcjE='`
  final String nodeId;

  /// example: `'https://github.com/images/error/octocat_happy.gif'`
  final Uri avatarUrl;

  /// example: `'41d064eb2195891e12d0413f63227ea7'`
  final String? gravatarId;

  /// example: `'https://api.github.com/users/octocat'`
  final Uri url;

  /// example: `'https://github.com/octocat'`
  final Uri htmlUrl;

  /// example: `'https://api.github.com/users/octocat/followers'`
  final Uri followersUrl;

  /// example: `'https://api.github.com/users/octocat/following{/other_user}'`
  final String followingUrl;

  /// example: `'https://api.github.com/users/octocat/gists{/gist_id}'`
  final String gistsUrl;

  /// example: `'https://api.github.com/users/octocat/starred{/owner}{/repo}'`
  final String starredUrl;

  /// example: `'https://api.github.com/users/octocat/subscriptions'`
  final Uri subscriptionsUrl;

  /// example: `'https://api.github.com/users/octocat/orgs'`
  final Uri organizationsUrl;

  /// example: `'https://api.github.com/users/octocat/repos'`
  final Uri reposUrl;

  /// example: `'https://api.github.com/users/octocat/events{/privacy}'`
  final String eventsUrl;

  /// example: `'https://api.github.com/users/octocat/received_events'`
  final Uri receivedEventsUrl;

  /// example: `'User'`
  final String type;
  final bool siteAdmin;
  final CollaboratorPermissions? permissions;

  /// example: `'admin'`
  final String roleName;

  /// example: `'public'`
  final String? userViewType;

  /// Converts a [Collaborator] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'email': email,
      'name': name,
      'node_id': nodeId,
      'avatar_url': avatarUrl.toString(),
      'gravatar_id': gravatarId,
      'url': url.toString(),
      'html_url': htmlUrl.toString(),
      'followers_url': followersUrl.toString(),
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'starred_url': starredUrl,
      'subscriptions_url': subscriptionsUrl.toString(),
      'organizations_url': organizationsUrl.toString(),
      'repos_url': reposUrl.toString(),
      'events_url': eventsUrl,
      'received_events_url': receivedEventsUrl.toString(),
      'type': type,
      'site_admin': siteAdmin,
      'permissions': permissions?.toJson(),
      'role_name': roleName,
      'user_view_type': userViewType,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    login,
    id,
    email,
    name,
    nodeId,
    avatarUrl,
    gravatarId,
    url,
    htmlUrl,
    followersUrl,
    followingUrl,
    gistsUrl,
    starredUrl,
    subscriptionsUrl,
    organizationsUrl,
    reposUrl,
    eventsUrl,
    receivedEventsUrl,
    type,
    siteAdmin,
    permissions,
    roleName,
    userViewType,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Collaborator &&
        login == other.login &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        nodeId == other.nodeId &&
        avatarUrl == other.avatarUrl &&
        gravatarId == other.gravatarId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        followersUrl == other.followersUrl &&
        followingUrl == other.followingUrl &&
        gistsUrl == other.gistsUrl &&
        starredUrl == other.starredUrl &&
        subscriptionsUrl == other.subscriptionsUrl &&
        organizationsUrl == other.organizationsUrl &&
        reposUrl == other.reposUrl &&
        eventsUrl == other.eventsUrl &&
        receivedEventsUrl == other.receivedEventsUrl &&
        type == other.type &&
        siteAdmin == other.siteAdmin &&
        permissions == other.permissions &&
        roleName == other.roleName &&
        userViewType == other.userViewType;
  }
}
