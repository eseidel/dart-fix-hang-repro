/// The enforcement status for a security configuration
enum CodeSecurityConfigurationEnforcement {
  enforced._('enforced'),
  unenforced._('unenforced');

  const CodeSecurityConfigurationEnforcement._(this.value);

  /// Creates a CodeSecurityConfigurationEnforcement from a json string.
  factory CodeSecurityConfigurationEnforcement.fromJson(String json) {
    return CodeSecurityConfigurationEnforcement.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityConfigurationEnforcement value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationEnforcement? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationEnforcement.fromJson(json);
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
