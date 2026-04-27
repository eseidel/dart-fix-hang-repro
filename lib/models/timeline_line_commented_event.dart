import 'package:github_out/messages/pull_request_review_comment_links_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/pull_request_review_comment.dart';
import 'package:github_out/models/pull_request_review_comment_links.dart';
import 'package:github_out/models/pull_request_review_comment_links_html.dart';
import 'package:github_out/models/pull_request_review_comment_links_self.dart';
import 'package:github_out/models/pull_request_review_comment_side.dart';
import 'package:github_out/models/pull_request_review_comment_start_side.dart';
import 'package:github_out/models/pull_request_review_comment_subject_type.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template timeline_line_commented_event}
/// Timeline Line Commented Event
/// Timeline Line Commented Event
/// {@endtemplate}
@immutable
class TimelineLineCommentedEvent {
  /// {@macro timeline_line_commented_event}
  TimelineLineCommentedEvent({
    this.event,
    this.nodeId,
    this.comments,
  });

  /// Converts a `Map<String, dynamic>` to a [TimelineLineCommentedEvent].
  factory TimelineLineCommentedEvent.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'TimelineLineCommentedEvent',
      json,
      () => TimelineLineCommentedEvent(
        event: json['event'] as String?,
        nodeId: json['node_id'] as String?,
        comments: (json['comments'] as List?)
            ?.map<PullRequestReviewComment>(
              (e) =>
                  PullRequestReviewComment.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TimelineLineCommentedEvent? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return TimelineLineCommentedEvent.fromJson(json);
  }

  final String? event;
  final String? nodeId;
  final List<PullRequestReviewComment>? comments;

  /// Converts a [TimelineLineCommentedEvent] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'node_id': nodeId,
      'comments': comments?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    event,
    nodeId,
    listHash(comments),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TimelineLineCommentedEvent &&
        this.event == other.event &&
        this.nodeId == other.nodeId &&
        listsEqual(this.comments, other.comments);
  }
}
