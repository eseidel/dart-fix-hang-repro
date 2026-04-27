/// The enablement status of secret scanning push protection
enum CodeSecurityCreateConfigurationRequestSecretScanningPushProtection {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestSecretScanningPushProtection._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationRequestSecretScanningPushProtection from a json string.
  factory CodeSecurityCreateConfigurationRequestSecretScanningPushProtection.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestSecretScanningPushProtection
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationRequestSecretScanningPushProtection value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestSecretScanningPushProtection?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestSecretScanningPushProtection.fromJson(
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
