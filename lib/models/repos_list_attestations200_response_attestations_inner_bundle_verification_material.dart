import 'package:meta/meta.dart';

@immutable
class ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial {
  const ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial();

  /// Converts a `Map<String, dynamic>` to a [ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial].
  factory ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial.fromJson(
    Map<String, dynamic> _,
  ) {
    return const ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
