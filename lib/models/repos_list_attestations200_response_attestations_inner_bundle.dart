// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle_dsse_envelope.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle_verification_material.dart';
import 'package:meta/meta.dart';

/// {@template repos_list_attestations200_response_attestations_inner_bundle}
/// The attestation's Sigstore Bundle.
/// Refer to the [Sigstore Bundle
/// Specification](https://github.com/sigstore/protobuf-specs/blob/main/protos/sigstore_bundle.proto)
/// for more information.
/// {@endtemplate}
@immutable
class ReposListAttestations200ResponseAttestationsInnerBundle {
  /// {@macro repos_list_attestations200_response_attestations_inner_bundle}
  const ReposListAttestations200ResponseAttestationsInnerBundle({
    this.mediaType,
    this.verificationMaterial,
    this.dsseEnvelope,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposListAttestations200ResponseAttestationsInnerBundle].
  factory ReposListAttestations200ResponseAttestationsInnerBundle.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposListAttestations200ResponseAttestationsInnerBundle',
      json,
      () => ReposListAttestations200ResponseAttestationsInnerBundle(
        mediaType: json['mediaType'] as String?,
        verificationMaterial:
            const ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial(),
        dsseEnvelope:
            const ReposListAttestations200ResponseAttestationsInnerBundleDsseEnvelope(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListAttestations200ResponseAttestationsInnerBundle? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposListAttestations200ResponseAttestationsInnerBundle.fromJson(
      json,
    );
  }

  final String? mediaType;
  final ReposListAttestations200ResponseAttestationsInnerBundleVerificationMaterial?
  verificationMaterial;
  final ReposListAttestations200ResponseAttestationsInnerBundleDsseEnvelope?
  dsseEnvelope;

  /// Converts a [ReposListAttestations200ResponseAttestationsInnerBundle]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'mediaType': mediaType,
      'verificationMaterial': const <String, dynamic>{},
      'dsseEnvelope': const <String, dynamic>{},
    };
  }

  @override
  int get hashCode => Object.hashAll([
    mediaType,
    verificationMaterial,
    dsseEnvelope,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposListAttestations200ResponseAttestationsInnerBundle &&
        mediaType == other.mediaType &&
        verificationMaterial == other.verificationMaterial &&
        dsseEnvelope == other.dsseEnvelope;
  }
}
