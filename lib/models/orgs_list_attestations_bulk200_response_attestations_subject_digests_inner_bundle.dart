import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle_dsse_envelope.dart';
import 'package:github_out/models/orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle_verification_material.dart';
import 'package:meta/meta.dart';

/// {@template orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle}
/// The bundle of the attestation.
/// {@endtemplate}
@immutable
class OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle {
  /// {@macro orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle}
  OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle({
    this.mediaType,
    this.verificationMaterial,
    this.dsseEnvelope,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle].
  factory OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle',
      json,
      () => OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle(
        mediaType: json['mediaType'] as String?,
        verificationMaterial:
            const OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial(),
        dsseEnvelope:
            const OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle.fromJson(
      json,
    );
  }

  final String? mediaType;
  final OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleVerificationMaterial?
  verificationMaterial;
  final OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundleDsseEnvelope?
  dsseEnvelope;

  /// Converts an [OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle]
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
    return other
            is OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle &&
        this.mediaType == other.mediaType &&
        this.verificationMaterial == other.verificationMaterial &&
        this.dsseEnvelope == other.dsseEnvelope;
  }
}
