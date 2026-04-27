import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template locked_issue_event}
/// Locked Issue Event
/// Locked Issue Event
/// {@endtemplate}
@immutable
class LockedIssueEvent {
  /// {@macro locked_issue_event}
  LockedIssueEvent({
    required this.id,
    required this.nodeId,
    required this.url,
    required this.actor,
    required this.event,
    required this.commitId,
    required this.commitUrl,
    required this.createdAt,
    required this.performedViaGithubApp,
    required this.lockReason,
  });

  /// Converts a `Map<String, dynamic>` to a [LockedIssueEvent].
  factory LockedIssueEvent.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'LockedIssueEvent',
      json,
      () => LockedIssueEvent(
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
        lockReason: checkedKey(json, 'lock_reason') as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static LockedIssueEvent? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return LockedIssueEvent.fromJson(json);
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

  /// example: `'"off-topic"'`
  final String? lockReason;

  /// Converts a [LockedIssueEvent] to a `Map<String, dynamic>`.
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
      'lock_reason': lockReason,
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
    lockReason,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LockedIssueEvent &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.url == other.url &&
        this.actor == other.actor &&
        this.event == other.event &&
        this.commitId == other.commitId &&
        this.commitUrl == other.commitUrl &&
        this.createdAt == other.createdAt &&
        this.performedViaGithubApp == other.performedViaGithubApp &&
        this.lockReason == other.lockReason;
  }
}
