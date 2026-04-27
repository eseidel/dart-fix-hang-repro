/// **Required when the `state` is `resolved`.** The reason for resolving the
/// alert.
enum SecretScanningAlertResolution {
  falsePositive._('false_positive'),
  wontFix._('wont_fix'),
  revoked._('revoked'),
  usedInTests._('used_in_tests');

  const SecretScanningAlertResolution._(this.value);

  /// Creates a SecretScanningAlertResolution from a json string.
  factory SecretScanningAlertResolution.fromJson(String json) {
    return SecretScanningAlertResolution.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecretScanningAlertResolution value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecretScanningAlertResolution? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecretScanningAlertResolution.fromJson(json);
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
