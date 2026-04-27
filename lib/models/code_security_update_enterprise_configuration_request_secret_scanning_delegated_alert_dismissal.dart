/// The enablement status of secret scanning delegated alert dismissal
enum CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal from a json string.
  factory CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateEnterpriseConfigurationRequestSecretScanningDelegatedAlertDismissal.fromJson(
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
