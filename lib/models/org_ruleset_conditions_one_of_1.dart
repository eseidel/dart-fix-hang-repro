// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_ruleset_conditions_ref_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_id_target_repository_id.dart';
import 'package:meta/meta.dart';

/// {@template org_ruleset_conditions_one_of_1}
/// repository_id_and_ref_name
/// Conditions to target repositories by id and refs by name
/// {@endtemplate}
@immutable
class OrgRulesetConditionsOneOf1 {
  /// {@macro org_ruleset_conditions_one_of_1}
  const OrgRulesetConditionsOneOf1({
    required this.repositoryId,
    this.refName,
  });

  /// Converts a `Map<String, dynamic>` to an [OrgRulesetConditionsOneOf1].
  factory OrgRulesetConditionsOneOf1.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrgRulesetConditionsOneOf1',
      json,
      () => OrgRulesetConditionsOneOf1(
        refName: RepositoryRulesetConditionsRefName.maybeFromJson(
          json['ref_name'] as Map<String, dynamic>?,
        ),
        repositoryId:
            RepositoryRulesetConditionsRepositoryIdTargetRepositoryId.fromJson(
              json['repository_id'] as Map<String, dynamic>,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgRulesetConditionsOneOf1? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgRulesetConditionsOneOf1.fromJson(json);
  }

  final RepositoryRulesetConditionsRefName? refName;
  final RepositoryRulesetConditionsRepositoryIdTargetRepositoryId repositoryId;

  /// Converts an [OrgRulesetConditionsOneOf1] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'ref_name': refName?.toJson(),
      'repository_id': repositoryId.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    refName,
    repositoryId,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgRulesetConditionsOneOf1 &&
        refName == other.refName &&
        repositoryId == other.repositoryId;
  }
}
