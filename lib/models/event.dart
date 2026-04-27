import 'package:github_out/messages/issue_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/actor.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/event_payload.dart';
import 'package:github_out/models/event_payload_pages_inner.dart';
import 'package:github_out/models/event_repo.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/issue.dart';
import 'package:github_out/models/issue_comment.dart';
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

/// {@template event}
/// Event
/// Event
/// {@endtemplate}
@immutable
class Event {
  /// {@macro event}
  Event({
    required this.id,
    required this.type,
    required this.actor,
    required this.repo,
    this.org,
    required this.payload,
    required this.public,
    required this.createdAt,
  });

  /// Converts a `Map<String, dynamic>` to an [Event].
  factory Event.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Event',
      json,
      () => Event(
        id: json['id'] as String,
        type: checkedKey(json, 'type') as String?,
        actor: Actor.fromJson(json['actor'] as Map<String, dynamic>),
        repo: EventRepo.fromJson(json['repo'] as Map<String, dynamic>),
        org: Actor.maybeFromJson(json['org'] as Map<String, dynamic>?),
        payload: EventPayload.fromJson(json['payload'] as Map<String, dynamic>),
        public: json['public'] as bool,
        createdAt: maybeParseDateTime(
          checkedKey(json, 'created_at') as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Event? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Event.fromJson(json);
  }

  final String id;
  final String? type;

  /// Actor
  /// Actor
  final Actor actor;
  final EventRepo repo;

  /// Actor
  /// Actor
  final Actor? org;
  final EventPayload payload;
  final bool public;
  final DateTime? createdAt;

  /// Converts an [Event] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'actor': actor.toJson(),
      'repo': repo.toJson(),
      'org': org?.toJson(),
      'payload': payload.toJson(),
      'public': public,
      'created_at': createdAt?.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    type,
    actor,
    repo,
    org,
    payload,
    public,
    createdAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Event &&
        this.id == other.id &&
        this.type == other.type &&
        this.actor == other.actor &&
        this.repo == other.repo &&
        this.org == other.org &&
        this.payload == other.payload &&
        this.public == other.public &&
        this.createdAt == other.createdAt;
  }
}
