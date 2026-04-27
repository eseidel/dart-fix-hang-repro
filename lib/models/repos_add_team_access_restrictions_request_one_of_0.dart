// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{teams: [my-team]}`
@immutable
class ReposAddTeamAccessRestrictionsRequestOneOf0 {
  ReposAddTeamAccessRestrictionsRequestOneOf0({
    required this.teams,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposAddTeamAccessRestrictionsRequestOneOf0].
  factory ReposAddTeamAccessRestrictionsRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposAddTeamAccessRestrictionsRequestOneOf0',
      json,
      () => ReposAddTeamAccessRestrictionsRequestOneOf0(
        teams: (json['teams'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposAddTeamAccessRestrictionsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposAddTeamAccessRestrictionsRequestOneOf0.fromJson(json);
  }

  /// The slug values for teams
  final List<String> teams;

  /// Converts a [ReposAddTeamAccessRestrictionsRequestOneOf0]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'teams': teams,
    };
  }

  @override
  int get hashCode => listHash(teams).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposAddTeamAccessRestrictionsRequestOneOf0 &&
        listsEqual(this.teams, other.teams);
  }
}
