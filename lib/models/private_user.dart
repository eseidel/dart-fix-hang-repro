import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/private_user_plan.dart';
import 'package:meta/meta.dart';

/// {@template private_user}
/// Private User
/// Private User
/// {@endtemplate}
@immutable
class PrivateUser {
  /// {@macro private_user}
  PrivateUser({
    required this.login,
    required this.id,
    this.userViewType,
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
    required this.name,
    required this.company,
    required this.blog,
    required this.location,
    required this.email,
    this.notificationEmail,
    required this.hireable,
    required this.bio,
    this.twitterUsername,
    required this.publicRepos,
    required this.publicGists,
    required this.followers,
    required this.following,
    required this.createdAt,
    required this.updatedAt,
    required this.privateGists,
    required this.totalPrivateRepos,
    required this.ownedPrivateRepos,
    required this.diskUsage,
    required this.collaborators,
    required this.twoFactorAuthentication,
    this.plan,
    this.businessPlus,
    this.ldapDn,
  });

  /// Converts a `Map<String, dynamic>` to a [PrivateUser].
  factory PrivateUser.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PrivateUser',
      json,
      () => PrivateUser(
        login: json['login'] as String,
        id: (json['id'] as int),
        userViewType: json['user_view_type'] as String?,
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
        name: checkedKey(json, 'name') as String?,
        company: checkedKey(json, 'company') as String?,
        blog: checkedKey(json, 'blog') as String?,
        location: checkedKey(json, 'location') as String?,
        email: checkedKey(json, 'email') as String?,
        notificationEmail: json['notification_email'] as String?,
        hireable: checkedKey(json, 'hireable') as bool?,
        bio: checkedKey(json, 'bio') as String?,
        twitterUsername: json['twitter_username'] as String?,
        publicRepos: (json['public_repos'] as int),
        publicGists: (json['public_gists'] as int),
        followers: (json['followers'] as int),
        following: (json['following'] as int),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        privateGists: (json['private_gists'] as int),
        totalPrivateRepos: (json['total_private_repos'] as int),
        ownedPrivateRepos: (json['owned_private_repos'] as int),
        diskUsage: (json['disk_usage'] as int),
        collaborators: (json['collaborators'] as int),
        twoFactorAuthentication: json['two_factor_authentication'] as bool,
        plan: PrivateUserPlan.maybeFromJson(
          json['plan'] as Map<String, dynamic>?,
        ),
        businessPlus: json['business_plus'] as bool?,
        ldapDn: json['ldap_dn'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PrivateUser? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return PrivateUser.fromJson(json);
  }

  /// example: `'octocat'`
  final String login;

  /// example: `1`
  final int id;
  final String? userViewType;

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

  /// example: `'monalisa octocat'`
  final String? name;

  /// example: `'GitHub'`
  final String? company;

  /// example: `'https://github.com/blog'`
  final String? blog;

  /// example: `'San Francisco'`
  final String? location;

  /// example: `'octocat@github.com'`
  final String? email;

  /// example: `'octocat@github.com'`
  final String? notificationEmail;
  final bool? hireable;

  /// example: `'There once was...'`
  final String? bio;

  /// example: `'monalisa'`
  final String? twitterUsername;

  /// example: `2`
  final int publicRepos;

  /// example: `1`
  final int publicGists;

  /// example: `20`
  final int followers;

  /// example: `0`
  final int following;

  /// example: `'2008-01-14T04:33:35Z'`
  final DateTime createdAt;

  /// example: `'2008-01-14T04:33:35Z'`
  final DateTime updatedAt;

  /// example: `81`
  final int privateGists;

  /// example: `100`
  final int totalPrivateRepos;

  /// example: `100`
  final int ownedPrivateRepos;

  /// example: `10000`
  final int diskUsage;

  /// example: `8`
  final int collaborators;

  /// example: `true`
  final bool twoFactorAuthentication;
  final PrivateUserPlan? plan;
  final bool? businessPlus;
  final String? ldapDn;

  /// Converts a [PrivateUser] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'user_view_type': userViewType,
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
      'name': name,
      'company': company,
      'blog': blog,
      'location': location,
      'email': email,
      'notification_email': notificationEmail,
      'hireable': hireable,
      'bio': bio,
      'twitter_username': twitterUsername,
      'public_repos': publicRepos,
      'public_gists': publicGists,
      'followers': followers,
      'following': following,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'private_gists': privateGists,
      'total_private_repos': totalPrivateRepos,
      'owned_private_repos': ownedPrivateRepos,
      'disk_usage': diskUsage,
      'collaborators': collaborators,
      'two_factor_authentication': twoFactorAuthentication,
      'plan': plan?.toJson(),
      'business_plus': businessPlus,
      'ldap_dn': ldapDn,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    login,
    id,
    userViewType,
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
    name,
    company,
    blog,
    location,
    email,
    notificationEmail,
    hireable,
    bio,
    twitterUsername,
    publicRepos,
    publicGists,
    followers,
    following,
    createdAt,
    updatedAt,
    privateGists,
    totalPrivateRepos,
    ownedPrivateRepos,
    diskUsage,
    collaborators,
    twoFactorAuthentication,
    plan,
    businessPlus,
    ldapDn,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PrivateUser &&
        this.login == other.login &&
        this.id == other.id &&
        this.userViewType == other.userViewType &&
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
        this.name == other.name &&
        this.company == other.company &&
        this.blog == other.blog &&
        this.location == other.location &&
        this.email == other.email &&
        this.notificationEmail == other.notificationEmail &&
        this.hireable == other.hireable &&
        this.bio == other.bio &&
        this.twitterUsername == other.twitterUsername &&
        this.publicRepos == other.publicRepos &&
        this.publicGists == other.publicGists &&
        this.followers == other.followers &&
        this.following == other.following &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.privateGists == other.privateGists &&
        this.totalPrivateRepos == other.totalPrivateRepos &&
        this.ownedPrivateRepos == other.ownedPrivateRepos &&
        this.diskUsage == other.diskUsage &&
        this.collaborators == other.collaborators &&
        this.twoFactorAuthentication == other.twoFactorAuthentication &&
        this.plan == other.plan &&
        this.businessPlus == other.businessPlus &&
        this.ldapDn == other.ldapDn;
  }
}
