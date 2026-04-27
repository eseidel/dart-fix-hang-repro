import 'package:meta/meta.dart';

@immutable
class UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial {
  const UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial();

  /// Converts a `Map<String, dynamic>` to a [UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial].
  factory UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial.fromJson(
    Map<String, dynamic> _,
  ) {
    return const UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return UsersListAttestations200ResponseAttestationsInnerBundleVerificationMaterial.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
