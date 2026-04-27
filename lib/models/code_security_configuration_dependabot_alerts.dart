/// The enablement status of Dependabot alerts
enum CodeSecurityConfigurationDependabotAlerts {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityConfigurationDependabotAlerts._(this.value);

  /// Creates a CodeSecurityConfigurationDependabotAlerts from a json string.
  factory CodeSecurityConfigurationDependabotAlerts.fromJson(String json) {
    return CodeSecurityConfigurationDependabotAlerts.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityConfigurationDependabotAlerts value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationDependabotAlerts? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationDependabotAlerts.fromJson(json);
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
