import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/demilestoned_issue_event_milestone.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template demilestoned_issue_event}
/// Demilestoned Issue Event
/// Demilestoned Issue Event
/// {@endtemplate}
@immutable
class DemilestonedIssueEvent {
  /// {@macro demilestoned_issue_event}
  DemilestonedIssueEvent({
    required this.id,
    required this.nodeId,
    required this.url,
    required this.actor,
    required this.event,
    required this.commitId,
    required this.commitUrl,
    required this.createdAt,
    required this.performedViaGithubApp,
    required this.milestone,
  });

  /// Converts a `Map<String, dynamic>` to a [DemilestonedIssueEvent].
  factory DemilestonedIssueEvent.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'DemilestonedIssueEvent',
      json,
      () => DemilestonedIssueEvent(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        url: json['url'] as String,
        actor: SimpleUser.fromJson(json['actor'] as Map<String, dynamic>),
        event: json['event'] as String,
        commitId: checkedKey(json, 'commit_id') as String?,
        commitUrl: checkedKey(json, 'commit_url') as String?,
        createdAt: json['created_at'] as String,
        performedViaGithubApp: Integration.maybeFromJson(
          checkedKey(json, 'performed_via_github_app') as Map<String, dynamic>?,
        ),
        milestone: DemilestonedIssueEventMilestone.fromJson(
          json['milestone'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DemilestonedIssueEvent? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return DemilestonedIssueEvent.fromJson(json);
  }

  final int id;
  final String nodeId;
  final String url;

  /// Simple User
  /// A GitHub user.
  final SimpleUser actor;
  final String event;
  final String? commitId;
  final String? commitUrl;
  final String createdAt;

  /// GitHub app
  /// GitHub apps are a new way to extend GitHub. They can be installed
  /// directly on organizations and user accounts and granted access to
  /// specific repositories. They come with granular permissions and built-in
  /// webhooks. GitHub apps are first class actors within GitHub.
  final Integration? performedViaGithubApp;
  final DemilestonedIssueEventMilestone milestone;

  /// Converts a [DemilestonedIssueEvent] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'actor': actor.toJson(),
      'event': event,
      'commit_id': commitId,
      'commit_url': commitUrl,
      'created_at': createdAt,
      'performed_via_github_app': performedViaGithubApp?.toJson(),
      'milestone': milestone.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    url,
    actor,
    event,
    commitId,
    commitUrl,
    createdAt,
    performedViaGithubApp,
    milestone,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DemilestonedIssueEvent &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.actor == other.actor &&
        this.event == other.event &&
        this.commitId == other.commitId &&
        this.commitUrl == other.commitUrl &&
        this.createdAt == other.createdAt &&
        this.performedViaGithubApp == other.performedViaGithubApp &&
        this.milestone == other.milestone;
  }
}
