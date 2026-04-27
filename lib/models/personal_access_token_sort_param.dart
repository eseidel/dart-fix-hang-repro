enum PersonalAccessTokenSortParam {
  createdAt._('created_at');

  const PersonalAccessTokenSortParam._(this.value);

  /// Creates a PersonalAccessTokenSortParam from a json string.
  factory PersonalAccessTokenSortParam.fromJson(String json) {
    return PersonalAccessTokenSortParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PersonalAccessTokenSortParam value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PersonalAccessTokenSortParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PersonalAccessTokenSortParam.fromJson(json);
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
