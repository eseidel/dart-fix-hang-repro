import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_create_attestation_request_bundle_dsse_envelope.dart';
import 'package:github_out/models/repos_create_attestation_request_bundle_verification_material.dart';
import 'package:meta/meta.dart';

/// {@template repos_create_attestation_request_bundle}
/// The attestation's Sigstore Bundle.
/// Refer to the [Sigstore Bundle
/// Specification](https://github.com/sigstore/protobuf-specs/blob/main/protos/sigstore_bundle.proto)
/// for more information.
/// {@endtemplate}
@immutable
class ReposCreateAttestationRequestBundle {
  /// {@macro repos_create_attestation_request_bundle}
  ReposCreateAttestationRequestBundle({
    this.mediaType,
    this.verificationMaterial,
    this.dsseEnvelope,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposCreateAttestationRequestBundle].
  factory ReposCreateAttestationRequestBundle.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposCreateAttestationRequestBundle',
      json,
      () => ReposCreateAttestationRequestBundle(
        mediaType: json['mediaType'] as String?,
        verificationMaterial:
            const ReposCreateAttestationRequestBundleVerificationMaterial(),
        dsseEnvelope: const ReposCreateAttestationRequestBundleDsseEnvelope(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateAttestationRequestBundle? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreateAttestationRequestBundle.fromJson(json);
  }

  final String? mediaType;
  final ReposCreateAttestationRequestBundleVerificationMaterial?
  verificationMaterial;
  final ReposCreateAttestationRequestBundleDsseEnvelope? dsseEnvelope;

  /// Converts a [ReposCreateAttestationRequestBundle]
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
    return other is ReposCreateAttestationRequestBundle &&
        this.mediaType == other.mediaType &&
        this.verificationMaterial == other.verificationMaterial &&
        this.dsseEnvelope == other.dsseEnvelope;
  }
}
