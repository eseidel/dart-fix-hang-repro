import 'package:github_out/messages/codespaces_create_for_authenticated_user_request_one_of_1_pull_request.dart';
import 'package:github_out/models/codespaces_create_for_authenticated_user_request_one_of_0.dart';
import 'package:github_out/models/codespaces_create_for_authenticated_user_request_one_of_0_geo.dart';
import 'package:github_out/models/codespaces_create_for_authenticated_user_request_one_of_1.dart';
import 'package:github_out/models/codespaces_create_for_authenticated_user_request_one_of_1_geo.dart';
import 'package:meta/meta.dart';

sealed class CodespacesCreateForAuthenticatedUserRequest {
  const CodespacesCreateForAuthenticatedUserRequest();

  factory CodespacesCreateForAuthenticatedUserRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    if (json.containsKey('repository_id')) {
      return CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf0(
        CodespacesCreateForAuthenticatedUserRequestOneOf0.fromJson(json),
      );
    }
    if (json.containsKey('pull_request')) {
      return CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf1(
        CodespacesCreateForAuthenticatedUserRequestOneOf1.fromJson(json),
      );
    }
    throw FormatException(
      'No variant of CodespacesCreateForAuthenticatedUserRequest matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesCreateForAuthenticatedUserRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesCreateForAuthenticatedUserRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf0
    extends CodespacesCreateForAuthenticatedUserRequest {
  const CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf0(
    this.value,
  );

  final CodespacesCreateForAuthenticatedUserRequestOneOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf1
    extends CodespacesCreateForAuthenticatedUserRequest {
  const CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf1(
    this.value,
  );

  final CodespacesCreateForAuthenticatedUserRequestOneOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is CodespacesCreateForAuthenticatedUserRequestCodespacesCreateForAuthenticatedUserRequestOneOf1 &&
        value == other.value;
  }
}
