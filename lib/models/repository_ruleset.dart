import 'package:github_out/messages/repository_rule_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/org_ruleset_conditions.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_0.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_1.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_2.dart';
import 'package:github_out/models/repository_rule.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern_type.dart';
import 'package:github_out/models/repository_rule_code_scanning.dart';
import 'package:github_out/models/repository_rule_code_scanning_parameters.dart';
import 'package:github_out/models/repository_rule_code_scanning_type.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern_type.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern_type.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern_type.dart';
import 'package:github_out/models/repository_rule_creation.dart';
import 'package:github_out/models/repository_rule_creation_type.dart';
import 'package:github_out/models/repository_rule_deletion.dart';
import 'package:github_out/models/repository_rule_deletion_type.dart';
import 'package:github_out/models/repository_rule_enforcement.dart';
import 'package:github_out/models/repository_rule_file_extension_restriction.dart';
import 'package:github_out/models/repository_rule_file_extension_restriction_parameters.dart';
import 'package:github_out/models/repository_rule_file_extension_restriction_type.dart';
import 'package:github_out/models/repository_rule_file_path_restriction.dart';
import 'package:github_out/models/repository_rule_file_path_restriction_parameters.dart';
import 'package:github_out/models/repository_rule_file_path_restriction_type.dart';
import 'package:github_out/models/repository_rule_max_file_path_length.dart';
import 'package:github_out/models/repository_rule_max_file_path_length_parameters.dart';
import 'package:github_out/models/repository_rule_max_file_path_length_type.dart';
import 'package:github_out/models/repository_rule_max_file_size.dart';
import 'package:github_out/models/repository_rule_max_file_size_parameters.dart';
import 'package:github_out/models/repository_rule_max_file_size_type.dart';
import 'package:github_out/models/repository_rule_merge_queue.dart';
import 'package:github_out/models/repository_rule_merge_queue_parameters.dart';
import 'package:github_out/models/repository_rule_merge_queue_parameters_grouping_strategy.dart';
import 'package:github_out/models/repository_rule_merge_queue_parameters_merge_method.dart';
import 'package:github_out/models/repository_rule_merge_queue_type.dart';
import 'package:github_out/models/repository_rule_non_fast_forward.dart';
import 'package:github_out/models/repository_rule_non_fast_forward_type.dart';
import 'package:github_out/models/repository_rule_params_code_scanning_tool.dart';
import 'package:github_out/models/repository_rule_params_code_scanning_tool_alerts_threshold.dart';
import 'package:github_out/models/repository_rule_params_code_scanning_tool_security_alerts_threshold.dart';
import 'package:github_out/models/repository_rule_params_status_check_configuration.dart';
import 'package:github_out/models/repository_rule_params_workflow_file_reference.dart';
import 'package:github_out/models/repository_rule_pull_request_parameters.dart';
import 'package:github_out/models/repository_rule_pull_request_parameters_allowed_merge_methods_inner.dart';
import 'package:github_out/models/repository_rule_pull_request_type.dart';
import 'package:github_out/models/repository_rule_required_deployments.dart';
import 'package:github_out/models/repository_rule_required_deployments_parameters.dart';
import 'package:github_out/models/repository_rule_required_deployments_type.dart';
import 'package:github_out/models/repository_rule_required_linear_history.dart';
import 'package:github_out/models/repository_rule_required_linear_history_type.dart';
import 'package:github_out/models/repository_rule_required_signatures.dart';
import 'package:github_out/models/repository_rule_required_signatures_type.dart';
import 'package:github_out/models/repository_rule_required_status_checks.dart';
import 'package:github_out/models/repository_rule_required_status_checks_parameters.dart';
import 'package:github_out/models/repository_rule_required_status_checks_type.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_parameters.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_parameters_operator.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern_type.dart';
import 'package:github_out/models/repository_rule_update.dart';
import 'package:github_out/models/repository_rule_update_parameters.dart';
import 'package:github_out/models/repository_rule_update_type.dart';
import 'package:github_out/models/repository_rule_workflows.dart';
import 'package:github_out/models/repository_rule_workflows_parameters.dart';
import 'package:github_out/models/repository_rule_workflows_type.dart';
import 'package:github_out/models/repository_ruleset_bypass_actor.dart';
import 'package:github_out/models/repository_ruleset_bypass_actor_actor_type.dart';
import 'package:github_out/models/repository_ruleset_bypass_actor_bypass_mode.dart';
import 'package:github_out/models/repository_ruleset_conditions.dart';
import 'package:github_out/models/repository_ruleset_conditions_1.dart';
import 'package:github_out/models/repository_ruleset_conditions_ref_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_id_target_repository_id.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_name_target_repository_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_spec.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_spec_source.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_target_repository_property.dart';
import 'package:github_out/models/repository_ruleset_current_user_can_bypass.dart';
import 'package:github_out/models/repository_ruleset_links.dart';
import 'package:github_out/models/repository_ruleset_links_html.dart';
import 'package:github_out/models/repository_ruleset_links_self.dart';
import 'package:github_out/models/repository_ruleset_source_type.dart';
import 'package:github_out/models/repository_ruleset_target.dart';
import 'package:meta/meta.dart';

/// {@template repository_ruleset}
/// Repository ruleset
/// A set of rules to apply when specified conditions are met.
/// {@endtemplate}
@immutable
class RepositoryRuleset {
  /// {@macro repository_ruleset}
  RepositoryRuleset({
    required this.id,
    required this.name,
    this.target,
    this.sourceType,
    required this.source,
    required this.enforcement,
    this.bypassActors,
    this.currentUserCanBypass,
    this.nodeId,
    this.links,
    this.conditions,
    this.rules,
    this.createdAt,
    this.updatedAt,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleset].
  factory RepositoryRuleset.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleset',
      json,
      () => RepositoryRuleset(
        id: (json['id'] as int),
        name: json['name'] as String,
        target: RepositoryRulesetTarget.maybeFromJson(
          json['target'] as String?,
        ),
        sourceType: RepositoryRulesetSourceType.maybeFromJson(
          json['source_type'] as String?,
        ),
        source: json['source'] as String,
        enforcement: RepositoryRuleEnforcement.fromJson(
          json['enforcement'] as String,
        ),
        bypassActors: (json['bypass_actors'] as List?)
            ?.map<RepositoryRulesetBypassActor>(
              (e) => RepositoryRulesetBypassActor.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        currentUserCanBypass:
            RepositoryRulesetCurrentUserCanBypass.maybeFromJson(
              json['current_user_can_bypass'] as String?,
            ),
        nodeId: json['node_id'] as String?,
        links: RepositoryRulesetLinks.maybeFromJson(
          json['_links'] as Map<String, dynamic>?,
        ),
        conditions: RepositoryRulesetConditions1.maybeFromJson(
          json['conditions'] as Map<String, dynamic>,
        ),
        rules: (json['rules'] as List?)
            ?.map<RepositoryRule>(
              (e) => RepositoryRule.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        createdAt: maybeParseDateTime(json['created_at'] as String?),
        updatedAt: maybeParseDateTime(json['updated_at'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleset? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleset.fromJson(json);
  }

  /// The ID of the ruleset
  final int id;

  /// The name of the ruleset
  final String name;

  /// The target of the ruleset
  final RepositoryRulesetTarget? target;

  /// The type of the source of the ruleset
  final RepositoryRulesetSourceType? sourceType;

  /// The name of the source
  final String source;

  /// The enforcement level of the ruleset. `evaluate` allows admins to test
  /// rules before enforcing them. Admins can view insights on the Rule
  /// Insights page (`evaluate` is only available with GitHub Enterprise).
  final RepositoryRuleEnforcement enforcement;

  /// The actors that can bypass the rules in this ruleset
  final List<RepositoryRulesetBypassActor>? bypassActors;

  /// The bypass type of the user making the API request for this ruleset.
  /// This field is only returned when
  /// querying the repository-level endpoint.
  final RepositoryRulesetCurrentUserCanBypass? currentUserCanBypass;
  final String? nodeId;
  final RepositoryRulesetLinks? links;
  final RepositoryRulesetConditions1? conditions;
  final List<RepositoryRule>? rules;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  /// Converts a [RepositoryRuleset] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'target': target?.toJson(),
      'source_type': sourceType?.toJson(),
      'source': source,
      'enforcement': enforcement.toJson(),
      'bypass_actors': bypassActors?.map((e) => e.toJson()).toList(),
      'current_user_can_bypass': currentUserCanBypass?.toJson(),
      'node_id': nodeId,
      '_links': links?.toJson(),
      'conditions': conditions?.toJson(),
      'rules': rules?.map((e) => e.toJson()).toList(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    target,
    sourceType,
    source,
    enforcement,
    listHash(bypassActors),
    currentUserCanBypass,
    nodeId,
    links,
    conditions,
    listHash(rules),
    createdAt,
    updatedAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleset &&
        this.id == other.id &&
        this.name == other.name &&
        this.target == other.target &&
        this.sourceType == other.sourceType &&
        this.source == other.source &&
        this.enforcement == other.enforcement &&
        listsEqual(this.bypassActors, other.bypassActors) &&
        this.currentUserCanBypass == other.currentUserCanBypass &&
        this.nodeId == other.nodeId &&
        this.links == other.links &&
        this.conditions == other.conditions &&
        listsEqual(this.rules, other.rules) &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt;
  }
}
