import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template contributor}
/// Contributor
/// Contributor
/// {@endtemplate}
@immutable
class Contributor {
  /// {@macro contributor}
  Contributor({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    required this.type,
    this.siteAdmin,
    required this.contributions,
    this.email,
    this.name,
    this.userViewType,
  });

  /// Converts a `Map<String, dynamic>` to a [Contributor].
  factory Contributor.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Contributor',
      json,
      () => Contributor(
        login: json['login'] as String?,
        id: (json['id'] as int?),
        nodeId: json['node_id'] as String?,
        avatarUrl: maybeParseUri(json['avatar_url'] as String?),
        gravatarId: json['gravatar_id'] as String?,
        url: maybeParseUri(json['url'] as String?),
        htmlUrl: maybeParseUri(json['html_url'] as String?),
        followersUrl: maybeParseUri(json['followers_url'] as String?),
        followingUrl: json['following_url'] as String?,
        gistsUrl: json['gists_url'] as String?,
        starredUrl: json['starred_url'] as String?,
        subscriptionsUrl: maybeParseUri(json['subscriptions_url'] as String?),
        organizationsUrl: maybeParseUri(json['organizations_url'] as String?),
        reposUrl: maybeParseUri(json['repos_url'] as String?),
        eventsUrl: json['events_url'] as String?,
        receivedEventsUrl: maybeParseUri(
          json['received_events_url'] as String?,
        ),
        type: json['type'] as String,
        siteAdmin: json['site_admin'] as bool?,
        contributions: (json['contributions'] as int),
        email: json['email'] as String?,
        name: json['name'] as String?,
        userViewType: json['user_view_type'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Contributor? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Contributor.fromJson(json);
  }

  final String? login;
  final int? id;
  final String? nodeId;
  final Uri? avatarUrl;
  final String? gravatarId;
  final Uri? url;
  final Uri? htmlUrl;
  final Uri? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final Uri? subscriptionsUrl;
  final Uri? organizationsUrl;
  final Uri? reposUrl;
  final String? eventsUrl;
  final Uri? receivedEventsUrl;
  final String type;
  final bool? siteAdmin;
  final int contributions;
  final String? email;
  final String? name;
  final String? userViewType;

  /// Converts a [Contributor] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'node_id': nodeId,
      'avatar_url': avatarUrl?.toString(),
      'gravatar_id': gravatarId,
      'url': url?.toString(),
      'html_url': htmlUrl?.toString(),
      'followers_url': followersUrl?.toString(),
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'starred_url': starredUrl,
      'subscriptions_url': subscriptionsUrl?.toString(),
      'organizations_url': organizationsUrl?.toString(),
      'repos_url': reposUrl?.toString(),
      'events_url': eventsUrl,
      'received_events_url': receivedEventsUrl?.toString(),
      'type': type,
      'site_admin': siteAdmin,
      'contributions': contributions,
      'email': email,
      'name': name,
      'user_view_type': userViewType,
    };
  }

  @override
  int get hashCode => Object.hashAll([
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
    contributions,
    email,
    name,
    userViewType,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Contributor &&
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
        this.contributions == other.contributions &&
        this.email == other.email &&
        this.name == other.name &&
        this.userViewType == other.userViewType;
  }
}
