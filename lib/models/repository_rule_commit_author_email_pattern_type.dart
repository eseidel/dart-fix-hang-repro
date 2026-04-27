enum RepositoryRuleCommitAuthorEmailPatternType {
  commitAuthorEmailPattern._('commit_author_email_pattern');

  const RepositoryRuleCommitAuthorEmailPatternType._(this.value);

  /// Creates a RepositoryRuleCommitAuthorEmailPatternType from a json string.
  factory RepositoryRuleCommitAuthorEmailPatternType.fromJson(String json) {
    return RepositoryRuleCommitAuthorEmailPatternType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleCommitAuthorEmailPatternType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitAuthorEmailPatternType? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitAuthorEmailPatternType.fromJson(json);
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
