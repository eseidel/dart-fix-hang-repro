/// Sets the state of the secret scanning alert. You must provide `resolution`
/// when you set the state to `resolved`.
enum SecretScanningAlertState {
  open._('open'),
  resolved._('resolved');

  const SecretScanningAlertState._(this.value);

  /// Creates a SecretScanningAlertState from a json string.
  factory SecretScanningAlertState.fromJson(String json) {
    return SecretScanningAlertState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecretScanningAlertState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecretScanningAlertState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecretScanningAlertState.fromJson(json);
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
