/// The enablement status of code scanning default setup
enum CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup from a json string.
  factory CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateEnterpriseConfigurationRequestCodeScanningDefaultSetup.fromJson(
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
