enum SearchCommitsParameter1 {
  authorDate._('author-date'),
  committerDate._('committer-date');

  const SearchCommitsParameter1._(this.value);

  /// Creates a SearchCommitsParameter1 from a json string.
  factory SearchCommitsParameter1.fromJson(String json) {
    return SearchCommitsParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown SearchCommitsParameter1 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchCommitsParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SearchCommitsParameter1.fromJson(json);
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
