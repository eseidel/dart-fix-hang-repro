import 'package:github_out/messages/issue_pull_request.dart';
import 'package:github_out/messages/pull_request_review_comment_links_pull_request.dart';
import 'package:github_out/messages/timeline_reviewed_event_links_pull_request.dart';
import 'package:github_out/models/added_to_project_issue_event.dart';
import 'package:github_out/models/added_to_project_issue_event_project_card.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/commit_comment.dart';
import 'package:github_out/models/converted_note_to_issue_issue_event.dart';
import 'package:github_out/models/converted_note_to_issue_issue_event_project_card.dart';
import 'package:github_out/models/demilestoned_issue_event.dart';
import 'package:github_out/models/demilestoned_issue_event_milestone.dart';
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
import 'package:github_out/models/labeled_issue_event.dart';
import 'package:github_out/models/labeled_issue_event_label.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/locked_issue_event.dart';
import 'package:github_out/models/milestone.dart';
import 'package:github_out/models/milestone_state.dart';
import 'package:github_out/models/milestoned_issue_event.dart';
import 'package:github_out/models/milestoned_issue_event_milestone.dart';
import 'package:github_out/models/moved_column_in_project_issue_event.dart';
import 'package:github_out/models/moved_column_in_project_issue_event_project_card.dart';
import 'package:github_out/models/pull_request_review_comment.dart';
import 'package:github_out/models/pull_request_review_comment_links.dart';
import 'package:github_out/models/pull_request_review_comment_links_html.dart';
import 'package:github_out/models/pull_request_review_comment_links_self.dart';
import 'package:github_out/models/pull_request_review_comment_side.dart';
import 'package:github_out/models/pull_request_review_comment_start_side.dart';
import 'package:github_out/models/pull_request_review_comment_subject_type.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/removed_from_project_issue_event.dart';
import 'package:github_out/models/removed_from_project_issue_event_project_card.dart';
import 'package:github_out/models/renamed_issue_event.dart';
import 'package:github_out/models/renamed_issue_event_rename.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/review_dismissed_issue_event.dart';
import 'package:github_out/models/review_dismissed_issue_event_dismissed_review.dart';
import 'package:github_out/models/review_request_removed_issue_event.dart';
import 'package:github_out/models/review_requested_issue_event.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/state_change_issue_event.dart';
import 'package:github_out/models/sub_issues_summary.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:github_out/models/timeline_assigned_issue_event.dart';
import 'package:github_out/models/timeline_comment_event.dart';
import 'package:github_out/models/timeline_commit_commented_event.dart';
import 'package:github_out/models/timeline_committed_event.dart';
import 'package:github_out/models/timeline_committed_event_author.dart';
import 'package:github_out/models/timeline_committed_event_committer.dart';
import 'package:github_out/models/timeline_committed_event_parents_inner.dart';
import 'package:github_out/models/timeline_committed_event_tree.dart';
import 'package:github_out/models/timeline_committed_event_verification.dart';
import 'package:github_out/models/timeline_cross_referenced_event.dart';
import 'package:github_out/models/timeline_cross_referenced_event_source.dart';
import 'package:github_out/models/timeline_line_commented_event.dart';
import 'package:github_out/models/timeline_reviewed_event.dart';
import 'package:github_out/models/timeline_reviewed_event_links.dart';
import 'package:github_out/models/timeline_reviewed_event_links_html.dart';
import 'package:github_out/models/timeline_unassigned_issue_event.dart';
import 'package:github_out/models/unlabeled_issue_event.dart';
import 'package:github_out/models/unlabeled_issue_event_label.dart';

/// Timeline Event
/// Timeline Event
sealed class TimelineIssueEvents {
  static TimelineIssueEvents fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('TimelineIssueEvents.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TimelineIssueEvents? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return TimelineIssueEvents.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
