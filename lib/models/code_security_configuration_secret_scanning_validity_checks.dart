/// The enablement status of secret scanning validity checks
enum CodeSecurityConfigurationSecretScanningValidityChecks {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityConfigurationSecretScanningValidityChecks._(this.value);

  /// Creates a CodeSecurityConfigurationSecretScanningValidityChecks from a json string.
  factory CodeSecurityConfigurationSecretScanningValidityChecks.fromJson(
    String json,
  ) {
    return CodeSecurityConfigurationSecretScanningValidityChecks.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityConfigurationSecretScanningValidityChecks value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationSecretScanningValidityChecks? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationSecretScanningValidityChecks.fromJson(json);
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
