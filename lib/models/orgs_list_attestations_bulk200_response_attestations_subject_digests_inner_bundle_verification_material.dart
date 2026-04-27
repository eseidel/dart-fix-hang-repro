import 'package:meta/meta.dart';

@immutable
class OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial {
  const OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial();

  /// Converts a `Map<String, dynamic>` to an [OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial].
  factory OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial.fromJson(
    Map<String, dynamic> _,
  ) {
    return const OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
