import 'package:github_out/models/checks_create_request_one_of_0.dart';
import 'package:github_out/models/checks_create_request_one_of_1.dart';
import 'package:meta/meta.dart';

sealed class ChecksCreateRequest {
  const ChecksCreateRequest();

  factory ChecksCreateRequest.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('conclusion')) {
      return ChecksCreateRequestChecksCreateRequestOneOf0(
        ChecksCreateRequestOneOf0.fromJson(json),
      );
    }
    return ChecksCreateRequestChecksCreateRequestOneOf1(
      ChecksCreateRequestOneOf1.fromJson(json),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksCreateRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ChecksCreateRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class ChecksCreateRequestChecksCreateRequestOneOf0
    extends ChecksCreateRequest {
  const ChecksCreateRequestChecksCreateRequestOneOf0(this.value);

  final ChecksCreateRequestOneOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChecksCreateRequestChecksCreateRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ChecksCreateRequestChecksCreateRequestOneOf1
    extends ChecksCreateRequest {
  const ChecksCreateRequestChecksCreateRequestOneOf1(this.value);

  final ChecksCreateRequestOneOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChecksCreateRequestChecksCreateRequestOneOf1 &&
        value == other.value;
  }
}
