// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/users_delete_email_for_authenticated_user_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class UsersDeleteEmailForAuthenticatedUserRequest {
  const UsersDeleteEmailForAuthenticatedUserRequest();

  factory UsersDeleteEmailForAuthenticatedUserRequest.fromJson(dynamic json) {
    return switch (json) {
      final Map<String, dynamic> v =>
        UsersDeleteEmailForAuthenticatedUserRequestUsersDeleteEmailForAuthenticatedUserRequestOneOf0(
          UsersDeleteEmailForAuthenticatedUserRequestOneOf0.fromJson(v),
        ),
      final List<dynamic> v => UsersDeleteEmailForAuthenticatedUserRequestList(
        v.cast<String>(),
      ),
      final String v => UsersDeleteEmailForAuthenticatedUserRequestString(v),
      _ => throw FormatException(
        'Unsupported shape for UsersDeleteEmailForAuthenticatedUserRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersDeleteEmailForAuthenticatedUserRequest? maybeFromJson(
    dynamic json,
  ) {
    if (json == null) {
      return null;
    }
    return UsersDeleteEmailForAuthenticatedUserRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class UsersDeleteEmailForAuthenticatedUserRequestUsersDeleteEmailForAuthenticatedUserRequestOneOf0
    extends UsersDeleteEmailForAuthenticatedUserRequest {
  const UsersDeleteEmailForAuthenticatedUserRequestUsersDeleteEmailForAuthenticatedUserRequestOneOf0(
    this.value,
  );

  final UsersDeleteEmailForAuthenticatedUserRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is UsersDeleteEmailForAuthenticatedUserRequestUsersDeleteEmailForAuthenticatedUserRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class UsersDeleteEmailForAuthenticatedUserRequestList
    extends UsersDeleteEmailForAuthenticatedUserRequest {
  const UsersDeleteEmailForAuthenticatedUserRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersDeleteEmailForAuthenticatedUserRequestList &&
        value == other.value;
  }
}

@immutable
final class UsersDeleteEmailForAuthenticatedUserRequestString
    extends UsersDeleteEmailForAuthenticatedUserRequest {
  const UsersDeleteEmailForAuthenticatedUserRequestString(this.value);

  final String value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersDeleteEmailForAuthenticatedUserRequestString &&
        value == other.value;
  }
}
