/// CodeQL query suite to be used.
enum CodeScanningDefaultSetupUpdateQuerySuite {
  default_._('default'),
  extended._('extended');

  const CodeScanningDefaultSetupUpdateQuerySuite._(this.value);

  /// Creates a CodeScanningDefaultSetupUpdateQuerySuite from a json string.
  factory CodeScanningDefaultSetupUpdateQuerySuite.fromJson(String json) {
    return CodeScanningDefaultSetupUpdateQuerySuite.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningDefaultSetupUpdateQuerySuite value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningDefaultSetupUpdateQuerySuite? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningDefaultSetupUpdateQuerySuite.fromJson(json);
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
