enum SearchCodeParameter2 {
  desc._('desc'),
  asc._('asc');

  const SearchCodeParameter2._(this.value);

  /// Creates a SearchCodeParameter2 from a json string.
  factory SearchCodeParameter2.fromJson(String json) {
    return SearchCodeParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown SearchCodeParameter2 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchCodeParameter2? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SearchCodeParameter2.fromJson(json);
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
