/// The enablement status of Dependabot alerts
enum CodeSecurityUpdateConfigurationRequestDependabotAlerts {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateConfigurationRequestDependabotAlerts._(this.value);

  /// Creates a CodeSecurityUpdateConfigurationRequestDependabotAlerts from a json string.
  factory CodeSecurityUpdateConfigurationRequestDependabotAlerts.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateConfigurationRequestDependabotAlerts.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityUpdateConfigurationRequestDependabotAlerts value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestDependabotAlerts? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestDependabotAlerts.fromJson(
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
