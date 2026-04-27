import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_pull_request_parameters.dart';
import 'package:github_out/models/repository_rule_pull_request_parameters_allowed_merge_methods_inner.dart';
import 'package:github_out/models/repository_rule_pull_request_type.dart';
import 'package:github_out/models/repository_rule_ruleset_info_ruleset_source_type.dart';
import 'package:meta/meta.dart';

@immutable
class RepositoryRuleDetailedOneOf7 {
  RepositoryRuleDetailedOneOf7({
    required this.type,
    this.parameters,
    this.rulesetSourceType,
    this.rulesetSource,
    this.rulesetId,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleDetailedOneOf7].
  factory RepositoryRuleDetailedOneOf7.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleDetailedOneOf7',
      json,
      () => RepositoryRuleDetailedOneOf7(
        type: RepositoryRulePullRequestType.fromJson(json['type'] as String),
        parameters: RepositoryRulePullRequestParameters.maybeFromJson(
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
  static RepositoryRuleDetailedOneOf7? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleDetailedOneOf7.fromJson(json);
  }

  final RepositoryRulePullRequestType type;
  final RepositoryRulePullRequestParameters? parameters;

  /// The type of source for the ruleset that includes this rule.
  final RepositoryRuleRulesetInfoRulesetSourceType? rulesetSourceType;

  /// The name of the source of the ruleset that includes this rule.
  final String? rulesetSource;

  /// The ID of the ruleset that includes this rule.
  final int? rulesetId;

  /// Converts a [RepositoryRuleDetailedOneOf7] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleDetailedOneOf7 &&
        this.type == other.type &&
        this.parameters == other.parameters &&
        this.rulesetSourceType == other.rulesetSourceType &&
        this.rulesetSource == other.rulesetSource &&
        this.rulesetId == other.rulesetId;
  }
}
