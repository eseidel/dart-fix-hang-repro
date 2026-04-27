import 'package:github_out/messages/issue_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/issue.dart';
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
import 'package:github_out/models/timeline_cross_referenced_event_source.dart';
import 'package:meta/meta.dart';

/// {@template timeline_cross_referenced_event}
/// Timeline Cross Referenced Event
/// Timeline Cross Referenced Event
/// {@endtemplate}
@immutable
class TimelineCrossReferencedEvent {
  /// {@macro timeline_cross_referenced_event}
  TimelineCrossReferencedEvent({
    required this.event,
    this.actor,
    required this.createdAt,
    required this.updatedAt,
    required this.source,
  });

  /// Converts a `Map<String, dynamic>` to a [TimelineCrossReferencedEvent].
  factory TimelineCrossReferencedEvent.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'TimelineCrossReferencedEvent',
      json,
      () => TimelineCrossReferencedEvent(
        event: json['event'] as String,
        actor: SimpleUser.maybeFromJson(json['actor'] as Map<String, dynamic>?),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        source: TimelineCrossReferencedEventSource.fromJson(
          json['source'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TimelineCrossReferencedEvent? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return TimelineCrossReferencedEvent.fromJson(json);
  }

  final String event;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? actor;
  final DateTime createdAt;
  final DateTime updatedAt;
  final TimelineCrossReferencedEventSource source;

  /// Converts a [TimelineCrossReferencedEvent] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'actor': actor?.toJson(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'source': source.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    event,
    actor,
    createdAt,
    updatedAt,
    source,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TimelineCrossReferencedEvent &&
        this.event == other.event &&
        this.actor == other.actor &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.source == other.source;
  }
}
