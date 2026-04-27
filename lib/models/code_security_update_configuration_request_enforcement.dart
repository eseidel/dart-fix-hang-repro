/// The enforcement status for a security configuration
enum CodeSecurityUpdateConfigurationRequestEnforcement {
  enforced._('enforced'),
  unenforced._('unenforced');

  const CodeSecurityUpdateConfigurationRequestEnforcement._(this.value);

  /// Creates a CodeSecurityUpdateConfigurationRequestEnforcement from a json string.
  factory CodeSecurityUpdateConfigurationRequestEnforcement.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateConfigurationRequestEnforcement.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityUpdateConfigurationRequestEnforcement value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestEnforcement? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestEnforcement.fromJson(json);
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
