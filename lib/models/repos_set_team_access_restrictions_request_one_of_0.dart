// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{teams: [justice-league]}`
@immutable
class ReposSetTeamAccessRestrictionsRequestOneOf0 {
  ReposSetTeamAccessRestrictionsRequestOneOf0({
    required this.teams,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposSetTeamAccessRestrictionsRequestOneOf0].
  factory ReposSetTeamAccessRestrictionsRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposSetTeamAccessRestrictionsRequestOneOf0',
      json,
      () => ReposSetTeamAccessRestrictionsRequestOneOf0(
        teams: (json['teams'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposSetTeamAccessRestrictionsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposSetTeamAccessRestrictionsRequestOneOf0.fromJson(json);
  }

  /// The slug values for teams
  final List<String> teams;

  /// Converts a [ReposSetTeamAccessRestrictionsRequestOneOf0]
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
    return other is ReposSetTeamAccessRestrictionsRequestOneOf0 &&
        listsEqual(this.teams, other.teams);
  }
}
