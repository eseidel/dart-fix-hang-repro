/// The desired state of code scanning default setup.
enum CodeScanningDefaultSetupUpdateState {
  configured._('configured'),
  notConfigured._('not-configured');

  const CodeScanningDefaultSetupUpdateState._(this.value);

  /// Creates a CodeScanningDefaultSetupUpdateState from a json string.
  factory CodeScanningDefaultSetupUpdateState.fromJson(String json) {
    return CodeScanningDefaultSetupUpdateState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningDefaultSetupUpdateState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningDefaultSetupUpdateState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningDefaultSetupUpdateState.fromJson(json);
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
