/// The enablement status of secret scanning non-provider patterns
enum CodeSecurityConfigurationSecretScanningNonProviderPatterns {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityConfigurationSecretScanningNonProviderPatterns._(
    this.value,
  );

  /// Creates a CodeSecurityConfigurationSecretScanningNonProviderPatterns from a json string.
  factory CodeSecurityConfigurationSecretScanningNonProviderPatterns.fromJson(
    String json,
  ) {
    return CodeSecurityConfigurationSecretScanningNonProviderPatterns.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityConfigurationSecretScanningNonProviderPatterns value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationSecretScanningNonProviderPatterns?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationSecretScanningNonProviderPatterns.fromJson(
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
