/// `pending` files have not yet been processed, while `complete` means results
/// from the SARIF have been stored. `failed` files have either not been
/// processed at all, or could only be partially processed.
enum CodeScanningSarifsStatusProcessingStatus {
  pending._('pending'),
  complete._('complete'),
  failed._('failed');

  const CodeScanningSarifsStatusProcessingStatus._(this.value);

  /// Creates a CodeScanningSarifsStatusProcessingStatus from a json string.
  factory CodeScanningSarifsStatusProcessingStatus.fromJson(String json) {
    return CodeScanningSarifsStatusProcessingStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningSarifsStatusProcessingStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningSarifsStatusProcessingStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningSarifsStatusProcessingStatus.fromJson(json);
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
