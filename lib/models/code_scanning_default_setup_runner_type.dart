/// Runner type to be used.
enum CodeScanningDefaultSetupRunnerType {
  standard._('standard'),
  labeled._('labeled');

  const CodeScanningDefaultSetupRunnerType._(this.value);

  /// Creates a CodeScanningDefaultSetupRunnerType from a json string.
  factory CodeScanningDefaultSetupRunnerType.fromJson(String json) {
    return CodeScanningDefaultSetupRunnerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningDefaultSetupRunnerType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningDefaultSetupRunnerType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningDefaultSetupRunnerType.fromJson(json);
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
