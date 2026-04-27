import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template actions_public_key}
/// ActionsPublicKey
/// The public key used for setting Actions Secrets.
/// {@endtemplate}
@immutable
class ActionsPublicKey {
  /// {@macro actions_public_key}
  ActionsPublicKey({
    required this.keyId,
    required this.key,
    this.id,
    this.url,
    this.title,
    this.createdAt,
  });

  /// Converts a `Map<String, dynamic>` to an [ActionsPublicKey].
  factory ActionsPublicKey.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ActionsPublicKey',
      json,
      () => ActionsPublicKey(
        keyId: json['key_id'] as String,
        key: json['key'] as String,
        id: (json['id'] as int?),
        url: json['url'] as String?,
        title: json['title'] as String?,
        createdAt: json['created_at'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsPublicKey? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ActionsPublicKey.fromJson(json);
  }

  /// The identifier for the key.
  /// example: `'1234567'`
  final String keyId;

  /// The Base64 encoded public key.
  /// example: `'hBT5WZEj8ZoOv6TYJsfWq7MxTEQopZO5/IT3ZCVQPzs='`
  final String key;

  /// example: `2`
  final int? id;

  /// example: `'https://api.github.com/user/keys/2'`
  final String? url;

  /// example: `'ssh-rsa AAAAB3NzaC1yc2EAAA'`
  final String? title;

  /// example: `'2011-01-26T19:01:12Z'`
  final String? createdAt;

  /// Converts an [ActionsPublicKey] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'key_id': keyId,
      'key': key,
      'id': id,
      'url': url,
      'title': title,
      'created_at': createdAt,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    keyId,
    key,
    id,
    url,
    title,
    createdAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ActionsPublicKey &&
        this.keyId == other.keyId &&
        this.key == other.key &&
        this.id == other.id &&
        this.url == other.url &&
        this.title == other.title &&
        this.createdAt == other.createdAt;
  }
}
