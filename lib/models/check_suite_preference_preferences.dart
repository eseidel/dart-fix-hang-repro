import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/check_suite_preference_preferences_auto_trigger_checks_inner.dart';
import 'package:meta/meta.dart';

@immutable
class CheckSuitePreferencePreferences {
  CheckSuitePreferencePreferences({
    this.autoTriggerChecks,
  });

  /// Converts a `Map<String, dynamic>` to a [CheckSuitePreferencePreferences].
  factory CheckSuitePreferencePreferences.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CheckSuitePreferencePreferences',
      json,
      () => CheckSuitePreferencePreferences(
        autoTriggerChecks: (json['auto_trigger_checks'] as List?)
            ?.map<CheckSuitePreferencePreferencesAutoTriggerChecksInner>(
              (e) =>
                  CheckSuitePreferencePreferencesAutoTriggerChecksInner.fromJson(
                    e as Map<String, dynamic>,
                  ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CheckSuitePreferencePreferences? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CheckSuitePreferencePreferences.fromJson(json);
  }

  final List<CheckSuitePreferencePreferencesAutoTriggerChecksInner>?
  autoTriggerChecks;

  /// Converts a [CheckSuitePreferencePreferences] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'auto_trigger_checks': autoTriggerChecks?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => listHash(autoTriggerChecks).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CheckSuitePreferencePreferences &&
        listsEqual(this.autoTriggerChecks, other.autoTriggerChecks);
  }
}
