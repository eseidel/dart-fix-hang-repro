import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_security_configuration.dart';
import 'package:github_out/models/code_security_configuration_advanced_security.dart';
import 'package:github_out/models/code_security_configuration_code_scanning_default_setup.dart';
import 'package:github_out/models/code_security_configuration_code_scanning_default_setup_options.dart';
import 'package:github_out/models/code_security_configuration_code_scanning_default_setup_options_runner_type.dart';
import 'package:github_out/models/code_security_configuration_code_scanning_delegated_alert_dismissal.dart';
import 'package:github_out/models/code_security_configuration_dependabot_alerts.dart';
import 'package:github_out/models/code_security_configuration_dependabot_security_updates.dart';
import 'package:github_out/models/code_security_configuration_dependency_graph.dart';
import 'package:github_out/models/code_security_configuration_dependency_graph_autosubmit_action.dart';
import 'package:github_out/models/code_security_configuration_dependency_graph_autosubmit_action_options.dart';
import 'package:github_out/models/code_security_configuration_enforcement.dart';
import 'package:github_out/models/code_security_configuration_private_vulnerability_reporting.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_delegated_bypass.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_delegated_bypass_options.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_generic_secrets.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_push_protection.dart';
import 'package:github_out/models/code_security_configuration_secret_scanning_validity_checks.dart';
import 'package:github_out/models/code_security_configuration_target_type.dart';
import 'package:github_out/models/code_security_set_configuration_as_default_for_enterprise200_response_default_for_new_repos.dart';
import 'package:meta/meta.dart';

@immutable
class CodeSecuritySetConfigurationAsDefaultForEnterprise200Response {
  CodeSecuritySetConfigurationAsDefaultForEnterprise200Response({
    this.defaultForNewRepos,
    this.configuration,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecuritySetConfigurationAsDefaultForEnterprise200Response].
  factory CodeSecuritySetConfigurationAsDefaultForEnterprise200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecuritySetConfigurationAsDefaultForEnterprise200Response',
      json,
      () => CodeSecuritySetConfigurationAsDefaultForEnterprise200Response(
        defaultForNewRepos:
            CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos.maybeFromJson(
              json['default_for_new_repos'] as String?,
            ),
        configuration: CodeSecurityConfiguration.maybeFromJson(
          json['configuration'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecuritySetConfigurationAsDefaultForEnterprise200Response?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CodeSecuritySetConfigurationAsDefaultForEnterprise200Response.fromJson(
      json,
    );
  }

  /// Specifies which types of repository this security configuration is
  /// applied to by default.
  final CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos?
  defaultForNewRepos;

  /// A code security configuration
  final CodeSecurityConfiguration? configuration;

  /// Converts a [CodeSecuritySetConfigurationAsDefaultForEnterprise200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'default_for_new_repos': defaultForNewRepos?.toJson(),
      'configuration': configuration?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    defaultForNewRepos,
    configuration,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is CodeSecuritySetConfigurationAsDefaultForEnterprise200Response &&
        this.defaultForNewRepos == other.defaultForNewRepos &&
        this.configuration == other.configuration;
  }
}
