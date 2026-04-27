import 'package:github_out/messages/repository_rule_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/org_ruleset_conditions.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_0.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_1.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_2.dart';
import 'package:github_out/models/repos_create_org_ruleset_request_target.dart';
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
import 'package:github_out/models/repository_ruleset_conditions_ref_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_id_target_repository_id.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_name_target_repository_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_spec.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_spec_source.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_target_repository_property.dart';
import 'package:meta/meta.dart';

@immutable
class ReposCreateOrgRulesetRequest {
  ReposCreateOrgRulesetRequest({
    required this.name,
    this.target,
    required this.enforcement,
    this.bypassActors,
    this.conditions,
    this.rules,
  });

  /// Converts a `Map<String, dynamic>` to a [ReposCreateOrgRulesetRequest].
  factory ReposCreateOrgRulesetRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReposCreateOrgRulesetRequest',
      json,
      () => ReposCreateOrgRulesetRequest(
        name: json['name'] as String,
        target: ReposCreateOrgRulesetRequestTarget.maybeFromJson(
          json['target'] as String?,
        ),
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
        conditions: OrgRulesetConditions.maybeFromJson(
          json['conditions'] as Map<String, dynamic>,
        ),
        rules: (json['rules'] as List?)
            ?.map<RepositoryRule>(
              (e) => RepositoryRule.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateOrgRulesetRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreateOrgRulesetRequest.fromJson(json);
  }

  /// The name of the ruleset.
  final String name;

  /// The target of the ruleset
  final ReposCreateOrgRulesetRequestTarget? target;

  /// The enforcement level of the ruleset. `evaluate` allows admins to test
  /// rules before enforcing them. Admins can view insights on the Rule
  /// Insights page (`evaluate` is only available with GitHub Enterprise).
  final RepositoryRuleEnforcement enforcement;

  /// The actors that can bypass the rules in this ruleset
  final List<RepositoryRulesetBypassActor>? bypassActors;

  /// Organization ruleset conditions
  /// Conditions for an organization ruleset.
  /// The branch and tag rulesets conditions object should contain both
  /// `repository_name` and `ref_name` properties, or both `repository_id` and
  /// `ref_name` properties, or both `repository_property` and `ref_name`
  /// properties.
  /// The push rulesets conditions object does not require the `ref_name`
  /// property.
  /// For repository policy rulesets, the conditions object should only
  /// contain the `repository_name`, the `repository_id`, or the
  /// `repository_property`.
  final OrgRulesetConditions? conditions;

  /// An array of rules within the ruleset.
  final List<RepositoryRule>? rules;

  /// Converts a [ReposCreateOrgRulesetRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'target': target?.toJson(),
      'enforcement': enforcement.toJson(),
      'bypass_actors': bypassActors?.map((e) => e.toJson()).toList(),
      'conditions': conditions?.toJson(),
      'rules': rules?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    target,
    enforcement,
    listHash(bypassActors),
    conditions,
    listHash(rules),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposCreateOrgRulesetRequest &&
        this.name == other.name &&
        this.target == other.target &&
        this.enforcement == other.enforcement &&
        listsEqual(this.bypassActors, other.bypassActors) &&
        this.conditions == other.conditions &&
        listsEqual(this.rules, other.rules);
  }
}
