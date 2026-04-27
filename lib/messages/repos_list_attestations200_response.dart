// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_list_attestations200_response_attestations_inner.dart';
import 'package:meta/meta.dart';

@immutable
class ReposListAttestations200Response {
  const ReposListAttestations200Response({
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
        listsEqual(attestations, other.attestations);
  }
}
