import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_create_attestation_request_bundle.dart';
import 'package:github_out/models/repos_create_attestation_request_bundle_dsse_envelope.dart';
import 'package:github_out/models/repos_create_attestation_request_bundle_verification_material.dart';
import 'package:meta/meta.dart';

@immutable
class ReposCreateAttestationRequest {
  ReposCreateAttestationRequest({
    required this.bundle,
  });

  /// Converts a `Map<String, dynamic>` to a [ReposCreateAttestationRequest].
  factory ReposCreateAttestationRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReposCreateAttestationRequest',
      json,
      () => ReposCreateAttestationRequest(
        bundle: ReposCreateAttestationRequestBundle.fromJson(
          json['bundle'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateAttestationRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreateAttestationRequest.fromJson(json);
  }

  /// The attestation's Sigstore Bundle.
  /// Refer to the [Sigstore Bundle
  /// Specification](https://github.com/sigstore/protobuf-specs/blob/main/protos/sigstore_bundle.proto)
  /// for more information.
  final ReposCreateAttestationRequestBundle bundle;

  /// Converts a [ReposCreateAttestationRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'bundle': bundle.toJson(),
    };
  }

  @override
  int get hashCode => bundle.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposCreateAttestationRequest &&
        this.bundle == other.bundle;
  }
}
