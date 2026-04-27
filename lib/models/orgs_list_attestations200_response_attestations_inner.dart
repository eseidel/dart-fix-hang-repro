import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/orgs_list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github_out/models/orgs_list_attestations200_response_attestations_inner_bundle_dsse_envelope.dart';
import 'package:github_out/models/orgs_list_attestations200_response_attestations_inner_bundle_verification_material.dart';
import 'package:meta/meta.dart';

@immutable
class OrgsListAttestations200ResponseAttestationsInner {
  OrgsListAttestations200ResponseAttestationsInner({
    this.bundle,
    this.repositoryId,
    this.bundleUrl,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [OrgsListAttestations200ResponseAttestationsInner].
  factory OrgsListAttestations200ResponseAttestationsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'OrgsListAttestations200ResponseAttestationsInner',
      json,
      () => OrgsListAttestations200ResponseAttestationsInner(
        bundle:
            OrgsListAttestations200ResponseAttestationsInnerBundle.maybeFromJson(
              json['bundle'] as Map<String, dynamic>?,
            ),
        repositoryId: (json['repository_id'] as int?),
        bundleUrl: json['bundle_url'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestations200ResponseAttestationsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestations200ResponseAttestationsInner.fromJson(json);
  }

  /// The attestation's Sigstore Bundle.
  /// Refer to the [Sigstore Bundle
  /// Specification](https://github.com/sigstore/protobuf-specs/blob/main/protos/sigstore_bundle.proto)
  /// for more information.
  final OrgsListAttestations200ResponseAttestationsInnerBundle? bundle;
  final int? repositoryId;
  final String? bundleUrl;

  /// Converts an [OrgsListAttestations200ResponseAttestationsInner]
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
    return other is OrgsListAttestations200ResponseAttestationsInner &&
        this.bundle == other.bundle &&
        this.repositoryId == other.repositoryId &&
        this.bundleUrl == other.bundleUrl;
  }
}
