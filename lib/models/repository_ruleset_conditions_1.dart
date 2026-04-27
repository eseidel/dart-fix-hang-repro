import 'package:github_out/models/org_ruleset_conditions.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_0.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_1.dart';
import 'package:github_out/models/org_ruleset_conditions_one_of_2.dart';
import 'package:github_out/models/repository_ruleset_conditions.dart';
import 'package:github_out/models/repository_ruleset_conditions_ref_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_id_target_repository_id.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_name_target_repository_name.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_spec.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_spec_source.dart';
import 'package:github_out/models/repository_ruleset_conditions_repository_property_target_repository_property.dart';

sealed class RepositoryRulesetConditions1 {
  static RepositoryRulesetConditions1 fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('RepositoryRulesetConditions1.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRulesetConditions1? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return RepositoryRulesetConditions1.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
