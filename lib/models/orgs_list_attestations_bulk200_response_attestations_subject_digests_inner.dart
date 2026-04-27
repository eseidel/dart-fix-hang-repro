import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle.dart';
import 'package:github_out/models/orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle_dsse_envelope.dart';
import 'package:github_out/models/orgs_list_attestations_bulk200_response_attestations_subject_digests_inner_bundle_verification_material.dart';
import 'package:meta/meta.dart';

@immutable
class OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner {
  OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner({
    this.bundle,
    this.repositoryId,
    this.bundleUrl,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner].
  factory OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner',
      json,
      () => OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner(
        bundle:
            OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle.maybeFromJson(
              json['bundle'] as Map<String, dynamic>?,
            ),
        repositoryId: (json['repository_id'] as int?),
        bundleUrl: json['bundle_url'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner.fromJson(
      json,
    );
  }

  /// The bundle of the attestation.
  final OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInnerBundle?
  bundle;
  final int? repositoryId;
  final String? bundleUrl;

  /// Converts an [OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'bundle': bundle?.toJson(),
      'repository_id': repositoryId,
      'bundle_url': bundleUrl,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    bundle,
    repositoryId,
    bundleUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is OrgsListAttestationsBulk200ResponseAttestationsSubjectDigestsInner &&
        this.bundle == other.bundle &&
        this.repositoryId == other.repositoryId &&
        this.bundleUrl == other.bundleUrl;
  }
}
