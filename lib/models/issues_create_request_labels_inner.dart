// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/issues_create_request_labels_inner_one_of_1.dart';
import 'package:meta/meta.dart';

sealed class IssuesCreateRequestLabelsInner {
  const IssuesCreateRequestLabelsInner();

  factory IssuesCreateRequestLabelsInner.fromJson(dynamic json) {
    return switch (json) {
      final String v => IssuesCreateRequestLabelsInnerString(v),
      final Map<String, dynamic> v =>
        IssuesCreateRequestLabelsInnerIssuesCreateRequestLabelsInnerOneOf1(
          IssuesCreateRequestLabelsInnerOneOf1.fromJson(v),
        ),
      _ => throw FormatException(
        'Unsupported shape for IssuesCreateRequestLabelsInner: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesCreateRequestLabelsInner? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssuesCreateRequestLabelsInner.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class IssuesCreateRequestLabelsInnerString
    extends IssuesCreateRequestLabelsInner {
  const IssuesCreateRequestLabelsInnerString(this.value);

  final String value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesCreateRequestLabelsInnerString &&
        value == other.value;
  }
}

@immutable
final class IssuesCreateRequestLabelsInnerIssuesCreateRequestLabelsInnerOneOf1
    extends IssuesCreateRequestLabelsInner {
  const IssuesCreateRequestLabelsInnerIssuesCreateRequestLabelsInnerOneOf1(
    this.value,
  );

  final IssuesCreateRequestLabelsInnerOneOf1 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is IssuesCreateRequestLabelsInnerIssuesCreateRequestLabelsInnerOneOf1 &&
        value == other.value;
  }
}
