import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesSetLabelsRequestOneOf0 {
  IssuesSetLabelsRequestOneOf0({
    this.labels,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesSetLabelsRequestOneOf0].
  factory IssuesSetLabelsRequestOneOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesSetLabelsRequestOneOf0',
      json,
      () => IssuesSetLabelsRequestOneOf0(
        labels: (json['labels'] as List?)?.cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesSetLabelsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IssuesSetLabelsRequestOneOf0.fromJson(json);
  }

  /// The names of the labels to set for the issue. The labels you set replace
  /// any existing labels. You can pass an empty array to remove all labels.
  /// Alternatively, you can pass a single label as a `string` or an `array`
  /// of labels directly, but GitHub recommends passing an object with the
  /// `labels` key. You can also add labels to the existing labels for an
  /// issue. For more information, see "[Add labels to an
  /// issue](https://docs.github.com/rest/issues/labels#add-labels-to-an-issue)."
  final List<String>? labels;

  /// Converts an [IssuesSetLabelsRequestOneOf0] to a `Map<String, dynamic>`.
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
    return other is IssuesSetLabelsRequestOneOf0 &&
        listsEqual(this.labels, other.labels);
  }
}
