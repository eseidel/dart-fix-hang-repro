/// The enablement status of secret scanning push protection
enum CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection from a json string.
  factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningPushProtection.fromJson(
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
