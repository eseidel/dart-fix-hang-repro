/// The enablement status of GitHub Advanced Security features. `enabled` will
/// enable both Code Security and Secret Protection features.
enum CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity {
  enabled._('enabled'),
  disabled._('disabled'),
  codeSecurity._('code_security'),
  secretProtection._('secret_protection');

  const CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity from a json string.
  factory CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationForEnterpriseRequestAdvancedSecurity.fromJson(
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
