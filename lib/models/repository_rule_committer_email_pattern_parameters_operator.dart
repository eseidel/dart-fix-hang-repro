/// The operator to use for matching.
enum RepositoryRuleCommitterEmailPatternParametersOperator {
  startsWith._('starts_with'),
  endsWith._('ends_with'),
  contains._('contains'),
  regex._('regex');

  const RepositoryRuleCommitterEmailPatternParametersOperator._(this.value);

  /// Creates a RepositoryRuleCommitterEmailPatternParametersOperator from a json string.
  factory RepositoryRuleCommitterEmailPatternParametersOperator.fromJson(
    String json,
  ) {
    return RepositoryRuleCommitterEmailPatternParametersOperator.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleCommitterEmailPatternParametersOperator value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCommitterEmailPatternParametersOperator? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCommitterEmailPatternParametersOperator.fromJson(json);
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
