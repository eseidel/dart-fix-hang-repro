import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class HookDeliveryRequest {
  HookDeliveryRequest({
    required this.headers,
    required this.payload,
  });

  /// Converts a `Map<String, dynamic>` to a [HookDeliveryRequest].
  factory HookDeliveryRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'HookDeliveryRequest',
      json,
      () => HookDeliveryRequest(
        headers: (checkedKey(json, 'headers') as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(key, value),
        ),
        payload: (checkedKey(json, 'payload') as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(key, value),
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static HookDeliveryRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return HookDeliveryRequest.fromJson(json);
  }

  /// The request headers sent with the webhook delivery.
  final Map<String, dynamic>? headers;

  /// The webhook payload.
  final Map<String, dynamic>? payload;

  /// Converts a [HookDeliveryRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'headers': headers,
      'payload': payload,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    mapHash(headers),
    mapHash(payload),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HookDeliveryRequest &&
        mapsEqual(this.headers, other.headers) &&
        mapsEqual(this.payload, other.payload);
  }
}
