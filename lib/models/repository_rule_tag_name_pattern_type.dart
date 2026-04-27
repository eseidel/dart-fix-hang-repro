enum RepositoryRuleTagNamePatternType {
  tagNamePattern._('tag_name_pattern');

  const RepositoryRuleTagNamePatternType._(this.value);

  /// Creates a RepositoryRuleTagNamePatternType from a json string.
  factory RepositoryRuleTagNamePatternType.fromJson(String json) {
    return RepositoryRuleTagNamePatternType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleTagNamePatternType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleTagNamePatternType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleTagNamePatternType.fromJson(json);
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
