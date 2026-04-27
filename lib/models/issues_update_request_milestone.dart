import 'package:meta/meta.dart';

sealed class IssuesUpdateRequestMilestone {
  const IssuesUpdateRequestMilestone();

  factory IssuesUpdateRequestMilestone.fromJson(dynamic json) {
    return switch (json) {
      String v => IssuesUpdateRequestMilestoneString(v),
      int v => IssuesUpdateRequestMilestoneInt(v),
      _ => throw FormatException(
        'Unsupported shape for IssuesUpdateRequestMilestone: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesUpdateRequestMilestone? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssuesUpdateRequestMilestone.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class IssuesUpdateRequestMilestoneString
    extends IssuesUpdateRequestMilestone {
  const IssuesUpdateRequestMilestoneString(this.value);

  final String value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesUpdateRequestMilestoneString && value == other.value;
  }
}

@immutable
final class IssuesUpdateRequestMilestoneInt
    extends IssuesUpdateRequestMilestone {
  const IssuesUpdateRequestMilestoneInt(this.value);

  final int value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesUpdateRequestMilestoneInt && value == other.value;
  }
}
