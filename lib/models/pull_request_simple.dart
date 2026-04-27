import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/auto_merge.dart';
import 'package:github_out/models/auto_merge_merge_method.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/link.dart';
import 'package:github_out/models/milestone.dart';
import 'package:github_out/models/milestone_state.dart';
import 'package:github_out/models/pull_request_simple_base.dart';
import 'package:github_out/models/pull_request_simple_head.dart';
import 'package:github_out/models/pull_request_simple_labels_inner.dart';
import 'package:github_out/models/pull_request_simple_links.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// {@template pull_request_simple}
/// Pull Request Simple
/// Pull Request Simple
/// {@endtemplate}
@immutable
class PullRequestSimple {
  /// {@macro pull_request_simple}
  PullRequestSimple({
    required this.url,
    required this.id,
    required this.nodeId,
    required this.htmlUrl,
    required this.diffUrl,
    required this.patchUrl,
    required this.issueUrl,
    required this.commitsUrl,
    required this.reviewCommentsUrl,
    required this.reviewCommentUrl,
    required this.commentsUrl,
    required this.statusesUrl,
    required this.number,
    required this.state,
    required this.locked,
    required this.title,
    required this.user,
    required this.body,
    required this.labels,
    required this.milestone,
    this.activeLockReason,
    required this.createdAt,
    required this.updatedAt,
    required this.closedAt,
    required this.mergedAt,
    required this.mergeCommitSha,
    required this.assignee,
    this.assignees,
    this.requestedReviewers,
    this.requestedTeams,
    required this.head,
    required this.base,
    required this.links,
    required this.authorAssociation,
    required this.autoMerge,
    this.draft,
  });

  /// Converts a `Map<String, dynamic>` to a [PullRequestSimple].
  factory PullRequestSimple.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PullRequestSimple',
      json,
      () => PullRequestSimple(
        url: Uri.parse(json['url'] as String),
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        htmlUrl: Uri.parse(json['html_url'] as String),
        diffUrl: Uri.parse(json['diff_url'] as String),
        patchUrl: Uri.parse(json['patch_url'] as String),
        issueUrl: Uri.parse(json['issue_url'] as String),
        commitsUrl: Uri.parse(json['commits_url'] as String),
        reviewCommentsUrl: Uri.parse(json['review_comments_url'] as String),
        reviewCommentUrl: json['review_comment_url'] as String,
        commentsUrl: Uri.parse(json['comments_url'] as String),
        statusesUrl: Uri.parse(json['statuses_url'] as String),
        number: (json['number'] as int),
        state: json['state'] as String,
        locked: json['locked'] as bool,
        title: json['title'] as String,
        user: SimpleUser.maybeFromJson(
          checkedKey(json, 'user') as Map<String, dynamic>?,
        ),
        body: checkedKey(json, 'body') as String?,
        labels: (json['labels'] as List)
            .map<PullRequestSimpleLabelsInner>(
              (e) => PullRequestSimpleLabelsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        milestone: Milestone.maybeFromJson(
          checkedKey(json, 'milestone') as Map<String, dynamic>?,
        ),
        activeLockReason: json['active_lock_reason'] as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        closedAt: maybeParseDateTime(checkedKey(json, 'closed_at') as String?),
        mergedAt: maybeParseDateTime(checkedKey(json, 'merged_at') as String?),
        mergeCommitSha: checkedKey(json, 'merge_commit_sha') as String?,
        assignee: SimpleUser.maybeFromJson(
          checkedKey(json, 'assignee') as Map<String, dynamic>?,
        ),
        assignees: (json['assignees'] as List?)
            ?.map<SimpleUser>(
              (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        requestedReviewers: (json['requested_reviewers'] as List?)
            ?.map<SimpleUser>(
              (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        requestedTeams: (json['requested_teams'] as List?)
            ?.map<Team>((e) => Team.fromJson(e as Map<String, dynamic>))
            .toList(),
        head: PullRequestSimpleHead.fromJson(
          json['head'] as Map<String, dynamic>,
        ),
        base: PullRequestSimpleBase.fromJson(
          json['base'] as Map<String, dynamic>,
        ),
        links: PullRequestSimpleLinks.fromJson(
          json['_links'] as Map<String, dynamic>,
        ),
        authorAssociation: AuthorAssociation.fromJson(
          json['author_association'] as String,
        ),
        autoMerge: AutoMerge.maybeFromJson(
          checkedKey(json, 'auto_merge') as Map<String, dynamic>?,
        ),
        draft: json['draft'] as bool?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullRequestSimple? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return PullRequestSimple.fromJson(json);
  }

  /// example: `'https://api.github.com/repos/octocat/Hello-World/pulls/1347'`
  final Uri url;

  /// example: `1`
  final int id;

  /// example: `'MDExOlB1bGxSZXF1ZXN0MQ=='`
  final String nodeId;

  /// example: `'https://github.com/octocat/Hello-World/pull/1347'`
  final Uri htmlUrl;

  /// example: `'https://github.com/octocat/Hello-World/pull/1347.diff'`
  final Uri diffUrl;

  /// example: `'https://github.com/octocat/Hello-World/pull/1347.patch'`
  final Uri patchUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/issues/1347'`
  final Uri issueUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/pulls/1347/commits'`
  final Uri commitsUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/pulls/1347/comments'`
  final Uri reviewCommentsUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/pulls/comments{/number}'`
  final String reviewCommentUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/issues/1347/comments'`
  final Uri commentsUrl;

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/statuses/6dcb09b5b57875f334f61aebed695e2e4193db5e'`
  final Uri statusesUrl;

  /// example: `1347`
  final int number;

  /// example: `'open'`
  final String state;

  /// example: `true`
  final bool locked;

  /// example: `'new-feature'`
  final String title;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? user;

  /// example: `'Please pull these awesome changes'`
  final String? body;
  final List<PullRequestSimpleLabelsInner> labels;

  /// Milestone
  /// A collection of related issues and pull requests.
  final Milestone? milestone;

  /// example: `'too heated'`
  final String? activeLockReason;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime createdAt;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime updatedAt;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime? closedAt;

  /// example: `'2011-01-26T19:01:12Z'`
  final DateTime? mergedAt;

  /// example: `'e5bd3914e2e596debea16f433f57875b5b90bcd6'`
  final String? mergeCommitSha;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? assignee;
  final List<SimpleUser>? assignees;
  final List<SimpleUser>? requestedReviewers;
  final List<Team>? requestedTeams;
  final PullRequestSimpleHead head;
  final PullRequestSimpleBase base;
  final PullRequestSimpleLinks links;

  /// author_association
  /// How the author is associated with the repository.
  /// example: `'OWNER'`
  final AuthorAssociation authorAssociation;

  /// Auto merge
  /// The status of auto merging a pull request.
  final AutoMerge? autoMerge;

  /// Indicates whether or not the pull request is a draft.
  /// example: `false`
  final bool? draft;

  /// Converts a [PullRequestSimple] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'id': id,
      'node_id': nodeId,
      'html_url': htmlUrl.toString(),
      'diff_url': diffUrl.toString(),
      'patch_url': patchUrl.toString(),
      'issue_url': issueUrl.toString(),
      'commits_url': commitsUrl.toString(),
      'review_comments_url': reviewCommentsUrl.toString(),
      'review_comment_url': reviewCommentUrl,
      'comments_url': commentsUrl.toString(),
      'statuses_url': statusesUrl.toString(),
      'number': number,
      'state': state,
      'locked': locked,
      'title': title,
      'user': user?.toJson(),
      'body': body,
      'labels': labels.map((e) => e.toJson()).toList(),
      'milestone': milestone?.toJson(),
      'active_lock_reason': activeLockReason,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'closed_at': closedAt?.toIso8601String(),
      'merged_at': mergedAt?.toIso8601String(),
      'merge_commit_sha': mergeCommitSha,
      'assignee': assignee?.toJson(),
      'assignees': assignees?.map((e) => e.toJson()).toList(),
      'requested_reviewers': requestedReviewers
          ?.map((e) => e.toJson())
          .toList(),
      'requested_teams': requestedTeams?.map((e) => e.toJson()).toList(),
      'head': head.toJson(),
      'base': base.toJson(),
      '_links': links.toJson(),
      'author_association': authorAssociation.toJson(),
      'auto_merge': autoMerge?.toJson(),
      'draft': draft,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    id,
    nodeId,
    htmlUrl,
    diffUrl,
    patchUrl,
    issueUrl,
    commitsUrl,
    reviewCommentsUrl,
    reviewCommentUrl,
    commentsUrl,
    statusesUrl,
    number,
    state,
    locked,
    title,
    user,
    body,
    listHash(labels),
    milestone,
    activeLockReason,
    createdAt,
    updatedAt,
    closedAt,
    mergedAt,
    mergeCommitSha,
    assignee,
    listHash(assignees),
    listHash(requestedReviewers),
    listHash(requestedTeams),
    head,
    base,
    links,
    authorAssociation,
    autoMerge,
    draft,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PullRequestSimple &&
        this.url == other.url &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.htmlUrl == other.htmlUrl &&
        this.diffUrl == other.diffUrl &&
        this.patchUrl == other.patchUrl &&
        this.issueUrl == other.issueUrl &&
        this.commitsUrl == other.commitsUrl &&
        this.reviewCommentsUrl == other.reviewCommentsUrl &&
        this.reviewCommentUrl == other.reviewCommentUrl &&
        this.commentsUrl == other.commentsUrl &&
        this.statusesUrl == other.statusesUrl &&
        this.number == other.number &&
        this.state == other.state &&
        this.locked == other.locked &&
        this.title == other.title &&
        this.user == other.user &&
        this.body == other.body &&
        listsEqual(this.labels, other.labels) &&
        this.milestone == other.milestone &&
        this.activeLockReason == other.activeLockReason &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.closedAt == other.closedAt &&
        this.mergedAt == other.mergedAt &&
        this.mergeCommitSha == other.mergeCommitSha &&
        this.assignee == other.assignee &&
        listsEqual(this.assignees, other.assignees) &&
        listsEqual(this.requestedReviewers, other.requestedReviewers) &&
        listsEqual(this.requestedTeams, other.requestedTeams) &&
        this.head == other.head &&
        this.base == other.base &&
        this.links == other.links &&
        this.authorAssociation == other.authorAssociation &&
        this.autoMerge == other.autoMerge &&
        this.draft == other.draft;
  }
}
