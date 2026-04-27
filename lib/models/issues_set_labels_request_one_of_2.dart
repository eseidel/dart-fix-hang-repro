// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/issues_set_labels_request_one_of_2_labels_inner.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesSetLabelsRequestOneOf2 {
  const IssuesSetLabelsRequestOneOf2({
    this.labels,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesSetLabelsRequestOneOf2].
  factory IssuesSetLabelsRequestOneOf2.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesSetLabelsRequestOneOf2',
      json,
      () => IssuesSetLabelsRequestOneOf2(
        labels: (json['labels'] as List?)
            ?.map<IssuesSetLabelsRequestOneOf2LabelsInner>(
              (e) => IssuesSetLabelsRequestOneOf2LabelsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesSetLabelsRequestOneOf2? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IssuesSetLabelsRequestOneOf2.fromJson(json);
  }

  final List<IssuesSetLabelsRequestOneOf2LabelsInner>? labels;

  /// Converts an [IssuesSetLabelsRequestOneOf2] to a `Map<String, dynamic>`.
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
    return other is IssuesSetLabelsRequestOneOf2 &&
        listsEqual(labels, other.labels);
  }
}
