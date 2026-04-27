/// The enablement status of Dependabot alerts
enum CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts from a json string.
  factory CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateEnterpriseConfigurationRequestDependabotAlerts.fromJson(
      json,
    );
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
