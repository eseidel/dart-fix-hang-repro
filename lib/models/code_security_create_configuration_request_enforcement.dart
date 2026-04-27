/// The enforcement status for a security configuration
enum CodeSecurityCreateConfigurationRequestEnforcement {
  enforced._('enforced'),
  unenforced._('unenforced');

  const CodeSecurityCreateConfigurationRequestEnforcement._(this.value);

  /// Creates a CodeSecurityCreateConfigurationRequestEnforcement from a json string.
  factory CodeSecurityCreateConfigurationRequestEnforcement.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestEnforcement.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityCreateConfigurationRequestEnforcement value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestEnforcement? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestEnforcement.fromJson(json);
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
