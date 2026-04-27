/// The enablement status of secret scanning validity checks
enum CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks from a json string.
  factory CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestSecretScanningValidityChecks.fromJson(
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
