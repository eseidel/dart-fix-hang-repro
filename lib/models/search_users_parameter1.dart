enum SearchUsersParameter1 {
  followers._('followers'),
  repositories._('repositories'),
  joined._('joined');

  const SearchUsersParameter1._(this.value);

  /// Creates a SearchUsersParameter1 from a json string.
  factory SearchUsersParameter1.fromJson(String json) {
    return SearchUsersParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown SearchUsersParameter1 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchUsersParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SearchUsersParameter1.fromJson(json);
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
