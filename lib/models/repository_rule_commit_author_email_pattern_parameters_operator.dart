/// The operator to use for matching.
enum RepositoryRuleCommitAuthorEmailPatternParametersOperator {
  startsWith._('starts_with'),
  endsWith._('ends_with'),
  contains._('contains'),
  regex._('regex');

  const RepositoryRuleCommitAuthorEmailPatternParametersOperator._(this.value);

  /// Creates a RepositoryRuleCommitAuthorEmailPatternParametersOperator from a json string.
  factory RepositoryRuleCommitAuthorEmailPatternParametersOperator.fromJson(
    String json,
  ) {
    return RepositoryRuleCommitAuthorEmailPatternParametersOperator.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown RepositoryRuleCommitAuthorEmailPatternParametersOperator value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitAuthorEmailPatternParametersOperator?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitAuthorEmailPatternParametersOperator.fromJson(
      json,
    );
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
