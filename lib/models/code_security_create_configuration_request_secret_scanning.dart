/// The enablement status of secret scanning
enum CodeSecurityCreateConfigurationRequestSecretScanning {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestSecretScanning._(this.value);

  /// Creates a CodeSecurityCreateConfigurationRequestSecretScanning from a json string.
  factory CodeSecurityCreateConfigurationRequestSecretScanning.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestSecretScanning.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityCreateConfigurationRequestSecretScanning value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestSecretScanning? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestSecretScanning.fromJson(json);
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
