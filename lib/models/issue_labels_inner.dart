import 'package:github_out/models/issue_labels_inner_one_of_1.dart';
import 'package:meta/meta.dart';

sealed class IssueLabelsInner {
  const IssueLabelsInner();

  factory IssueLabelsInner.fromJson(dynamic json) {
    return switch (json) {
      String v => IssueLabelsInnerString(v),
      Map<String, dynamic> v => IssueLabelsInnerIssueLabelsInnerOneOf1(
        IssueLabelsInnerOneOf1.fromJson(v),
      ),
      _ => throw FormatException(
        'Unsupported shape for IssueLabelsInner: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssueLabelsInner? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssueLabelsInner.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class IssueLabelsInnerString extends IssueLabelsInner {
  const IssueLabelsInnerString(this.value);

  final String value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssueLabelsInnerString && value == other.value;
  }
}

@immutable
final class IssueLabelsInnerIssueLabelsInnerOneOf1 extends IssueLabelsInner {
  const IssueLabelsInnerIssueLabelsInnerOneOf1(this.value);

  final IssueLabelsInnerOneOf1 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssueLabelsInnerIssueLabelsInnerOneOf1 &&
        value == other.value;
  }
}
