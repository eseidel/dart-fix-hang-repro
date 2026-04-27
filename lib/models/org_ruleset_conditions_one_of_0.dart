// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_ruleset_conditions_ref_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_name_target_repository_name.dart';
import 'package:meta/meta.dart';

/// {@template org_ruleset_conditions_one_of_0}
/// repository_name_and_ref_name
/// Conditions to target repositories by name and refs by name
/// {@endtemplate}
@immutable
class OrgRulesetConditionsOneOf0 {
  /// {@macro org_ruleset_conditions_one_of_0}
  const OrgRulesetConditionsOneOf0({
    required this.repositoryName,
    this.refName,
  });

  /// Converts a `Map<String, dynamic>` to an [OrgRulesetConditionsOneOf0].
  factory OrgRulesetConditionsOneOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrgRulesetConditionsOneOf0',
      json,
      () => OrgRulesetConditionsOneOf0(
        refName: RepositoryRulesetConditionsRefName.maybeFromJson(
          json['ref_name'] as Map<String, dynamic>?,
        ),
        repositoryName:
            RepositoryRulesetConditionsRepositoryNameTargetRepositoryName.fromJson(
              json['repository_name'] as Map<String, dynamic>,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgRulesetConditionsOneOf0? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgRulesetConditionsOneOf0.fromJson(json);
  }

  final RepositoryRulesetConditionsRefName? refName;
  final RepositoryRulesetConditionsRepositoryNameTargetRepositoryName
  repositoryName;

  /// Converts an [OrgRulesetConditionsOneOf0] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'ref_name': refName?.toJson(),
      'repository_name': repositoryName.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    refName,
    repositoryName,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgRulesetConditionsOneOf0 &&
        refName == other.refName &&
        repositoryName == other.repositoryName;
  }
}
