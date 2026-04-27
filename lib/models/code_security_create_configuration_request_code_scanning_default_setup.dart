/// The enablement status of code scanning default setup
enum CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup from a json string.
  factory CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestCodeScanningDefaultSetup.fromJson(
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
