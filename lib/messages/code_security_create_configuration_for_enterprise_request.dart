import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_scanning_default_setup_options.dart';
import 'package:github_out/models/code_scanning_default_setup_options_runner_type.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_advanced_security.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_code_scanning_default_setup.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_dependabot_alerts.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_dependabot_security_updates.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_dependency_graph.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_dependency_graph_autosubmit_action.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_enforcement.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_private_vulnerability_reporting.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_secret_scanning.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_secret_scanning_generic_secrets.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_secret_scanning_push_protection.dart';
import 'package:github_out/models/code_security_create_configuration_for_enterprise_request_secret_scanning_validity_checks.dart';
import 'package:meta/meta.dart';

@immutable
class CodeSecurityCreateConfigurationForEnterpriseRequest {
  CodeSecurityCreateConfigurationForEnterpriseRequest({
    required this.name,
    required this.description,
    this.advancedSecurity,
    this.dependencyGraph,
    this.dependencyGraphAutosubmitAction,
    this.dependencyGraphAutosubmitActionOptions,
    this.dependabotAlerts,
    this.dependabotSecurityUpdates,
    this.codeScanningDefaultSetup,
    this.codeScanningDefaultSetupOptions,
    this.codeScanningDelegatedAlertDismissal,
    this.secretScanning,
    this.secretScanningPushProtection,
    this.secretScanningValidityChecks,
    this.secretScanningNonProviderPatterns,
    this.secretScanningGenericSecrets,
    this.secretScanningDelegatedAlertDismissal,
    this.privateVulnerabilityReporting,
    this.enforcement,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecurityCreateConfigurationForEnterpriseRequest].
  factory CodeSecurityCreateConfigurationForEnterpriseRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecurityCreateConfigurationForEnterpriseRequest',
      json,
      () => CodeSecurityCreateConfigurationForEnterpriseRequest(
        name: json['name'] as String,
        description: json['description'] as String,
        advancedSecurity:
            CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity.maybeFromJson(
              json['advanced_security'] as String?,
            ),
        dependencyGraph:
            CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph.maybeFromJson(
              json['dependency_graph'] as String?,
            ),
        dependencyGraphAutosubmitAction:
            CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.maybeFromJson(
              json['dependency_graph_autosubmit_action'] as String?,
            ),
        dependencyGraphAutosubmitActionOptions:
            CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions.maybeFromJson(
              json['dependency_graph_autosubmit_action_options']
                  as Map<String, dynamic>?,
            ),
        dependabotAlerts:
            CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts.maybeFromJson(
              json['dependabot_alerts'] as String?,
            ),
        dependabotSecurityUpdates:
            CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates.maybeFromJson(
              json['dependabot_security_updates'] as String?,
            ),
        codeScanningDefaultSetup:
            CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup.maybeFromJson(
              json['code_scanning_default_setup'] as String?,
            ),
        codeScanningDefaultSetupOptions:
            CodeScanningDefaultSetupOptions.maybeFromJson(
              json['code_scanning_default_setup_options']
                  as Map<String, dynamic>?,
            ),
        codeScanningDelegatedAlertDismissal:
            CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal.maybeFromJson(
              json['code_scanning_delegated_alert_dismissal'] as String?,
            ),
        secretScanning:
            CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning.maybeFromJson(
              json['secret_scanning'] as String?,
            ),
        secretScanningPushProtection:
            CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection.maybeFromJson(
              json['secret_scanning_push_protection'] as String?,
            ),
        secretScanningValidityChecks:
            CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks.maybeFromJson(
              json['secret_scanning_validity_checks'] as String?,
            ),
        secretScanningNonProviderPatterns:
            CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns.maybeFromJson(
              json['secret_scanning_non_provider_patterns'] as String?,
            ),
        secretScanningGenericSecrets:
            CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets.maybeFromJson(
              json['secret_scanning_generic_secrets'] as String?,
            ),
        secretScanningDelegatedAlertDismissal:
            CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.maybeFromJson(
              json['secret_scanning_delegated_alert_dismissal'] as String?,
            ),
        privateVulnerabilityReporting:
            CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting.maybeFromJson(
              json['private_vulnerability_reporting'] as String?,
            ),
        enforcement:
            CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.maybeFromJson(
              json['enforcement'] as String?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationForEnterpriseRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationForEnterpriseRequest.fromJson(json);
  }

  /// The name of the code security configuration. Must be unique within the
  /// enterprise.
  final String name;

  /// A description of the code security configuration
  final String description;

  /// The enablement status of GitHub Advanced Security features. `enabled`
  /// will enable both Code Security and Secret Protection features.
  final CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity?
  advancedSecurity;

  /// The enablement status of Dependency Graph
  final CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraph?
  dependencyGraph;

  /// The enablement status of Automatic dependency submission
  final CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction?
  dependencyGraphAutosubmitAction;

  /// Feature options for Automatic dependency submission
  final CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitActionOptions?
  dependencyGraphAutosubmitActionOptions;

  /// The enablement status of Dependabot alerts
  final CodeSecurityCreateConfigurationForEnterpriseRequestDependabotAlerts?
  dependabotAlerts;

  /// The enablement status of Dependabot security updates
  final CodeSecurityCreateConfigurationForEnterpriseRequestDependabotSecurityUpdates?
  dependabotSecurityUpdates;

  /// The enablement status of code scanning default setup
  final CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDefaultSetup?
  codeScanningDefaultSetup;

  /// Feature options for code scanning default setup
  final CodeScanningDefaultSetupOptions? codeScanningDefaultSetupOptions;

  /// The enablement status of code scanning delegated alert dismissal
  final CodeSecurityCreateConfigurationForEnterpriseRequestCodeScanningDelegatedAlertDismissal?
  codeScanningDelegatedAlertDismissal;

  /// The enablement status of secret scanning
  final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanning?
  secretScanning;

  /// The enablement status of secret scanning push protection
  final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningPushProtection?
  secretScanningPushProtection;

  /// The enablement status of secret scanning validity checks
  final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningValidityChecks?
  secretScanningValidityChecks;

  /// The enablement status of secret scanning non provider patterns
  final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningNonProviderPatterns?
  secretScanningNonProviderPatterns;

  /// The enablement status of Copilot secret scanning
  final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningGenericSecrets?
  secretScanningGenericSecrets;

  /// The enablement status of secret scanning delegated alert dismissal
  final CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal?
  secretScanningDelegatedAlertDismissal;

  /// The enablement status of private vulnerability reporting
  final CodeSecurityCreateConfigurationForEnterpriseRequestPrivateVulnerabilityReporting?
  privateVulnerabilityReporting;

  /// The enforcement status for a security configuration
  final CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement?
  enforcement;

  /// Converts a [CodeSecurityCreateConfigurationForEnterpriseRequest]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'advanced_security': advancedSecurity?.toJson(),
      'dependency_graph': dependencyGraph?.toJson(),
      'dependency_graph_autosubmit_action': dependencyGraphAutosubmitAction
          ?.toJson(),
      'dependency_graph_autosubmit_action_options':
          dependencyGraphAutosubmitActionOptions?.toJson(),
      'dependabot_alerts': dependabotAlerts?.toJson(),
      'dependabot_security_updates': dependabotSecurityUpdates?.toJson(),
      'code_scanning_default_setup': codeScanningDefaultSetup?.toJson(),
      'code_scanning_default_setup_options': codeScanningDefaultSetupOptions
          ?.toJson(),
      'code_scanning_delegated_alert_dismissal':
          codeScanningDelegatedAlertDismissal?.toJson(),
      'secret_scanning': secretScanning?.toJson(),
      'secret_scanning_push_protection': secretScanningPushProtection?.toJson(),
      'secret_scanning_validity_checks': secretScanningValidityChecks?.toJson(),
      'secret_scanning_non_provider_patterns': secretScanningNonProviderPatterns
          ?.toJson(),
      'secret_scanning_generic_secrets': secretScanningGenericSecrets?.toJson(),
      'secret_scanning_delegated_alert_dismissal':
          secretScanningDelegatedAlertDismissal?.toJson(),
      'private_vulnerability_reporting': privateVulnerabilityReporting
          ?.toJson(),
      'enforcement': enforcement?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    description,
    advancedSecurity,
    dependencyGraph,
    dependencyGraphAutosubmitAction,
    dependencyGraphAutosubmitActionOptions,
    dependabotAlerts,
    dependabotSecurityUpdates,
    codeScanningDefaultSetup,
    codeScanningDefaultSetupOptions,
    codeScanningDelegatedAlertDismissal,
    secretScanning,
    secretScanningPushProtection,
    secretScanningValidityChecks,
    secretScanningNonProviderPatterns,
    secretScanningGenericSecrets,
    secretScanningDelegatedAlertDismissal,
    privateVulnerabilityReporting,
    enforcement,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodeSecurityCreateConfigurationForEnterpriseRequest &&
        this.name == other.name &&
        this.description == other.description &&
        this.advancedSecurity == other.advancedSecurity &&
        this.dependencyGraph == other.dependencyGraph &&
        this.dependencyGraphAutosubmitAction ==
            other.dependencyGraphAutosubmitAction &&
        this.dependencyGraphAutosubmitActionOptions ==
            other.dependencyGraphAutosubmitActionOptions &&
        this.dependabotAlerts == other.dependabotAlerts &&
        this.dependabotSecurityUpdates == other.dependabotSecurityUpdates &&
        this.codeScanningDefaultSetup == other.codeScanningDefaultSetup &&
        this.codeScanningDefaultSetupOptions ==
            other.codeScanningDefaultSetupOptions &&
        this.codeScanningDelegatedAlertDismissal ==
            other.codeScanningDelegatedAlertDismissal &&
        this.secretScanning == other.secretScanning &&
        this.secretScanningPushProtection ==
            other.secretScanningPushProtection &&
        this.secretScanningValidityChecks ==
            other.secretScanningValidityChecks &&
        this.secretScanningNonProviderPatterns ==
            other.secretScanningNonProviderPatterns &&
        this.secretScanningGenericSecrets ==
            other.secretScanningGenericSecrets &&
        this.secretScanningDelegatedAlertDismissal ==
            other.secretScanningDelegatedAlertDismissal &&
        this.privateVulnerabilityReporting ==
            other.privateVulnerabilityReporting &&
        this.enforcement == other.enforcement;
  }
}
