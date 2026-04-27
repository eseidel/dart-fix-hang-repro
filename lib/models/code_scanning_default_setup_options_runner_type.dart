/// Whether to use labeled runners or standard GitHub runners.
enum CodeScanningDefaultSetupOptionsRunnerType {
  standard._('standard'),
  labeled._('labeled'),
  notSet._('not_set');

  const CodeScanningDefaultSetupOptionsRunnerType._(this.value);

  /// Creates a CodeScanningDefaultSetupOptionsRunnerType from a json string.
  factory CodeScanningDefaultSetupOptionsRunnerType.fromJson(String json) {
    return CodeScanningDefaultSetupOptionsRunnerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningDefaultSetupOptionsRunnerType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningDefaultSetupOptionsRunnerType? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeScanningDefaultSetupOptionsRunnerType.fromJson(json);
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
