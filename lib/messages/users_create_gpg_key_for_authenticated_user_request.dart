import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class UsersCreateGpgKeyForAuthenticatedUserRequest {
  UsersCreateGpgKeyForAuthenticatedUserRequest({
    this.name,
    required this.armoredPublicKey,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [UsersCreateGpgKeyForAuthenticatedUserRequest].
  factory UsersCreateGpgKeyForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'UsersCreateGpgKeyForAuthenticatedUserRequest',
      json,
      () => UsersCreateGpgKeyForAuthenticatedUserRequest(
        name: json['name'] as String?,
        armoredPublicKey: json['armored_public_key'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersCreateGpgKeyForAuthenticatedUserRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersCreateGpgKeyForAuthenticatedUserRequest.fromJson(json);
  }

  /// A descriptive name for the new key.
  final String? name;

  /// A GPG key in ASCII-armored format.
  final String armoredPublicKey;

  /// Converts a [UsersCreateGpgKeyForAuthenticatedUserRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'armored_public_key': armoredPublicKey,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    armoredPublicKey,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersCreateGpgKeyForAuthenticatedUserRequest &&
        this.name == other.name &&
        this.armoredPublicKey == other.armoredPublicKey;
  }
}
