import 'package:github_out/models/issues_update_request_labels_inner_one_of_1.dart';
import 'package:meta/meta.dart';

sealed class IssuesUpdateRequestLabelsInner {
  const IssuesUpdateRequestLabelsInner();

  factory IssuesUpdateRequestLabelsInner.fromJson(dynamic json) {
    return switch (json) {
      String v => IssuesUpdateRequestLabelsInnerString(v),
      Map<String, dynamic> v =>
        IssuesUpdateRequestLabelsInnerIssuesUpdateRequestLabelsInnerOneOf1(
          IssuesUpdateRequestLabelsInnerOneOf1.fromJson(v),
        ),
      _ => throw FormatException(
        'Unsupported shape for IssuesUpdateRequestLabelsInner: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesUpdateRequestLabelsInner? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssuesUpdateRequestLabelsInner.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class IssuesUpdateRequestLabelsInnerString
    extends IssuesUpdateRequestLabelsInner {
  const IssuesUpdateRequestLabelsInnerString(this.value);

  final String value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesUpdateRequestLabelsInnerString &&
        value == other.value;
  }
}

@immutable
final class IssuesUpdateRequestLabelsInnerIssuesUpdateRequestLabelsInnerOneOf1
    extends IssuesUpdateRequestLabelsInner {
  const IssuesUpdateRequestLabelsInnerIssuesUpdateRequestLabelsInnerOneOf1(
    this.value,
  );

  final IssuesUpdateRequestLabelsInnerOneOf1 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is IssuesUpdateRequestLabelsInnerIssuesUpdateRequestLabelsInnerOneOf1 &&
        value == other.value;
  }
}
