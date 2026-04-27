// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
/// The enablement status of secret scanning delegated alert dismissal
enum CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal from a json string.
  factory CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateConfigurationRequestSecretScanningDelegatedAlertDismissal.fromJson(
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
