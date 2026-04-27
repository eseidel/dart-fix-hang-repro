import 'package:meta/meta.dart';

@immutable
class OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial {
  const OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial();

  /// Converts a `Map<String, dynamic>` to an [OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial].
  factory OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial.fromJson(
    Map<String, dynamic> _,
  ) {
    return const OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestations200ResponseAttestationsInnerBundleVerificationMaterial.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
