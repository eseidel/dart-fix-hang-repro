/// The type of the code security configuration.
enum CodeSecurityConfigurationTargetType {
  global._('global'),
  organization._('organization'),
  enterprise._('enterprise');

  const CodeSecurityConfigurationTargetType._(this.value);

  /// Creates a CodeSecurityConfigurationTargetType from a json string.
  factory CodeSecurityConfigurationTargetType.fromJson(String json) {
    return CodeSecurityConfigurationTargetType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityConfigurationTargetType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationTargetType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationTargetType.fromJson(json);
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
