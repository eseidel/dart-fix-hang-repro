/// The enablement status of secret scanning non provider patterns
enum CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns from a json string.
  factory CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestSecretScanningNonProviderPatterns.fromJson(
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
