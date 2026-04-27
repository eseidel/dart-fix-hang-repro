/// The status of an autofix.
enum CodeScanningAutofixStatus {
  pending._('pending'),
  error._('error'),
  success._('success'),
  outdated._('outdated');

  const CodeScanningAutofixStatus._(this.value);

  /// Creates a CodeScanningAutofixStatus from a json string.
  factory CodeScanningAutofixStatus.fromJson(String json) {
    return CodeScanningAutofixStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningAutofixStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningAutofixStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningAutofixStatus.fromJson(json);
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
