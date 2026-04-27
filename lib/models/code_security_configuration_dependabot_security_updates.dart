/// The enablement status of Dependabot security updates
enum CodeSecurityConfigurationDependabotSecurityUpdates {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityConfigurationDependabotSecurityUpdates._(this.value);

  /// Creates a CodeSecurityConfigurationDependabotSecurityUpdates from a json string.
  factory CodeSecurityConfigurationDependabotSecurityUpdates.fromJson(
    String json,
  ) {
    return CodeSecurityConfigurationDependabotSecurityUpdates.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityConfigurationDependabotSecurityUpdates value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationDependabotSecurityUpdates? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationDependabotSecurityUpdates.fromJson(json);
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
