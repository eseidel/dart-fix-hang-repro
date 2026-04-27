import 'package:meta/meta.dart';

@immutable
class OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope {
  const OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope();

  /// Converts a `Map<String, dynamic>` to an [OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope].
  factory OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope.fromJson(
    Map<String, dynamic> _,
  ) {
    return const OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
