// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesAddLabelsRequestOneOf0 {
  const IssuesAddLabelsRequestOneOf0({
    this.labels,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesAddLabelsRequestOneOf0].
  factory IssuesAddLabelsRequestOneOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesAddLabelsRequestOneOf0',
      json,
      () => IssuesAddLabelsRequestOneOf0(
        labels: (json['labels'] as List?)?.cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesAddLabelsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IssuesAddLabelsRequestOneOf0.fromJson(json);
  }

  /// The names of the labels to add to the issue's existing labels. You can
  /// pass an empty array to remove all labels. Alternatively, you can pass a
  /// single label as a `string` or an `array` of labels directly, but GitHub
  /// recommends passing an object with the `labels` key. You can also replace
  /// all of the labels for an issue. For more information, see "[Set labels
  /// for an
  /// issue](https://docs.github.com/rest/issues/labels#set-labels-for-an-issue)."
  final List<String>? labels;

  /// Converts an [IssuesAddLabelsRequestOneOf0] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'labels': labels,
    };
  }

  @override
  int get hashCode => listHash(labels).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesAddLabelsRequestOneOf0 &&
        listsEqual(labels, other.labels);
  }
}
