import 'package:github_out/messages/issue_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/event_payload_pages_inner.dart';
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

@immutable
class EventPayload {
  EventPayload({
    this.action,
    this.issue,
    this.comment,
    this.pages,
  });

  /// Converts a `Map<String, dynamic>` to an [EventPayload].
  factory EventPayload.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'EventPayload',
      json,
      () => EventPayload(
        action: json['action'] as String?,
        issue: Issue.maybeFromJson(json['issue'] as Map<String, dynamic>?),
        comment: IssueComment.maybeFromJson(
          json['comment'] as Map<String, dynamic>?,
        ),
        pages: (json['pages'] as List?)
            ?.map<EventPayloadPagesInner>(
              (e) => EventPayloadPagesInner.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EventPayload? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return EventPayload.fromJson(json);
  }

  final String? action;

  /// Issue
  /// Issues are a great way to keep track of tasks, enhancements, and bugs
  /// for your projects.
  final Issue? issue;

  /// Issue Comment
  /// Comments provide a way for people to collaborate on an issue.
  final IssueComment? comment;
  final List<EventPayloadPagesInner>? pages;

  /// Converts an [EventPayload] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'action': action,
      'issue': issue?.toJson(),
      'comment': comment?.toJson(),
      'pages': pages?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    action,
    issue,
    comment,
    listHash(pages),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EventPayload &&
        this.action == other.action &&
        this.issue == other.issue &&
        this.comment == other.comment &&
        listsEqual(this.pages, other.pages);
  }
}
