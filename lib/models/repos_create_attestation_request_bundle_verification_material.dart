import 'package:meta/meta.dart';

@immutable
class ReposCreateAttestationRequestBundleVerificationMaterial {
  const ReposCreateAttestationRequestBundleVerificationMaterial();

  /// Converts a `Map<String, dynamic>` to a [ReposCreateAttestationRequestBundleVerificationMaterial].
  factory ReposCreateAttestationRequestBundleVerificationMaterial.fromJson(
    Map<String, dynamic> _,
  ) {
    return const ReposCreateAttestationRequestBundleVerificationMaterial();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateAttestationRequestBundleVerificationMaterial? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreateAttestationRequestBundleVerificationMaterial.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
