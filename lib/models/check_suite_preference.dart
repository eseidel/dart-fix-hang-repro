import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/check_suite_preference_preferences.dart';
import 'package:github_out/models/check_suite_preference_preferences_auto_trigger_checks_inner.dart';
import 'package:github_out/models/code_of_conduct.dart';
import 'package:github_out/models/minimal_repository.dart';
import 'package:github_out/models/minimal_repository_license.dart';
import 'package:github_out/models/minimal_repository_permissions.dart';
import 'package:github_out/models/security_and_analysis.dart';
import 'package:github_out/models/security_and_analysis_advanced_security.dart';
import 'package:github_out/models/security_and_analysis_advanced_security_status.dart';
import 'package:github_out/models/security_and_analysis_code_security.dart';
import 'package:github_out/models/security_and_analysis_code_security_status.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_status.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template check_suite_preference}
/// Check Suite Preference
/// Check suite configuration preferences for a repository.
/// {@endtemplate}
@immutable
class CheckSuitePreference {
  /// {@macro check_suite_preference}
  CheckSuitePreference({
    required this.preferences,
    required this.repository,
  });

  /// Converts a `Map<String, dynamic>` to a [CheckSuitePreference].
  factory CheckSuitePreference.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CheckSuitePreference',
      json,
      () => CheckSuitePreference(
        preferences: CheckSuitePreferencePreferences.fromJson(
          json['preferences'] as Map<String, dynamic>,
        ),
        repository: MinimalRepository.fromJson(
          json['repository'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CheckSuitePreference? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CheckSuitePreference.fromJson(json);
  }

  final CheckSuitePreferencePreferences preferences;

  /// Minimal Repository
  /// Minimal Repository
  final MinimalRepository repository;

  /// Converts a [CheckSuitePreference] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'preferences': preferences.toJson(),
      'repository': repository.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    preferences,
    repository,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CheckSuitePreference &&
        this.preferences == other.preferences &&
        this.repository == other.repository;
  }
}
