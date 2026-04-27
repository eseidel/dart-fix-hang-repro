import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_scanning_default_setup_options.dart';
import 'package:github_out/models/code_scanning_default_setup_options_runner_type.dart';
import 'package:github_out/models/code_security_create_configuration_request_advanced_security.dart';
import 'package:github_out/models/code_security_create_configuration_request_code_scanning_default_setup.dart';
import 'package:github_out/models/code_security_create_configuration_request_code_scanning_delegated_alert_dismissal.dart';
import 'package:github_out/models/code_security_create_configuration_request_dependabot_alerts.dart';
import 'package:github_out/models/code_security_create_configuration_request_dependabot_security_updates.dart';
import 'package:github_out/models/code_security_create_configuration_request_dependency_graph.dart';
import 'package:github_out/models/code_security_create_configuration_request_dependency_graph_autosubmit_action.dart';
import 'package:github_out/models/code_security_create_configuration_request_dependency_graph_autosubmit_action_options.dart';
import 'package:github_out/models/code_security_create_configuration_request_enforcement.dart';
import 'package:github_out/models/code_security_create_configuration_request_private_vulnerability_reporting.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_delegated_alert_dismissal.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_delegated_bypass.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_delegated_bypass_options.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_delegated_bypass_options_reviewers_inner_reviewer_type.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_generic_secrets.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_push_protection.dart';
import 'package:github_out/models/code_security_create_configuration_request_secret_scanning_validity_checks.dart';
import 'package:meta/meta.dart';

@immutable
class CodeSecurityCreateConfigurationRequest {
  CodeSecurityCreateConfigurationRequest({
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
    this.secretScanningDelegatedBypass,
    this.secretScanningDelegatedBypassOptions,
    this.secretScanningValidityChecks,
    this.secretScanningNonProviderPatterns,
    this.secretScanningGenericSecrets,
    this.secretScanningDelegatedAlertDismissal,
    this.privateVulnerabilityReporting,
    this.enforcement,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecurityCreateConfigurationRequest].
  factory CodeSecurityCreateConfigurationRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecurityCreateConfigurationRequest',
      json,
      () => CodeSecurityCreateConfigurationRequest(
        name: json['name'] as String,
        description: json['description'] as String,
        advancedSecurity:
            CodeSecurityCreateConfigurationRequestAdvancedSecurity.maybeFromJson(
              json['advanced_security'] as String?,
            ),
        dependencyGraph:
            CodeSecurityCreateConfigurationRequestDependencyGraph.maybeFromJson(
              json['dependency_graph'] as String?,
            ),
        dependencyGraphAutosubmitAction:
            CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitAction.maybeFromJson(
              json['dependency_graph_autosubmit_action'] as String?,
            ),
        dependencyGraphAutosubmitActionOptions:
            CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions.maybeFromJson(
              json['dependency_graph_autosubmit_action_options']
                  as Map<String, dynamic>?,
            ),
        dependabotAlerts:
            CodeSecurityCreateConfigurationRequestDependabotAlerts.maybeFromJson(
              json['dependabot_alerts'] as String?,
            ),
        dependabotSecurityUpdates:
            CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates.maybeFromJson(
              json['dependabot_security_updates'] as String?,
            ),
        codeScanningDefaultSetup:
            CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup.maybeFromJson(
              json['code_scanning_default_setup'] as String?,
            ),
        codeScanningDefaultSetupOptions:
            CodeScanningDefaultSetupOptions.maybeFromJson(
              json['code_scanning_default_setup_options']
                  as Map<String, dynamic>?,
            ),
        codeScanningDelegatedAlertDismissal:
            CodeSecurityCreateConfigurationRequestCodeScanningDelegatedAlertDismissal.maybeFromJson(
              json['code_scanning_delegated_alert_dismissal'] as String?,
            ),
        secretScanning:
            CodeSecurityCreateConfigurationRequestSecretScanning.maybeFromJson(
              json['secret_scanning'] as String?,
            ),
        secretScanningPushProtection:
            CodeSecurityCreateConfigurationRequestSecretScanningPushProtection.maybeFromJson(
              json['secret_scanning_push_protection'] as String?,
            ),
        secretScanningDelegatedBypass:
            CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypass.maybeFromJson(
              json['secret_scanning_delegated_bypass'] as String?,
            ),
        secretScanningDelegatedBypassOptions:
            CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptions.maybeFromJson(
              json['secret_scanning_delegated_bypass_options']
                  as Map<String, dynamic>?,
            ),
        secretScanningValidityChecks:
            CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks.maybeFromJson(
              json['secret_scanning_validity_checks'] as String?,
            ),
        secretScanningNonProviderPatterns:
            CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns.maybeFromJson(
              json['secret_scanning_non_provider_patterns'] as String?,
            ),
        secretScanningGenericSecrets:
            CodeSecurityCreateConfigurationRequestSecretScanningGenericSecrets.maybeFromJson(
              json['secret_scanning_generic_secrets'] as String?,
            ),
        secretScanningDelegatedAlertDismissal:
            CodeSecurityCreateConfigurationRequestSecretScanningDelegatedAlertDismissal.maybeFromJson(
              json['secret_scanning_delegated_alert_dismissal'] as String?,
            ),
        privateVulnerabilityReporting:
            CodeSecurityCreateConfigurationRequestPrivateVulnerabilityReporting.maybeFromJson(
              json['private_vulnerability_reporting'] as String?,
            ),
        enforcement:
            CodeSecurityCreateConfigurationRequestEnforcement.maybeFromJson(
              json['enforcement'] as String?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequest.fromJson(json);
  }

  /// The name of the code security configuration. Must be unique within the
  /// organization.
  final String name;

  /// A description of the code security configuration
  final String description;

  /// The enablement status of GitHub Advanced Security features. `enabled`
  /// will enable both Code Security and Secret Protection features.
  final CodeSecurityCreateConfigurationRequestAdvancedSecurity?
  advancedSecurity;

  /// The enablement status of Dependency Graph
  final CodeSecurityCreateConfigurationRequestDependencyGraph? dependencyGraph;

  /// The enablement status of Automatic dependency submission
  final CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitAction?
  dependencyGraphAutosubmitAction;

  /// Feature options for Automatic dependency submission
  final CodeSecurityCreateConfigurationRequestDependencyGraphAutosubmitActionOptions?
  dependencyGraphAutosubmitActionOptions;

  /// The enablement status of Dependabot alerts
  final CodeSecurityCreateConfigurationRequestDependabotAlerts?
  dependabotAlerts;

  /// The enablement status of Dependabot security updates
  final CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates?
  dependabotSecurityUpdates;

  /// The enablement status of code scanning default setup
  final CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup?
  codeScanningDefaultSetup;

  /// Feature options for code scanning default setup
  final CodeScanningDefaultSetupOptions? codeScanningDefaultSetupOptions;

  /// The enablement status of code scanning delegated alert dismissal
  final CodeSecurityCreateConfigurationRequestCodeScanningDelegatedAlertDismissal?
  codeScanningDelegatedAlertDismissal;

  /// The enablement status of secret scanning
  final CodeSecurityCreateConfigurationRequestSecretScanning? secretScanning;

  /// The enablement status of secret scanning push protection
  final CodeSecurityCreateConfigurationRequestSecretScanningPushProtection?
  secretScanningPushProtection;

  /// The enablement status of secret scanning delegated bypass
  final CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypass?
  secretScanningDelegatedBypass;

  /// Feature options for secret scanning delegated bypass
  final CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptions?
  secretScanningDelegatedBypassOptions;

  /// The enablement status of secret scanning validity checks
  final CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks?
  secretScanningValidityChecks;

  /// The enablement status of secret scanning non provider patterns
  final CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns?
  secretScanningNonProviderPatterns;

  /// The enablement status of Copilot secret scanning
  final CodeSecurityCreateConfigurationRequestSecretScanningGenericSecrets?
  secretScanningGenericSecrets;

  /// The enablement status of secret scanning delegated alert dismissal
  final CodeSecurityCreateConfigurationRequestSecretScanningDelegatedAlertDismissal?
  secretScanningDelegatedAlertDismissal;

  /// The enablement status of private vulnerability reporting
  final CodeSecurityCreateConfigurationRequestPrivateVulnerabilityReporting?
  privateVulnerabilityReporting;

  /// The enforcement status for a security configuration
  final CodeSecurityCreateConfigurationRequestEnforcement? enforcement;

  /// Converts a [CodeSecurityCreateConfigurationRequest]
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
      'secret_scanning_delegated_bypass': secretScanningDelegatedBypass
          ?.toJson(),
      'secret_scanning_delegated_bypass_options':
          secretScanningDelegatedBypassOptions?.toJson(),
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
    secretScanningDelegatedBypass,
    secretScanningDelegatedBypassOptions,
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
    return other is CodeSecurityCreateConfigurationRequest &&
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
        this.secretScanningDelegatedBypass ==
            other.secretScanningDelegatedBypass &&
        this.secretScanningDelegatedBypassOptions ==
            other.secretScanningDelegatedBypassOptions &&
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
