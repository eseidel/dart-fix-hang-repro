import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/issues_add_labels_request_one_of_2_labels_inner.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesAddLabelsRequestOneOf2 {
  IssuesAddLabelsRequestOneOf2({
    this.labels,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesAddLabelsRequestOneOf2].
  factory IssuesAddLabelsRequestOneOf2.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesAddLabelsRequestOneOf2',
      json,
      () => IssuesAddLabelsRequestOneOf2(
        labels: (json['labels'] as List?)
            ?.map<IssuesAddLabelsRequestOneOf2LabelsInner>(
              (e) => IssuesAddLabelsRequestOneOf2LabelsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesAddLabelsRequestOneOf2? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IssuesAddLabelsRequestOneOf2.fromJson(json);
  }

  final List<IssuesAddLabelsRequestOneOf2LabelsInner>? labels;

  /// Converts an [IssuesAddLabelsRequestOneOf2] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'labels': labels?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => listHash(labels).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesAddLabelsRequestOneOf2 &&
        listsEqual(this.labels, other.labels);
  }
}
