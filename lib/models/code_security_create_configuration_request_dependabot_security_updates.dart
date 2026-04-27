/// The enablement status of Dependabot security updates
enum CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates from a json string.
  factory CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestDependabotSecurityUpdates.fromJson(
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
