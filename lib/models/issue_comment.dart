import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template issue_comment}
/// Issue Comment
/// Comments provide a way for people to collaborate on an issue.
/// {@endtemplate}
@immutable
class IssueComment {
  /// {@macro issue_comment}
  IssueComment({
    required this.id,
    required this.nodeId,
    required this.url,
    this.body,
    this.bodyText,
    this.bodyHtml,
    required this.htmlUrl,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
    required this.issueUrl,
    required this.authorAssociation,
    this.performedViaGithubApp,
    this.reactions,
  });

  /// Converts a `Map<String, dynamic>` to an [IssueComment].
  factory IssueComment.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssueComment',
      json,
      () => IssueComment(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        url: Uri.parse(json['url'] as String),
        body: json['body'] as String?,
        bodyText: json['body_text'] as String?,
        bodyHtml: json['body_html'] as String?,
        htmlUrl: Uri.parse(json['html_url'] as String),
        user: SimpleUser.maybeFromJson(
          checkedKey(json, 'user') as Map<String, dynamic>?,
        ),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        issueUrl: Uri.parse(json['issue_url'] as String),
        authorAssociation: AuthorAssociation.fromJson(
          json['author_association'] as String,
        ),
        performedViaGithubApp: Integration.maybeFromJson(
          json['performed_via_github_app'] as Map<String, dynamic>?,
        ),
        reactions: ReactionRollup.maybeFromJson(
          json['reactions'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssueComment? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IssueComment.fromJson(json);
  }

  /// Unique identifier of the issue comment
  /// example: `42`
  final int id;
  final String nodeId;

  /// URL for the issue comment
  /// example: `'https://api.github.com/repositories/42/issues/comments/1'`
  final Uri url;

  /// Contents of the issue comment
  /// example: `'What version of Safari were you using when you observed this bug?'`
  final String? body;
  final String? bodyText;
  final String? bodyHtml;
  final Uri htmlUrl;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? user;

  /// example: `'2011-04-14T16:00:49Z'`
  final DateTime createdAt;

  /// example: `'2011-04-14T16:00:49Z'`
  final DateTime updatedAt;
  final Uri issueUrl;

  /// author_association
  /// How the author is associated with the repository.
  /// example: `'OWNER'`
  final AuthorAssociation authorAssociation;

  /// GitHub app
  /// GitHub apps are a new way to extend GitHub. They can be installed
  /// directly on organizations and user accounts and granted access to
  /// specific repositories. They come with granular permissions and built-in
  /// webhooks. GitHub apps are first class actors within GitHub.
  final Integration? performedViaGithubApp;

  /// Reaction Rollup
  final ReactionRollup? reactions;

  /// Converts an [IssueComment] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url.toString(),
      'body': body,
      'body_text': bodyText,
      'body_html': bodyHtml,
      'html_url': htmlUrl.toString(),
      'user': user?.toJson(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'issue_url': issueUrl.toString(),
      'author_association': authorAssociation.toJson(),
      'performed_via_github_app': performedViaGithubApp?.toJson(),
      'reactions': reactions?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    url,
    body,
    bodyText,
    bodyHtml,
    htmlUrl,
    user,
    createdAt,
    updatedAt,
    issueUrl,
    authorAssociation,
    performedViaGithubApp,
    reactions,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssueComment &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.body == other.body &&
        this.bodyText == other.bodyText &&
        this.bodyHtml == other.bodyHtml &&
        this.htmlUrl == other.htmlUrl &&
        this.user == other.user &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.issueUrl == other.issueUrl &&
        this.authorAssociation == other.authorAssociation &&
        this.performedViaGithubApp == other.performedViaGithubApp &&
        this.reactions == other.reactions;
  }
}
