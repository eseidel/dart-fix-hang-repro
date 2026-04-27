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
import 'package:meta/meta.dart';

@immutable
class TimelineCrossReferencedEventSource {
  TimelineCrossReferencedEventSource({
    this.type,
    this.issue,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [TimelineCrossReferencedEventSource].
  factory TimelineCrossReferencedEventSource.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'TimelineCrossReferencedEventSource',
      json,
      () => TimelineCrossReferencedEventSource(
        type: json['type'] as String?,
        issue: Issue.maybeFromJson(json['issue'] as Map<String, dynamic>?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TimelineCrossReferencedEventSource? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return TimelineCrossReferencedEventSource.fromJson(json);
  }

  final String? type;

  /// Issue
  /// Issues are a great way to keep track of tasks, enhancements, and bugs
  /// for your projects.
  final Issue? issue;

  /// Converts a [TimelineCrossReferencedEventSource]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'issue': issue?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    issue,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TimelineCrossReferencedEventSource &&
        this.type == other.type &&
        this.issue == other.issue;
  }
}
