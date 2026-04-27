import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/issues_create_request_labels_inner.dart';
import 'package:github_out/models/issues_create_request_labels_inner_one_of_1.dart';
import 'package:github_out/models/issues_create_request_milestone.dart';
import 'package:github_out/models/issues_create_request_title.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesCreateRequest {
  IssuesCreateRequest({
    required this.title,
    this.body,
    this.assignee,
    this.milestone,
    this.labels,
    this.assignees,
    this.type,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesCreateRequest].
  factory IssuesCreateRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesCreateRequest',
      json,
      () => IssuesCreateRequest(
        title: IssuesCreateRequestTitle.fromJson(
          json['title'] as Map<String, dynamic>,
        ),
        body: json['body'] as String?,
        assignee: json['assignee'] as String?,
        milestone: IssuesCreateRequestMilestone.maybeFromJson(
          json['milestone'] as Map<String, dynamic>,
        ),
        labels: (json['labels'] as List?)
            ?.map<IssuesCreateRequestLabelsInner>(
              (e) => IssuesCreateRequestLabelsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        assignees: (json['assignees'] as List?)?.cast<String>(),
        type: json['type'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesCreateRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IssuesCreateRequest.fromJson(json);
  }

  /// The title of the issue.
  final IssuesCreateRequestTitle title;

  /// The contents of the issue.
  final String? body;

  /// Login for the user that this issue should be assigned to. _NOTE: Only
  /// users with push access can set the assignee for new issues. The assignee
  /// is silently dropped otherwise. **This field is closing down.**_
  final String? assignee;
  final IssuesCreateRequestMilestone? milestone;

  /// Labels to associate with this issue. _NOTE: Only users with push access
  /// can set labels for new issues. Labels are silently dropped otherwise._
  final List<IssuesCreateRequestLabelsInner>? labels;

  /// Logins for Users to assign to this issue. _NOTE: Only users with push
  /// access can set assignees for new issues. Assignees are silently dropped
  /// otherwise._
  final List<String>? assignees;

  /// The name of the issue type to associate with this issue. _NOTE: Only
  /// users with push access can set the type for new issues. The type is
  /// silently dropped otherwise._
  /// example: `'Epic'`
  final String? type;

  /// Converts an [IssuesCreateRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'title': title.toJson(),
      'body': body,
      'assignee': assignee,
      'milestone': milestone?.toJson(),
      'labels': labels?.map((e) => e.toJson()).toList(),
      'assignees': assignees,
      'type': type,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    title,
    body,
    assignee,
    milestone,
    listHash(labels),
    listHash(assignees),
    type,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesCreateRequest &&
        this.title == other.title &&
        this.body == other.body &&
        this.assignee == other.assignee &&
        this.milestone == other.milestone &&
        listsEqual(this.labels, other.labels) &&
        listsEqual(this.assignees, other.assignees) &&
        this.type == other.type;
  }
}
