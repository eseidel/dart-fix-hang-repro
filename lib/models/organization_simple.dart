import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template organization_simple}
/// Organization Simple
/// A GitHub organization.
/// {@endtemplate}
@immutable
class OrganizationSimple {
  /// {@macro organization_simple}
  OrganizationSimple({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.url,
    required this.reposUrl,
    required this.eventsUrl,
    required this.hooksUrl,
    required this.issuesUrl,
    required this.membersUrl,
    required this.publicMembersUrl,
    required this.avatarUrl,
    required this.description,
  });

  /// Converts a `Map<String, dynamic>` to an [OrganizationSimple].
  factory OrganizationSimple.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrganizationSimple',
      json,
      () => OrganizationSimple(
        login: json['login'] as String,
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        url: Uri.parse(json['url'] as String),
        reposUrl: Uri.parse(json['repos_url'] as String),
        eventsUrl: Uri.parse(json['events_url'] as String),
        hooksUrl: json['hooks_url'] as String,
        issuesUrl: json['issues_url'] as String,
        membersUrl: json['members_url'] as String,
        publicMembersUrl: json['public_members_url'] as String,
        avatarUrl: json['avatar_url'] as String,
        description: checkedKey(json, 'description') as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationSimple? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrganizationSimple.fromJson(json);
  }

  /// example: `'github'`
  final String login;

  /// example: `1`
  final int id;

  /// example: `'MDEyOk9yZ2FuaXphdGlvbjE='`
  final String nodeId;

  /// example: `'https://api.github.com/orgs/github'`
  final Uri url;

  /// example: `'https://api.github.com/orgs/github/repos'`
  final Uri reposUrl;

  /// example: `'https://api.github.com/orgs/github/events'`
  final Uri eventsUrl;

  /// example: `'https://api.github.com/orgs/github/hooks'`
  final String hooksUrl;

  /// example: `'https://api.github.com/orgs/github/issues'`
  final String issuesUrl;

  /// example: `'https://api.github.com/orgs/github/members{/member}'`
  final String membersUrl;

  /// example: `'https://api.github.com/orgs/github/public_members{/member}'`
  final String publicMembersUrl;

  /// example: `'https://github.com/images/error/octocat_happy.gif'`
  final String avatarUrl;

  /// example: `'A great organization'`
  final String? description;

  /// Converts an [OrganizationSimple] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'node_id': nodeId,
      'url': url.toString(),
      'repos_url': reposUrl.toString(),
      'events_url': eventsUrl.toString(),
      'hooks_url': hooksUrl,
      'issues_url': issuesUrl,
      'members_url': membersUrl,
      'public_members_url': publicMembersUrl,
      'avatar_url': avatarUrl,
      'description': description,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    login,
    id,
    nodeId,
    url,
    reposUrl,
    eventsUrl,
    hooksUrl,
    issuesUrl,
    membersUrl,
    publicMembersUrl,
    avatarUrl,
    description,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrganizationSimple &&
        this.login == other.login &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.reposUrl == other.reposUrl &&
        this.eventsUrl == other.eventsUrl &&
        this.hooksUrl == other.hooksUrl &&
        this.issuesUrl == other.issuesUrl &&
        this.membersUrl == other.membersUrl &&
        this.publicMembersUrl == other.publicMembersUrl &&
        this.avatarUrl == other.avatarUrl &&
        this.description == other.description;
  }
}
