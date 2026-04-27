import 'package:github_out/models/added_to_project_issue_event.dart';
import 'package:github_out/models/added_to_project_issue_event_project_card.dart';
import 'package:github_out/models/assigned_issue_event.dart';
import 'package:github_out/models/converted_note_to_issue_issue_event.dart';
import 'package:github_out/models/converted_note_to_issue_issue_event_project_card.dart';
import 'package:github_out/models/demilestoned_issue_event.dart';
import 'package:github_out/models/demilestoned_issue_event_milestone.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/labeled_issue_event.dart';
import 'package:github_out/models/labeled_issue_event_label.dart';
import 'package:github_out/models/locked_issue_event.dart';
import 'package:github_out/models/milestoned_issue_event.dart';
import 'package:github_out/models/milestoned_issue_event_milestone.dart';
import 'package:github_out/models/moved_column_in_project_issue_event.dart';
import 'package:github_out/models/moved_column_in_project_issue_event_project_card.dart';
import 'package:github_out/models/removed_from_project_issue_event.dart';
import 'package:github_out/models/removed_from_project_issue_event_project_card.dart';
import 'package:github_out/models/renamed_issue_event.dart';
import 'package:github_out/models/renamed_issue_event_rename.dart';
import 'package:github_out/models/review_dismissed_issue_event.dart';
import 'package:github_out/models/review_dismissed_issue_event_dismissed_review.dart';
import 'package:github_out/models/review_request_removed_issue_event.dart';
import 'package:github_out/models/review_requested_issue_event.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:github_out/models/unassigned_issue_event.dart';
import 'package:github_out/models/unlabeled_issue_event.dart';
import 'package:github_out/models/unlabeled_issue_event_label.dart';

/// Issue Event for Issue
/// Issue Event for Issue
sealed class IssueEventForIssue {
  static IssueEventForIssue fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('IssueEventForIssue.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssueEventForIssue? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssueEventForIssue.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
