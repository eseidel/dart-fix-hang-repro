enum SecurityProductParam {
  dependencyGraph._('dependency_graph'),
  dependabotAlerts._('dependabot_alerts'),
  dependabotSecurityUpdates._('dependabot_security_updates'),
  advancedSecurity._('advanced_security'),
  codeScanningDefaultSetup._('code_scanning_default_setup'),
  secretScanning._('secret_scanning'),
  secretScanningPushProtection._('secret_scanning_push_protection');

  const SecurityProductParam._(this.value);

  /// Creates a SecurityProductParam from a json string.
  factory SecurityProductParam.fromJson(String json) {
    return SecurityProductParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown SecurityProductParam value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityProductParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecurityProductParam.fromJson(json);
  }

  /// The value of the enum, as a string.  This is the exact value
  /// from the OpenAPI spec and will be used for network transport.
  final String value;

  /// Converts the enum to a json string.
  String toJson() => value;

  /// Returns the string value of the enum.
  @override
  String toString() => value;
}
