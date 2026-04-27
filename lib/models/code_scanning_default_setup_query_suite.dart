/// CodeQL query suite to be used.
enum CodeScanningDefaultSetupQuerySuite {
  default_._('default'),
  extended._('extended');

  const CodeScanningDefaultSetupQuerySuite._(this.value);

  /// Creates a CodeScanningDefaultSetupQuerySuite from a json string.
  factory CodeScanningDefaultSetupQuerySuite.fromJson(String json) {
    return CodeScanningDefaultSetupQuerySuite.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningDefaultSetupQuerySuite value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningDefaultSetupQuerySuite? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningDefaultSetupQuerySuite.fromJson(json);
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
