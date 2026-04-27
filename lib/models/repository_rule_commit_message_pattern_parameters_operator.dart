/// The operator to use for matching.
enum RepositoryRuleCommitMessagePatternParametersOperator {
  startsWith._('starts_with'),
  endsWith._('ends_with'),
  contains._('contains'),
  regex._('regex');

  const RepositoryRuleCommitMessagePatternParametersOperator._(this.value);

  /// Creates a RepositoryRuleCommitMessagePatternParametersOperator from a json string.
  factory RepositoryRuleCommitMessagePatternParametersOperator.fromJson(
    String json,
  ) {
    return RepositoryRuleCommitMessagePatternParametersOperator.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleCommitMessagePatternParametersOperator value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitMessagePatternParametersOperator? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitMessagePatternParametersOperator.fromJson(json);
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
