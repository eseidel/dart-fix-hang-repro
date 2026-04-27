/// The enforcement status for a security configuration
enum CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement {
  enforced._('enforced'),
  unenforced._('unenforced');

  const CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement from a json string.
  factory CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationForEnterpriseRequestEnforcement.fromJson(
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
