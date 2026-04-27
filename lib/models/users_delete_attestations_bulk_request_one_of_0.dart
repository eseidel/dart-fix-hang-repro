import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class UsersDeleteAttestationsBulkRequestOneOf0 {
  const UsersDeleteAttestationsBulkRequestOneOf0({
    required this.subjectDigests,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersDeleteAttestationsBulkRequestOneOf0].
  factory UsersDeleteAttestationsBulkRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersDeleteAttestationsBulkRequestOneOf0',
      json,
      () => UsersDeleteAttestationsBulkRequestOneOf0(
        subjectDigests: (json['subject_digests'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersDeleteAttestationsBulkRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersDeleteAttestationsBulkRequestOneOf0.fromJson(json);
  }

  /// List of subject digests associated with the artifact attestations to
  /// delete.
  final List<String> subjectDigests;

  /// Converts a [UsersDeleteAttestationsBulkRequestOneOf0]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'subject_digests': subjectDigests,
    };
  }

  @override
  int get hashCode => listHash(subjectDigests).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersDeleteAttestationsBulkRequestOneOf0 &&
        listsEqual(subjectDigests, other.subjectDigests);
  }
}
