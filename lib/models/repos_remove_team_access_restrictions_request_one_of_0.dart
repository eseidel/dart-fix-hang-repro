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
class ReposRemoveTeamAccessRestrictionsRequestOneOf0 {
  const ReposRemoveTeamAccessRestrictionsRequestOneOf0({
    required this.teams,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposRemoveTeamAccessRestrictionsRequestOneOf0].
  factory ReposRemoveTeamAccessRestrictionsRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposRemoveTeamAccessRestrictionsRequestOneOf0',
      json,
      () => ReposRemoveTeamAccessRestrictionsRequestOneOf0(
        teams: (json['teams'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposRemoveTeamAccessRestrictionsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposRemoveTeamAccessRestrictionsRequestOneOf0.fromJson(json);
  }

  /// The slug values for teams
  final List<String> teams;

  /// Converts a [ReposRemoveTeamAccessRestrictionsRequestOneOf0]
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
    return other is ReposRemoveTeamAccessRestrictionsRequestOneOf0 &&
        listsEqual(teams, other.teams);
  }
}
