import 'package:github_out/models/checks_update_request_any_of_0.dart';
import 'package:github_out/models/checks_update_request_any_of_0_status.dart';
import 'package:github_out/models/checks_update_request_any_of_1.dart';
import 'package:github_out/models/checks_update_request_any_of_1_status.dart';
import 'package:meta/meta.dart';

sealed class ChecksUpdateRequest {
  const ChecksUpdateRequest();

  factory ChecksUpdateRequest.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('conclusion')) {
      return ChecksUpdateRequestChecksUpdateRequestAnyOf0(
        ChecksUpdateRequestAnyOf0.fromJson(json),
      );
    }
    return ChecksUpdateRequestChecksUpdateRequestAnyOf1(
      ChecksUpdateRequestAnyOf1.fromJson(json),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksUpdateRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ChecksUpdateRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class ChecksUpdateRequestChecksUpdateRequestAnyOf0
    extends ChecksUpdateRequest {
  const ChecksUpdateRequestChecksUpdateRequestAnyOf0(this.value);

  final ChecksUpdateRequestAnyOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChecksUpdateRequestChecksUpdateRequestAnyOf0 &&
        value == other.value;
  }
}

@immutable
final class ChecksUpdateRequestChecksUpdateRequestAnyOf1
    extends ChecksUpdateRequest {
  const ChecksUpdateRequestChecksUpdateRequestAnyOf1(this.value);

  final ChecksUpdateRequestAnyOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChecksUpdateRequestChecksUpdateRequestAnyOf1 &&
        value == other.value;
  }
}
