import 'package:github_out/models/enterprise_team.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:meta/meta.dart';

/// The team through which the assignee is granted access to GitHub Copilot, if
/// applicable.
sealed class CopilotSeatDetailsAssigningTeam {
  const CopilotSeatDetailsAssigningTeam();

  factory CopilotSeatDetailsAssigningTeam.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('node_id')) {
      return CopilotSeatDetailsAssigningTeamTeam(Team.fromJson(json));
    }
    if (json.containsKey('created_at')) {
      return CopilotSeatDetailsAssigningTeamEnterpriseTeam(
        EnterpriseTeam.fromJson(json),
      );
    }
    throw FormatException(
      'No variant of CopilotSeatDetailsAssigningTeam matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotSeatDetailsAssigningTeam? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CopilotSeatDetailsAssigningTeam.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class CopilotSeatDetailsAssigningTeamTeam
    extends CopilotSeatDetailsAssigningTeam {
  const CopilotSeatDetailsAssigningTeamTeam(this.value);

  final Team value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotSeatDetailsAssigningTeamTeam && value == other.value;
  }
}

@immutable
final class CopilotSeatDetailsAssigningTeamEnterpriseTeam
    extends CopilotSeatDetailsAssigningTeam {
  const CopilotSeatDetailsAssigningTeamEnterpriseTeam(this.value);

  final EnterpriseTeam value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotSeatDetailsAssigningTeamEnterpriseTeam &&
        value == other.value;
  }
}
