/// The enablement status of secret scanning delegated alert dismissal
enum CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal from a json string.
  factory CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationForEnterpriseRequestSecretScanningDelegatedAlertDismissal.fromJson(
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
