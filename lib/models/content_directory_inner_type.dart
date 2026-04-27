enum ContentDirectoryInnerType {
  dir._('dir'),
  file._('file'),
  submodule._('submodule'),
  symlink._('symlink');

  const ContentDirectoryInnerType._(this.value);

  /// Creates a ContentDirectoryInnerType from a json string.
  factory ContentDirectoryInnerType.fromJson(String json) {
    return ContentDirectoryInnerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ContentDirectoryInnerType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ContentDirectoryInnerType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ContentDirectoryInnerType.fromJson(json);
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
