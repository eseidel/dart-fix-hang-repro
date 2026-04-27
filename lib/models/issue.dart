import 'package:github_out/messages/issue_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/issue_labels_inner.dart';
import 'package:github_out/models/issue_labels_inner_one_of_1.dart';
import 'package:github_out/models/issue_state_reason.dart';
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
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/sub_issues_summary.dart';
import 'package:meta/meta.dart';

/// {@template issue}
/// Issue
/// Issues are a great way to keep track of tasks, enhancements, and bugs for
/// your projects.
/// {@endtemplate}
@immutable
class Issue {
  /// {@macro issue}
  Issue({
    required this.id,
    required this.nodeId,
    required this.url,
    required this.repositoryUrl,
    required this.labelsUrl,
    required this.commentsUrl,
    required this.eventsUrl,
    required this.htmlUrl,
    required this.number,
    required this.state,
    this.stateReason,
    required this.title,
    this.body,
    required this.user,
    required this.labels,
    required this.assignee,
    this.assignees,
    required this.milestone,
    required this.locked,
    this.activeLockReason,
    required this.comments,
    this.pullRequest,
    required this.closedAt,
    required this.createdAt,
    required this.updatedAt,
    this.draft,
    this.closedBy,
    this.bodyHtml,
    this.bodyText,
    this.timelineUrl,
    this.type,
    this.repository,
    this.performedViaGithubApp,
    required this.authorAssociation,
    this.reactions,
    this.subIssuesSummary,
  });

  /// Converts a `Map<String, dynamic>` to an [Issue].
  factory Issue.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Issue',
      json,
      () => Issue(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        url: Uri.parse(json['url'] as String),
        repositoryUrl: Uri.parse(json['repository_url'] as String),
        labelsUrl: json['labels_url'] as String,
        commentsUrl: Uri.parse(json['comments_url'] as String),
        eventsUrl: Uri.parse(json['events_url'] as String),
        htmlUrl: Uri.parse(json['html_url'] as String),
        number: (json['number'] as int),
        state: json['state'] as String,
        stateReason: IssueStateReason.maybeFromJson(
          json['state_reason'] as String?,
        ),
        title: json['title'] as String,
        body: json['body'] as String?,
        user: SimpleUser.maybeFromJson(
          checkedKey(json, 'user') as Map<String, dynamic>?,
        ),
        labels: (json['labels'] as List)
            .map<IssueLabelsInner>(
              (e) => IssueLabelsInner.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        assignee: SimpleUser.maybeFromJson(
          checkedKey(json, 'assignee') as Map<String, dynamic>?,
        ),
        assignees: (json['assignees'] as List?)
            ?.map<SimpleUser>(
              (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        milestone: Milestone.maybeFromJson(
          checkedKey(json, 'milestone') as Map<String, dynamic>?,
        ),
        locked: json['locked'] as bool,
        activeLockReason: json['active_lock_reason'] as String?,
        comments: (json['comments'] as int),
        pullRequest: IssuePullRequest.maybeFromJson(
          json['pull_request'] as Map<String, dynamic>?,
        ),
        closedAt: maybeParseDateTime(checkedKey(json, 'closed_at') as String?),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        draft: json['draft'] as bool?,
        closedBy: SimpleUser.maybeFromJson(
          json['closed_by'] as Map<String, dynamic>?,
        ),
        bodyHtml: json['body_html'] as String?,
        bodyText: json['body_text'] as String?,
        timelineUrl: maybeParseUri(json['timeline_url'] as String?),
        type: IssueType.maybeFromJson(json['type'] as Map<String, dynamic>?),
        repository: Repository.maybeFromJson(
          json['repository'] as Map<String, dynamic>?,
        ),
        performedViaGithubApp: Integration.maybeFromJson(
          json['performed_via_github_app'] as Map<String, dynamic>?,
        ),
        authorAssociation: AuthorAssociation.fromJson(
          json['author_association'] as String,
        ),
        reactions: ReactionRollup.maybeFromJson(
          json['reactions'] as Map<String, dynamic>?,
        ),
        subIssuesSummary: SubIssuesSummary.maybeFromJson(
          json['sub_issues_summary'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Issue? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Issue.fromJson(json);
  }

  final int id;
  final String nodeId;

  /// URL for the issue
  /// example: `'https://api.github.com/repositories/42/issues/1'`
  final Uri url;
  final Uri repositoryUrl;
  final String labelsUrl;
  final Uri commentsUrl;
  final Uri eventsUrl;
  final Uri htmlUrl;

  /// Number uniquely identifying the issue within its repository
  /// example: `42`
  final int number;

  /// State of the issue; either 'open' or 'closed'
  /// example: `'open'`
  final String state;

  /// The reason for the current state
  /// example: `'not_planned'`
  final IssueStateReason? stateReason;

  /// Title of the issue
  /// example: `'Widget creation fails in Safari on OS X 10.8'`
  final String title;

  /// Contents of the issue
  /// example: `'It looks like the new widget form is broken on Safari. When I try and create the widget, Safari crashes. This is reproducible on 10.8, but not 10.9. Maybe a browser bug?'`
  final String? body;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? user;

  /// Labels to associate with this issue; pass one or more label names to
  /// replace the set of labels on this issue; send an empty array to clear
  /// all labels from the issue; note that the labels are silently dropped for
  /// users without push access to the repository
  /// example: `'bug'`
  /// example: `'registration'`
  final List<IssueLabelsInner> labels;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? assignee;
  final List<SimpleUser>? assignees;

  /// Milestone
  /// A collection of related issues and pull requests.
  final Milestone? milestone;
  final bool locked;
  final String? activeLockReason;
  final int comments;
  final IssuePullRequest? pullRequest;
  final DateTime? closedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool? draft;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? closedBy;
  final String? bodyHtml;
  final String? bodyText;
  final Uri? timelineUrl;

  /// Issue Type
  /// The type of issue.
  final IssueType? type;

  /// Repository
  /// A repository on GitHub.
  final Repository? repository;

  /// GitHub app
  /// GitHub apps are a new way to extend GitHub. They can be installed
  /// directly on organizations and user accounts and granted access to
  /// specific repositories. They come with granular permissions and built-in
  /// webhooks. GitHub apps are first class actors within GitHub.
  final Integration? performedViaGithubApp;

  /// author_association
  /// How the author is associated with the repository.
  /// example: `'OWNER'`
  final AuthorAssociation authorAssociation;

  /// Reaction Rollup
  final ReactionRollup? reactions;

  /// Sub-issues Summary
  final SubIssuesSummary? subIssuesSummary;

  /// Converts an [Issue] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url.toString(),
      'repository_url': repositoryUrl.toString(),
      'labels_url': labelsUrl,
      'comments_url': commentsUrl.toString(),
      'events_url': eventsUrl.toString(),
      'html_url': htmlUrl.toString(),
      'number': number,
      'state': state,
      'state_reason': stateReason?.toJson(),
      'title': title,
      'body': body,
      'user': user?.toJson(),
      'labels': labels.map((e) => e.toJson()).toList(),
      'assignee': assignee?.toJson(),
      'assignees': assignees?.map((e) => e.toJson()).toList(),
      'milestone': milestone?.toJson(),
      'locked': locked,
      'active_lock_reason': activeLockReason,
      'comments': comments,
      'pull_request': pullRequest?.toJson(),
      'closed_at': closedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'draft': draft,
      'closed_by': closedBy?.toJson(),
      'body_html': bodyHtml,
      'body_text': bodyText,
      'timeline_url': timelineUrl?.toString(),
      'type': type?.toJson(),
      'repository': repository?.toJson(),
      'performed_via_github_app': performedViaGithubApp?.toJson(),
      'author_association': authorAssociation.toJson(),
      'reactions': reactions?.toJson(),
      'sub_issues_summary': subIssuesSummary?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    url,
    repositoryUrl,
    labelsUrl,
    commentsUrl,
    eventsUrl,
    htmlUrl,
    number,
    state,
    stateReason,
    title,
    body,
    user,
    listHash(labels),
    assignee,
    listHash(assignees),
    milestone,
    locked,
    activeLockReason,
    comments,
    pullRequest,
    closedAt,
    createdAt,
    updatedAt,
    draft,
    closedBy,
    bodyHtml,
    bodyText,
    timelineUrl,
    type,
    repository,
    performedViaGithubApp,
    authorAssociation,
    reactions,
    subIssuesSummary,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Issue &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.repositoryUrl == other.repositoryUrl &&
        this.labelsUrl == other.labelsUrl &&
        this.commentsUrl == other.commentsUrl &&
        this.eventsUrl == other.eventsUrl &&
        this.htmlUrl == other.htmlUrl &&
        this.number == other.number &&
        this.state == other.state &&
        this.stateReason == other.stateReason &&
        this.title == other.title &&
        this.body == other.body &&
        this.user == other.user &&
        listsEqual(this.labels, other.labels) &&
        this.assignee == other.assignee &&
        listsEqual(this.assignees, other.assignees) &&
        this.milestone == other.milestone &&
        this.locked == other.locked &&
        this.activeLockReason == other.activeLockReason &&
        this.comments == other.comments &&
        this.pullRequest == other.pullRequest &&
        this.closedAt == other.closedAt &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.draft == other.draft &&
        this.closedBy == other.closedBy &&
        this.bodyHtml == other.bodyHtml &&
        this.bodyText == other.bodyText &&
        this.timelineUrl == other.timelineUrl &&
        this.type == other.type &&
        this.repository == other.repository &&
        this.performedViaGithubApp == other.performedViaGithubApp &&
        this.authorAssociation == other.authorAssociation &&
        this.reactions == other.reactions &&
        this.subIssuesSummary == other.subIssuesSummary;
  }
}
