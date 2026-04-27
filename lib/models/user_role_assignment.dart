import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:github_out/models/user_role_assignment_assignment.dart';
import 'package:meta/meta.dart';

/// {@template user_role_assignment}
/// A Role Assignment for a User
/// The Relationship a User has with a role.
/// {@endtemplate}
@immutable
class UserRoleAssignment {
  /// {@macro user_role_assignment}
  UserRoleAssignment({
    this.assignment,
    this.inheritedFrom,
    this.name,
    this.email,
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
    this.starredAt,
    this.userViewType,
  });

  /// Converts a `Map<String, dynamic>` to a [UserRoleAssignment].
  factory UserRoleAssignment.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'UserRoleAssignment',
      json,
      () => UserRoleAssignment(
        assignment: UserRoleAssignmentAssignment.maybeFromJson(
          json['assignment'] as String?,
        ),
        inheritedFrom: (json['inherited_from'] as List?)
            ?.map<TeamSimple>(
              (e) => TeamSimple.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        name: json['name'] as String?,
        email: json['email'] as String?,
        login: json['login'] as String,
        id: (json['id'] as int),
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
        starredAt: json['starred_at'] as String?,
        userViewType: json['user_view_type'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UserRoleAssignment? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return UserRoleAssignment.fromJson(json);
  }

  /// Determines if the user has a direct, indirect, or mixed relationship to
  /// a role
  /// example: `'direct'`
  final UserRoleAssignmentAssignment? assignment;

  /// Team the user has gotten the role through
  final List<TeamSimple>? inheritedFrom;
  final String? name;
  final String? email;

  /// example: `'octocat'`
  final String login;

  /// example: `1`
  final int id;

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

  /// example: `'"2020-07-09T00:17:55Z"'`
  final String? starredAt;

  /// example: `'public'`
  final String? userViewType;

  /// Converts a [UserRoleAssignment] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'assignment': assignment?.toJson(),
      'inherited_from': inheritedFrom?.map((e) => e.toJson()).toList(),
      'name': name,
      'email': email,
      'login': login,
      'id': id,
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
      'starred_at': starredAt,
      'user_view_type': userViewType,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    assignment,
    listHash(inheritedFrom),
    name,
    email,
    login,
    id,
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
    starredAt,
    userViewType,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserRoleAssignment &&
        this.assignment == other.assignment &&
        listsEqual(this.inheritedFrom, other.inheritedFrom) &&
        this.name == other.name &&
        this.email == other.email &&
        this.login == other.login &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.avatarUrl == other.avatarUrl &&
        this.gravatarId == other.gravatarId &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.followersUrl == other.followersUrl &&
        this.followingUrl == other.followingUrl &&
        this.gistsUrl == other.gistsUrl &&
        this.starredUrl == other.starredUrl &&
        this.subscriptionsUrl == other.subscriptionsUrl &&
        this.organizationsUrl == other.organizationsUrl &&
        this.reposUrl == other.reposUrl &&
        this.eventsUrl == other.eventsUrl &&
        this.receivedEventsUrl == other.receivedEventsUrl &&
        this.type == other.type &&
        this.siteAdmin == other.siteAdmin &&
        this.starredAt == other.starredAt &&
        this.userViewType == other.userViewType;
  }
}
