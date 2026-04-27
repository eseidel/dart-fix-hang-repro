// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_creation_type.dart';
import 'package:github_out/models/repository_rule_ruleset_info_ruleset_source_type.dart';
import 'package:meta/meta.dart';

@immutable
class RepositoryRuleDetailedOneOf0 {
  const RepositoryRuleDetailedOneOf0({
    required this.type,
    this.rulesetSourceType,
    this.rulesetSource,
    this.rulesetId,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleDetailedOneOf0].
  factory RepositoryRuleDetailedOneOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleDetailedOneOf0',
      json,
      () => RepositoryRuleDetailedOneOf0(
        type: RepositoryRuleCreationType.fromJson(json['type'] as String),
        rulesetSourceType:
            RepositoryRuleRulesetInfoRulesetSourceType.maybeFromJson(
              json['ruleset_source_type'] as String?,
            ),
        rulesetSource: json['ruleset_source'] as String?,
        rulesetId: json['ruleset_id'] as int?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleDetailedOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleDetailedOneOf0.fromJson(json);
  }

  final RepositoryRuleCreationType type;

  /// The type of source for the ruleset that includes this rule.
  final RepositoryRuleRulesetInfoRulesetSourceType? rulesetSourceType;

  /// The name of the source of the ruleset that includes this rule.
  final String? rulesetSource;

  /// The ID of the ruleset that includes this rule.
  final int? rulesetId;

  /// Converts a [RepositoryRuleDetailedOneOf0] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'ruleset_source_type': rulesetSourceType?.toJson(),
      'ruleset_source': rulesetSource,
      'ruleset_id': rulesetId,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    rulesetSourceType,
    rulesetSource,
    rulesetId,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedOneOf0 &&
        type == other.type &&
        rulesetSourceType == other.rulesetSourceType &&
        rulesetSource == other.rulesetSource &&
        rulesetId == other.rulesetId;
  }
}
