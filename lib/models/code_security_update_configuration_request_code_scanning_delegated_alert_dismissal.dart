/// The enablement status of code scanning delegated alert dismissal
enum CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal from a json string.
  factory CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestCodeScanningDelegatedAlertDismissal.fromJson(
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
