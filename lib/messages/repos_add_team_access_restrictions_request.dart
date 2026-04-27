import 'package:github_out/models/repos_add_team_access_restrictions_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class ReposAddTeamAccessRestrictionsRequest {
  const ReposAddTeamAccessRestrictionsRequest();

  factory ReposAddTeamAccessRestrictionsRequest.fromJson(dynamic json) {
    return switch (json) {
      Map<String, dynamic> v =>
        ReposAddTeamAccessRestrictionsRequestReposAddTeamAccessRestrictionsRequestOneOf0(
          ReposAddTeamAccessRestrictionsRequestOneOf0.fromJson(v),
        ),
      List<dynamic> v => ReposAddTeamAccessRestrictionsRequestList(
        v.cast<String>(),
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposAddTeamAccessRestrictionsRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposAddTeamAccessRestrictionsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposAddTeamAccessRestrictionsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposAddTeamAccessRestrictionsRequestReposAddTeamAccessRestrictionsRequestOneOf0
    extends ReposAddTeamAccessRestrictionsRequest {
  const ReposAddTeamAccessRestrictionsRequestReposAddTeamAccessRestrictionsRequestOneOf0(
    this.value,
  );

  final ReposAddTeamAccessRestrictionsRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposAddTeamAccessRestrictionsRequestReposAddTeamAccessRestrictionsRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposAddTeamAccessRestrictionsRequestList
    extends ReposAddTeamAccessRestrictionsRequest {
  const ReposAddTeamAccessRestrictionsRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposAddTeamAccessRestrictionsRequestList &&
        value == other.value;
  }
}
