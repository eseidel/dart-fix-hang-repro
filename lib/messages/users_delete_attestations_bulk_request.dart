// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/users_delete_attestations_bulk_request_one_of_0.dart';
import 'package:github_out/models/users_delete_attestations_bulk_request_one_of_1.dart';
import 'package:meta/meta.dart';

/// The request body must include either `subject_digests` or `attestation_ids`,
/// but not both.
sealed class UsersDeleteAttestationsBulkRequest {
  const UsersDeleteAttestationsBulkRequest();

  factory UsersDeleteAttestationsBulkRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    if (json.containsKey('subject_digests')) {
      return UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf0(
        UsersDeleteAttestationsBulkRequestOneOf0.fromJson(json),
      );
    }
    if (json.containsKey('attestation_ids')) {
      return UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf1(
        UsersDeleteAttestationsBulkRequestOneOf1.fromJson(json),
      );
    }
    throw FormatException(
      'No variant of UsersDeleteAttestationsBulkRequest matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersDeleteAttestationsBulkRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersDeleteAttestationsBulkRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf0
    extends UsersDeleteAttestationsBulkRequest {
  const UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf0(
    this.value,
  );

  final UsersDeleteAttestationsBulkRequestOneOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf1
    extends UsersDeleteAttestationsBulkRequest {
  const UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf1(
    this.value,
  );

  final UsersDeleteAttestationsBulkRequestOneOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is UsersDeleteAttestationsBulkRequestUsersDeleteAttestationsBulkRequestOneOf1 &&
        value == other.value;
  }
}
