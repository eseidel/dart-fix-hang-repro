import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template team_discussion}
/// Team Discussion
/// A team discussion is a persistent record of a free-form conversation within
/// a team.
/// {@endtemplate}
@immutable
class TeamDiscussion {
  /// {@macro team_discussion}
  TeamDiscussion({
    required this.author,
    required this.body,
    required this.bodyHtml,
    required this.bodyVersion,
    required this.commentsCount,
    required this.commentsUrl,
    required this.createdAt,
    required this.lastEditedAt,
    required this.htmlUrl,
    required this.nodeId,
    required this.number,
    required this.pinned,
    required this.private,
    required this.teamUrl,
    required this.title,
    required this.updatedAt,
    required this.url,
    this.reactions,
  });

  /// Converts a `Map<String, dynamic>` to a [TeamDiscussion].
  factory TeamDiscussion.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'TeamDiscussion',
      json,
      () => TeamDiscussion(
        author: SimpleUser.maybeFromJson(
          checkedKey(json, 'author') as Map<String, dynamic>?,
        ),
        body: json['body'] as String,
        bodyHtml: json['body_html'] as String,
        bodyVersion: json['body_version'] as String,
        commentsCount: (json['comments_count'] as int),
        commentsUrl: Uri.parse(json['comments_url'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        lastEditedAt: maybeParseDateTime(
          checkedKey(json, 'last_edited_at') as String?,
        ),
        htmlUrl: Uri.parse(json['html_url'] as String),
        nodeId: json['node_id'] as String,
        number: (json['number'] as int),
        pinned: json['pinned'] as bool,
        private: json['private'] as bool,
        teamUrl: Uri.parse(json['team_url'] as String),
        title: json['title'] as String,
        updatedAt: DateTime.parse(json['updated_at'] as String),
        url: Uri.parse(json['url'] as String),
        reactions: ReactionRollup.maybeFromJson(
          json['reactions'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamDiscussion? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return TeamDiscussion.fromJson(json);
  }

  /// Simple User
  /// A GitHub user.
  final SimpleUser? author;

  /// The main text of the discussion.
  /// example: `'Please suggest improvements to our workflow in comments.'`
  final String body;

  /// example: `'<p>Hi! This is an area for us to collaborate as a team</p>'`
  final String bodyHtml;

  /// The current version of the body content. If provided, this update
  /// operation will be rejected if the given version does not match the
  /// latest version on the server.
  /// example: `'0307116bbf7ced493b8d8a346c650b71'`
  final String bodyVersion;

  /// example: `0`
  final int commentsCount;

  /// example:
  /// `'https://api.github.com/organizations/1/team/2343027/discussions/1/comments'`
  final Uri commentsUrl;

  /// example: `'2018-01-25T18:56:31Z'`
  final DateTime createdAt;
  final DateTime? lastEditedAt;

  /// example:
  /// `'https://github.com/orgs/github/teams/justice-league/discussions/1'`
  final Uri htmlUrl;

  /// example: `'MDE0OlRlYW1EaXNjdXNzaW9uMQ=='`
  final String nodeId;

  /// The unique sequence number of a team discussion.
  /// example: `42`
  final int number;

  /// Whether or not this discussion should be pinned for easy retrieval.
  /// example: `true`
  final bool pinned;

  /// Whether or not this discussion should be restricted to team members and
  /// organization owners.
  /// example: `true`
  final bool private;

  /// example: `'https://api.github.com/organizations/1/team/2343027'`
  final Uri teamUrl;

  /// The title of the discussion.
  /// example: `'How can we improve our workflow?'`
  final String title;

  /// example: `'2018-01-25T18:56:31Z'`
  final DateTime updatedAt;

  /// example:
  /// `'https://api.github.com/organizations/1/team/2343027/discussions/1'`
  final Uri url;

  /// Reaction Rollup
  final ReactionRollup? reactions;

  /// Converts a [TeamDiscussion] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'author': author?.toJson(),
      'body': body,
      'body_html': bodyHtml,
      'body_version': bodyVersion,
      'comments_count': commentsCount,
      'comments_url': commentsUrl.toString(),
      'created_at': createdAt.toIso8601String(),
      'last_edited_at': lastEditedAt?.toIso8601String(),
      'html_url': htmlUrl.toString(),
      'node_id': nodeId,
      'number': number,
      'pinned': pinned,
      'private': private,
      'team_url': teamUrl.toString(),
      'title': title,
      'updated_at': updatedAt.toIso8601String(),
      'url': url.toString(),
      'reactions': reactions?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    author,
    body,
    bodyHtml,
    bodyVersion,
    commentsCount,
    commentsUrl,
    createdAt,
    lastEditedAt,
    htmlUrl,
    nodeId,
    number,
    pinned,
    private,
    teamUrl,
    title,
    updatedAt,
    url,
    reactions,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TeamDiscussion &&
        this.author == other.author &&
        this.body == other.body &&
        this.bodyHtml == other.bodyHtml &&
        this.bodyVersion == other.bodyVersion &&
        this.commentsCount == other.commentsCount &&
        this.commentsUrl == other.commentsUrl &&
        this.createdAt == other.createdAt &&
        this.lastEditedAt == other.lastEditedAt &&
        this.htmlUrl == other.htmlUrl &&
        this.nodeId == other.nodeId &&
        this.number == other.number &&
        this.pinned == other.pinned &&
        this.private == other.private &&
        this.teamUrl == other.teamUrl &&
        this.title == other.title &&
        this.updatedAt == other.updatedAt &&
        this.url == other.url &&
        this.reactions == other.reactions;
  }
}
