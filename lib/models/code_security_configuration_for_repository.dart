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
import 'package:github_out/models/code_security_configuration_for_repository_status.dart';
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
import 'package:meta/meta.dart';

/// {@template code_security_configuration_for_repository}
/// Code security configuration associated with a repository and attachment
/// status
/// {@endtemplate}
@immutable
class CodeSecurityConfigurationForRepository {
  /// {@macro code_security_configuration_for_repository}
  CodeSecurityConfigurationForRepository({
    this.status,
    this.configuration,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecurityConfigurationForRepository].
  factory CodeSecurityConfigurationForRepository.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecurityConfigurationForRepository',
      json,
      () => CodeSecurityConfigurationForRepository(
        status: CodeSecurityConfigurationForRepositoryStatus.maybeFromJson(
          json['status'] as String?,
        ),
        configuration: CodeSecurityConfiguration.maybeFromJson(
          json['configuration'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationForRepository? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationForRepository.fromJson(json);
  }

  /// The attachment status of the code security configuration on the
  /// repository.
  final CodeSecurityConfigurationForRepositoryStatus? status;

  /// A code security configuration
  final CodeSecurityConfiguration? configuration;

  /// Converts a [CodeSecurityConfigurationForRepository]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'status': status?.toJson(),
      'configuration': configuration?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    status,
    configuration,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodeSecurityConfigurationForRepository &&
        this.status == other.status &&
        this.configuration == other.configuration;
  }
}
