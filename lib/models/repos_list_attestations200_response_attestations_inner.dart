import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle_dsse_envelope.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle_verification_material.dart';
import 'package:meta/meta.dart';

@immutable
class ReposListAttestations200ResponseAttestationsInner {
  ReposListAttestations200ResponseAttestationsInner({
    this.bundle,
    this.repositoryId,
    this.bundleUrl,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposListAttestations200ResponseAttestationsInner].
  factory ReposListAttestations200ResponseAttestationsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposListAttestations200ResponseAttestationsInner',
      json,
      () => ReposListAttestations200ResponseAttestationsInner(
        bundle:
            ReposListAttestations200ResponseAttestationsInnerBundle.maybeFromJson(
              json['bundle'] as Map<String, dynamic>?,
            ),
        repositoryId: (json['repository_id'] as int?),
        bundleUrl: json['bundle_url'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListAttestations200ResponseAttestationsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposListAttestations200ResponseAttestationsInner.fromJson(json);
  }

  /// The attestation's Sigstore Bundle.
  /// Refer to the [Sigstore Bundle
  /// Specification](https://github.com/sigstore/protobuf-specs/blob/main/protos/sigstore_bundle.proto)
  /// for more information.
  final ReposListAttestations200ResponseAttestationsInnerBundle? bundle;
  final int? repositoryId;
  final String? bundleUrl;

  /// Converts a [ReposListAttestations200ResponseAttestationsInner]
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
    return other is ReposListAttestations200ResponseAttestationsInner &&
        this.bundle == other.bundle &&
        this.repositoryId == other.repositoryId &&
        this.bundleUrl == other.bundleUrl;
  }
}
