// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/repos_set_team_access_restrictions_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class ReposSetTeamAccessRestrictionsRequest {
  const ReposSetTeamAccessRestrictionsRequest();

  factory ReposSetTeamAccessRestrictionsRequest.fromJson(dynamic json) {
    return switch (json) {
      final Map<String, dynamic> v =>
        ReposSetTeamAccessRestrictionsRequestReposSetTeamAccessRestrictionsRequestOneOf0(
          ReposSetTeamAccessRestrictionsRequestOneOf0.fromJson(v),
        ),
      final List<dynamic> v => ReposSetTeamAccessRestrictionsRequestList(
        v.cast<String>(),
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposSetTeamAccessRestrictionsRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposSetTeamAccessRestrictionsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposSetTeamAccessRestrictionsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposSetTeamAccessRestrictionsRequestReposSetTeamAccessRestrictionsRequestOneOf0
    extends ReposSetTeamAccessRestrictionsRequest {
  const ReposSetTeamAccessRestrictionsRequestReposSetTeamAccessRestrictionsRequestOneOf0(
    this.value,
  );

  final ReposSetTeamAccessRestrictionsRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposSetTeamAccessRestrictionsRequestReposSetTeamAccessRestrictionsRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposSetTeamAccessRestrictionsRequestList
    extends ReposSetTeamAccessRestrictionsRequest {
  const ReposSetTeamAccessRestrictionsRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposSetTeamAccessRestrictionsRequestList &&
        value == other.value;
  }
}
