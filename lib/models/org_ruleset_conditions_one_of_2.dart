// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_ruleset_conditions_ref_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_target_repository_property.dart';
import 'package:meta/meta.dart';

/// {@template org_ruleset_conditions_one_of_2}
/// repository_property_and_ref_name
/// Conditions to target repositories by property and refs by name
/// {@endtemplate}
@immutable
class OrgRulesetConditionsOneOf2 {
  /// {@macro org_ruleset_conditions_one_of_2}
  const OrgRulesetConditionsOneOf2({
    required this.repositoryProperty,
    this.refName,
  });

  /// Converts a `Map<String, dynamic>` to an [OrgRulesetConditionsOneOf2].
  factory OrgRulesetConditionsOneOf2.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrgRulesetConditionsOneOf2',
      json,
      () => OrgRulesetConditionsOneOf2(
        refName: RepositoryRulesetConditionsRefName.maybeFromJson(
          json['ref_name'] as Map<String, dynamic>?,
        ),
        repositoryProperty:
            RepositoryRulesetConditionsRepositoryPropertyTargetRepositoryProperty.fromJson(
              json['repository_property'] as Map<String, dynamic>,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgRulesetConditionsOneOf2? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgRulesetConditionsOneOf2.fromJson(json);
  }

  final RepositoryRulesetConditionsRefName? refName;
  final RepositoryRulesetConditionsRepositoryPropertyTargetRepositoryProperty
  repositoryProperty;

  /// Converts an [OrgRulesetConditionsOneOf2] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'ref_name': refName?.toJson(),
      'repository_property': repositoryProperty.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    refName,
    repositoryProperty,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgRulesetConditionsOneOf2 &&
        refName == other.refName &&
        repositoryProperty == other.repositoryProperty;
  }
}
