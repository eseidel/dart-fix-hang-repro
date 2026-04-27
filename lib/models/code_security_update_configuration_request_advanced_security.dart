/// The enablement status of GitHub Advanced Security features. `enabled` will
/// enable both Code Security and Secret Protection features.
enum CodeSecurityUpdateConfigurationRequestAdvancedSecurity {
  enabled._('enabled'),
  disabled._('disabled'),
  codeSecurity._('code_security'),
  secretProtection._('secret_protection');

  const CodeSecurityUpdateConfigurationRequestAdvancedSecurity._(this.value);

  /// Creates a CodeSecurityUpdateConfigurationRequestAdvancedSecurity from a json string.
  factory CodeSecurityUpdateConfigurationRequestAdvancedSecurity.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateConfigurationRequestAdvancedSecurity.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityUpdateConfigurationRequestAdvancedSecurity value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestAdvancedSecurity? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestAdvancedSecurity.fromJson(
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
