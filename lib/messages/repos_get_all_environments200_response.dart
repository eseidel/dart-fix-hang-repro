import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/deployment_branch_policy_settings.dart';
import 'package:github_out/models/deployment_reviewer_type.dart';
import 'package:github_out/models/environment.dart';
import 'package:github_out/models/environment_protection_rules_inner.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_0.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1_reviewers_inner.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1_reviewers_inner_reviewer.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_2.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:github_out/models/wait_timer.dart';
import 'package:meta/meta.dart';

@immutable
class ReposGetAllEnvironments200Response {
  ReposGetAllEnvironments200Response({
    this.totalCount,
    this.environments,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposGetAllEnvironments200Response].
  factory ReposGetAllEnvironments200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposGetAllEnvironments200Response',
      json,
      () => ReposGetAllEnvironments200Response(
        totalCount: (json['total_count'] as int?),
        environments: (json['environments'] as List?)
            ?.map<Environment>(
              (e) => Environment.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposGetAllEnvironments200Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposGetAllEnvironments200Response.fromJson(json);
  }

  /// The number of environments in this repository
  /// example: `5`
  final int? totalCount;
  final List<Environment>? environments;

  /// Converts a [ReposGetAllEnvironments200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'environments': environments?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalCount,
    listHash(environments),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposGetAllEnvironments200Response &&
        this.totalCount == other.totalCount &&
        listsEqual(this.environments, other.environments);
  }
}
