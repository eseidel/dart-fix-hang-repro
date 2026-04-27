// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:meta/meta.dart';

@immutable
class OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope {
  const OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope();

  /// Converts a `Map<String, dynamic>` to an [OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope].
  factory OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope.fromJson(
    Map<String, dynamic> _,
  ) {
    return const OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgsListAttestations200ResponseAttestationsInnerBundleDsseEnvelope.fromJson(
      json,
    );
  }

  Map<String, dynamic> toJson() => const {};
}
