import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle_dsse_envelope.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner_bundle_verification_material.dart';
import 'package:meta/meta.dart';

@immutable
class ReposListAttestations200Response {
  ReposListAttestations200Response({
    this.attestations,
  });

  /// Converts a `Map<String, dynamic>` to a [ReposListAttestations200Response].
  factory ReposListAttestations200Response.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReposListAttestations200Response',
      json,
      () => ReposListAttestations200Response(
        attestations: (json['attestations'] as List?)
            ?.map<ReposListAttestations200ResponseAttestationsInner>(
              (e) => ReposListAttestations200ResponseAttestationsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListAttestations200Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposListAttestations200Response.fromJson(json);
  }

  final List<ReposListAttestations200ResponseAttestationsInner>? attestations;

  /// Converts a [ReposListAttestations200Response] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'attestations': attestations?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => listHash(attestations).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposListAttestations200Response &&
        listsEqual(this.attestations, other.attestations);
  }
}
