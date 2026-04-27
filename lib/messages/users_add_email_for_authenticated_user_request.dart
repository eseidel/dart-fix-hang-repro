// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/users_add_email_for_authenticated_user_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class UsersAddEmailForAuthenticatedUserRequest {
  const UsersAddEmailForAuthenticatedUserRequest();

  factory UsersAddEmailForAuthenticatedUserRequest.fromJson(dynamic json) {
    return switch (json) {
      final Map<String, dynamic> v =>
        UsersAddEmailForAuthenticatedUserRequestUsersAddEmailForAuthenticatedUserRequestOneOf0(
          UsersAddEmailForAuthenticatedUserRequestOneOf0.fromJson(v),
        ),
      final List<dynamic> v => UsersAddEmailForAuthenticatedUserRequestList(
        v.cast<String>(),
      ),
      final String v => UsersAddEmailForAuthenticatedUserRequestString(v),
      _ => throw FormatException(
        'Unsupported shape for UsersAddEmailForAuthenticatedUserRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersAddEmailForAuthenticatedUserRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return UsersAddEmailForAuthenticatedUserRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class UsersAddEmailForAuthenticatedUserRequestUsersAddEmailForAuthenticatedUserRequestOneOf0
    extends UsersAddEmailForAuthenticatedUserRequest {
  const UsersAddEmailForAuthenticatedUserRequestUsersAddEmailForAuthenticatedUserRequestOneOf0(
    this.value,
  );

  final UsersAddEmailForAuthenticatedUserRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is UsersAddEmailForAuthenticatedUserRequestUsersAddEmailForAuthenticatedUserRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class UsersAddEmailForAuthenticatedUserRequestList
    extends UsersAddEmailForAuthenticatedUserRequest {
  const UsersAddEmailForAuthenticatedUserRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersAddEmailForAuthenticatedUserRequestList &&
        value == other.value;
  }
}

@immutable
final class UsersAddEmailForAuthenticatedUserRequestString
    extends UsersAddEmailForAuthenticatedUserRequest {
  const UsersAddEmailForAuthenticatedUserRequestString(this.value);

  final String value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UsersAddEmailForAuthenticatedUserRequestString &&
        value == other.value;
  }
}
