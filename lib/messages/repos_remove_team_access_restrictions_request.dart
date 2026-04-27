// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/repos_remove_team_access_restrictions_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class ReposRemoveTeamAccessRestrictionsRequest {
  const ReposRemoveTeamAccessRestrictionsRequest();

  factory ReposRemoveTeamAccessRestrictionsRequest.fromJson(dynamic json) {
    return switch (json) {
      final Map<String, dynamic> v =>
        ReposRemoveTeamAccessRestrictionsRequestReposRemoveTeamAccessRestrictionsRequestOneOf0(
          ReposRemoveTeamAccessRestrictionsRequestOneOf0.fromJson(v),
        ),
      final List<dynamic> v => ReposRemoveTeamAccessRestrictionsRequestList(
        v.cast<String>(),
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposRemoveTeamAccessRestrictionsRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposRemoveTeamAccessRestrictionsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposRemoveTeamAccessRestrictionsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposRemoveTeamAccessRestrictionsRequestReposRemoveTeamAccessRestrictionsRequestOneOf0
    extends ReposRemoveTeamAccessRestrictionsRequest {
  const ReposRemoveTeamAccessRestrictionsRequestReposRemoveTeamAccessRestrictionsRequestOneOf0(
    this.value,
  );

  final ReposRemoveTeamAccessRestrictionsRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposRemoveTeamAccessRestrictionsRequestReposRemoveTeamAccessRestrictionsRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposRemoveTeamAccessRestrictionsRequestList
    extends ReposRemoveTeamAccessRestrictionsRequest {
  const ReposRemoveTeamAccessRestrictionsRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposRemoveTeamAccessRestrictionsRequestList &&
        value == other.value;
  }
}
