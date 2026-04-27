import 'package:github_out/models/private_user.dart';
import 'package:github_out/models/public_user.dart';
import 'package:meta/meta.dart';

sealed class UsersGetById200Response {
  const UsersGetById200Response();

  factory UsersGetById200Response.fromJson(Map<String, dynamic> json) {
    final discriminator = json['user_view_type'];
    return switch (discriminator) {
      'public' => UsersGetById200ResponsePublicUser(PublicUser.fromJson(json)),
      'private' => UsersGetById200ResponsePrivateUser(
        PrivateUser.fromJson(json),
      ),
      _ => throw FormatException(
        "Unknown user_view_type '$discriminator' for UsersGetById200Response",
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersGetById200Response? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return UsersGetById200Response.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class UsersGetById200ResponsePrivateUser extends UsersGetById200Response {
  const UsersGetById200ResponsePrivateUser(this.value);

  final PrivateUser value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersGetById200ResponsePrivateUser && value == other.value;
  }
}

@immutable
final class UsersGetById200ResponsePublicUser extends UsersGetById200Response {
  const UsersGetById200ResponsePublicUser(this.value);

  final PublicUser value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersGetById200ResponsePublicUser && value == other.value;
  }
}
