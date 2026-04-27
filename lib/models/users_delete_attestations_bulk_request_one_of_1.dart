import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class UsersDeleteAttestationsBulkRequestOneOf1 {
  const UsersDeleteAttestationsBulkRequestOneOf1({
    required this.attestationIds,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersDeleteAttestationsBulkRequestOneOf1].
  factory UsersDeleteAttestationsBulkRequestOneOf1.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersDeleteAttestationsBulkRequestOneOf1',
      json,
      () => UsersDeleteAttestationsBulkRequestOneOf1(
        attestationIds: (json['attestation_ids'] as List).cast<int>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersDeleteAttestationsBulkRequestOneOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersDeleteAttestationsBulkRequestOneOf1.fromJson(json);
  }

  /// List of unique IDs associated with the artifact attestations to delete.
  final List<int> attestationIds;

  /// Converts a [UsersDeleteAttestationsBulkRequestOneOf1]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'attestation_ids': attestationIds,
    };
  }

  @override
  int get hashCode => listHash(attestationIds).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersDeleteAttestationsBulkRequestOneOf1 &&
        listsEqual(attestationIds, other.attestationIds);
  }
}
