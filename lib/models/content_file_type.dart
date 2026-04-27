enum ContentFileType {
  file._('file');

  const ContentFileType._(this.value);

  /// Creates a ContentFileType from a json string.
  factory ContentFileType.fromJson(String json) {
    return ContentFileType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown ContentFileType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ContentFileType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ContentFileType.fromJson(json);
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
