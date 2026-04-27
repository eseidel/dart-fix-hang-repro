/// The enablement status of secret scanning non-provider patterns
enum CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns from a json string.
  factory CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestSecretScanningNonProviderPatterns.fromJson(
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
