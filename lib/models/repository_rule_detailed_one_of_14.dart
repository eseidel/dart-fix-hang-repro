import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_ruleset_info_ruleset_source_type.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_type.dart';
import 'package:meta/meta.dart';

@immutable
class RepositoryRuleDetailedOneOf14 {
  RepositoryRuleDetailedOneOf14({
    required this.type,
    this.parameters,
    this.rulesetSourceType,
    this.rulesetSource,
    this.rulesetId,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleDetailedOneOf14].
  factory RepositoryRuleDetailedOneOf14.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleDetailedOneOf14',
      json,
      () => RepositoryRuleDetailedOneOf14(
        type: RepositoryRuleTagNamePatternType.fromJson(json['type'] as String),
        parameters: RepositoryRuleTagNamePatternParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
        rulesetSourceType:
            RepositoryRuleRulesetInfoRulesetSourceType.maybeFromJson(
              json['ruleset_source_type'] as String?,
            ),
        rulesetSource: json['ruleset_source'] as String?,
        rulesetId: (json['ruleset_id'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleDetailedOneOf14? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleDetailedOneOf14.fromJson(json);
  }

  final RepositoryRuleTagNamePatternType type;
  final RepositoryRuleTagNamePatternParameters? parameters;

  /// The type of source for the ruleset that includes this rule.
  final RepositoryRuleRulesetInfoRulesetSourceType? rulesetSourceType;

  /// The name of the source of the ruleset that includes this rule.
  final String? rulesetSource;

  /// The ID of the ruleset that includes this rule.
  final int? rulesetId;

  /// Converts a [RepositoryRuleDetailedOneOf14] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'parameters': parameters?.toJson(),
      'ruleset_source_type': rulesetSourceType?.toJson(),
      'ruleset_source': rulesetSource,
      'ruleset_id': rulesetId,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    parameters,
    rulesetSourceType,
    rulesetSource,
    rulesetId,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedOneOf14 &&
        this.type == other.type &&
        this.parameters == other.parameters &&
        this.rulesetSourceType == other.rulesetSourceType &&
        this.rulesetSource == other.rulesetSource &&
        this.rulesetId == other.rulesetId;
  }
}
