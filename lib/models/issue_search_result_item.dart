import 'package:github_out/messages/issue_search_result_item_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/issue_search_result_item_labels_inner.dart';
import 'package:github_out/models/issue_search_result_item_sub_issues_summary.dart';
import 'package:github_out/models/issue_type.dart';
import 'package:github_out/models/issue_type_color.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/milestone.dart';
import 'package:github_out/models/milestone_state.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/search_result_text_matches_inner.dart';
import 'package:github_out/models/search_result_text_matches_inner_matches_inner.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template issue_search_result_item}
/// Issue Search Result Item
/// Issue Search Result Item
/// {@endtemplate}
@immutable
class IssueSearchResultItem {
  /// {@macro issue_search_result_item}
  IssueSearchResultItem({
    required this.url,
    required this.repositoryUrl,
    required this.labelsUrl,
    required this.commentsUrl,
    required this.eventsUrl,
    required this.htmlUrl,
    required this.id,
    required this.nodeId,
    required this.number,
    required this.title,
    required this.locked,
    this.activeLockReason,
    this.assignees,
    required this.user,
    required this.labels,
    this.subIssuesSummary,
    required this.state,
    this.stateReason,
    required this.assignee,
    required this.milestone,
    required this.comments,
    required this.createdAt,
    required this.updatedAt,
    required this.closedAt,
    this.textMatches,
    this.pullRequest,
    this.body,
    required this.score,
    required this.authorAssociation,
    this.draft,
    this.repository,
    this.bodyHtml,
    this.bodyText,
    this.timelineUrl,
    this.type,
    this.performedViaGithubApp,
    this.reactions,
  });

  /// Converts a `Map<String, dynamic>` to an [IssueSearchResultItem].
  factory IssueSearchResultItem.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssueSearchResultItem',
      json,
      () => IssueSearchResultItem(
        url: Uri.parse(json['url'] as String),
        repositoryUrl: Uri.parse(json['repository_url'] as String),
        labelsUrl: json['labels_url'] as String,
        commentsUrl: Uri.parse(json['comments_url'] as String),
        eventsUrl: Uri.parse(json['events_url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        number: (json['number'] as int),
        title: json['title'] as String,
        locked: json['locked'] as bool,
        activeLockReason: json['active_lock_reason'] as String?,
        assignees: (json['assignees'] as List?)
            ?.map<SimpleUser>(
              (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        user: SimpleUser.maybeFromJson(
          checkedKey(json, 'user') as Map<String, dynamic>?,
        ),
        labels: (json['labels'] as List)
            .map<IssueSearchResultItemLabelsInner>(
              (e) => IssueSearchResultItemLabelsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        subIssuesSummary: IssueSearchResultItemSubIssuesSummary.maybeFromJson(
          json['sub_issues_summary'] as Map<String, dynamic>?,
        ),
        state: json['state'] as String,
        stateReason: json['state_reason'] as String?,
        assignee: SimpleUser.maybeFromJson(
          checkedKey(json, 'assignee') as Map<String, dynamic>?,
        ),
        milestone: Milestone.maybeFromJson(
          checkedKey(json, 'milestone') as Map<String, dynamic>?,
        ),
        comments: (json['comments'] as int),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        closedAt: maybeParseDateTime(checkedKey(json, 'closed_at') as String?),
        textMatches: (json['text_matches'] as List?)
            ?.map<SearchResultTextMatchesInner>(
              (e) => SearchResultTextMatchesInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        pullRequest: IssueSearchResultItemPullRequest.maybeFromJson(
          json['pull_request'] as Map<String, dynamic>?,
        ),
        body: json['body'] as String?,
        score: (json['score'] as num).toDouble(),
        authorAssociation: AuthorAssociation.fromJson(
          json['author_association'] as String,
        ),
        draft: json['draft'] as bool?,
        repository: Repository.maybeFromJson(
          json['repository'] as Map<String, dynamic>?,
        ),
        bodyHtml: json['body_html'] as String?,
        bodyText: json['body_text'] as String?,
        timelineUrl: maybeParseUri(json['timeline_url'] as String?),
        type: IssueType.maybeFromJson(json['type'] as Map<String, dynamic>?),
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
  static IssueSearchResultItem? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IssueSearchResultItem.fromJson(json);
  }

  final Uri url;
  final Uri repositoryUrl;
  final String labelsUrl;
  final Uri commentsUrl;
  final Uri eventsUrl;
  final Uri htmlUrl;
  final int id;
  final String nodeId;
  final int number;
  final String title;
  final bool locked;
  final String? activeLockReason;
  final List<SimpleUser>? assignees;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? user;
  final List<IssueSearchResultItemLabelsInner> labels;

  /// Sub-issues Summary
  final IssueSearchResultItemSubIssuesSummary? subIssuesSummary;
  final String state;
  final String? stateReason;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? assignee;

  /// Milestone
  /// A collection of related issues and pull requests.
  final Milestone? milestone;
  final int comments;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? closedAt;

  /// Search Result Text Matches
  final List<SearchResultTextMatchesInner>? textMatches;
  final IssueSearchResultItemPullRequest? pullRequest;
  final String? body;
  final double score;

  /// author_association
  /// How the author is associated with the repository.
  /// example: `'OWNER'`
  final AuthorAssociation authorAssociation;
  final bool? draft;

  /// Repository
  /// A repository on GitHub.
  final Repository? repository;
  final String? bodyHtml;
  final String? bodyText;
  final Uri? timelineUrl;

  /// Issue Type
  /// The type of issue.
  final IssueType? type;

  /// GitHub app
  /// GitHub apps are a new way to extend GitHub. They can be installed
  /// directly on organizations and user accounts and granted access to
  /// specific repositories. They come with granular permissions and built-in
  /// webhooks. GitHub apps are first class actors within GitHub.
  final Integration? performedViaGithubApp;

  /// Reaction Rollup
  final ReactionRollup? reactions;

  /// Converts an [IssueSearchResultItem] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'repository_url': repositoryUrl.toString(),
      'labels_url': labelsUrl,
      'comments_url': commentsUrl.toString(),
      'events_url': eventsUrl.toString(),
      'html_url': htmlUrl.toString(),
      'id': id,
      'node_id': nodeId,
      'number': number,
      'title': title,
      'locked': locked,
      'active_lock_reason': activeLockReason,
      'assignees': assignees?.map((e) => e.toJson()).toList(),
      'user': user?.toJson(),
      'labels': labels.map((e) => e.toJson()).toList(),
      'sub_issues_summary': subIssuesSummary?.toJson(),
      'state': state,
      'state_reason': stateReason,
      'assignee': assignee?.toJson(),
      'milestone': milestone?.toJson(),
      'comments': comments,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'closed_at': closedAt?.toIso8601String(),
      'text_matches': textMatches?.map((e) => e.toJson()).toList(),
      'pull_request': pullRequest?.toJson(),
      'body': body,
      'score': score,
      'author_association': authorAssociation.toJson(),
      'draft': draft,
      'repository': repository?.toJson(),
      'body_html': bodyHtml,
      'body_text': bodyText,
      'timeline_url': timelineUrl?.toString(),
      'type': type?.toJson(),
      'performed_via_github_app': performedViaGithubApp?.toJson(),
      'reactions': reactions?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    repositoryUrl,
    labelsUrl,
    commentsUrl,
    eventsUrl,
    htmlUrl,
    id,
    nodeId,
    number,
    title,
    locked,
    activeLockReason,
    listHash(assignees),
    user,
    listHash(labels),
    subIssuesSummary,
    state,
    stateReason,
    assignee,
    milestone,
    comments,
    createdAt,
    updatedAt,
    closedAt,
    listHash(textMatches),
    pullRequest,
    body,
    score,
    authorAssociation,
    draft,
    repository,
    bodyHtml,
    bodyText,
    timelineUrl,
    type,
    performedViaGithubApp,
    reactions,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssueSearchResultItem &&
        this.url == other.url &&
        this.repositoryUrl == other.repositoryUrl &&
        this.labelsUrl == other.labelsUrl &&
        this.commentsUrl == other.commentsUrl &&
        this.eventsUrl == other.eventsUrl &&
        this.htmlUrl == other.htmlUrl &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.number == other.number &&
        this.title == other.title &&
        this.locked == other.locked &&
        this.activeLockReason == other.activeLockReason &&
        listsEqual(this.assignees, other.assignees) &&
        this.user == other.user &&
        listsEqual(this.labels, other.labels) &&
        this.subIssuesSummary == other.subIssuesSummary &&
        this.state == other.state &&
        this.stateReason == other.stateReason &&
        this.assignee == other.assignee &&
        this.milestone == other.milestone &&
        this.comments == other.comments &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.closedAt == other.closedAt &&
        listsEqual(this.textMatches, other.textMatches) &&
        this.pullRequest == other.pullRequest &&
        this.body == other.body &&
        this.score == other.score &&
        this.authorAssociation == other.authorAssociation &&
        this.draft == other.draft &&
        this.repository == other.repository &&
        this.bodyHtml == other.bodyHtml &&
        this.bodyText == other.bodyText &&
        this.timelineUrl == other.timelineUrl &&
        this.type == other.type &&
        this.performedViaGithubApp == other.performedViaGithubApp &&
        this.reactions == other.reactions;
  }
}
