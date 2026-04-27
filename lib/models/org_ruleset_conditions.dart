// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/org_ruleset_conditions_one_of_0.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_1.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_2.dart';
import 'package:meta/meta.dart';

/// Organization ruleset conditions
/// Conditions for an organization ruleset.
/// The branch and tag rulesets conditions object should contain both
/// `repository_name` and `ref_name` properties, or both `repository_id` and
/// `ref_name` properties, or both `repository_property` and `ref_name`
/// properties.
/// The push rulesets conditions object does not require the `ref_name`
/// property.
/// For repository policy rulesets, the conditions object should only contain
/// the `repository_name`, the `repository_id`, or the `repository_property`.
sealed class OrgRulesetConditions {
  const OrgRulesetConditions();

  factory OrgRulesetConditions.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('repository_name')) {
      return OrgRulesetConditionsOrgRulesetConditionsOneOf0(
        OrgRulesetConditionsOneOf0.fromJson(json),
      );
    }
    if (json.containsKey('repository_id')) {
      return OrgRulesetConditionsOrgRulesetConditionsOneOf1(
        OrgRulesetConditionsOneOf1.fromJson(json),
      );
    }
    if (json.containsKey('repository_property')) {
      return OrgRulesetConditionsOrgRulesetConditionsOneOf2(
        OrgRulesetConditionsOneOf2.fromJson(json),
      );
    }
    throw FormatException(
      'No variant of OrgRulesetConditions matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgRulesetConditions? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgRulesetConditions.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class OrgRulesetConditionsOrgRulesetConditionsOneOf0
    extends OrgRulesetConditions {
  const OrgRulesetConditionsOrgRulesetConditionsOneOf0(this.value);

  final OrgRulesetConditionsOneOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgRulesetConditionsOrgRulesetConditionsOneOf0 &&
        value == other.value;
  }
}

@immutable
final class OrgRulesetConditionsOrgRulesetConditionsOneOf1
    extends OrgRulesetConditions {
  const OrgRulesetConditionsOrgRulesetConditionsOneOf1(this.value);

  final OrgRulesetConditionsOneOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgRulesetConditionsOrgRulesetConditionsOneOf1 &&
        value == other.value;
  }
}

@immutable
final class OrgRulesetConditionsOrgRulesetConditionsOneOf2
    extends OrgRulesetConditions {
  const OrgRulesetConditionsOrgRulesetConditionsOneOf2(this.value);

  final OrgRulesetConditionsOneOf2 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgRulesetConditionsOrgRulesetConditionsOneOf2 &&
        value == other.value;
  }
}
