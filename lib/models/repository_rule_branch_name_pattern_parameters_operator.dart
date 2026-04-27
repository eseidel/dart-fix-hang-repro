/// The operator to use for matching.
enum RepositoryRuleBranchNamePatternParametersOperator {
  startsWith._('starts_with'),
  endsWith._('ends_with'),
  contains._('contains'),
  regex._('regex');

  const RepositoryRuleBranchNamePatternParametersOperator._(this.value);

  /// Creates a RepositoryRuleBranchNamePatternParametersOperator from a json string.
  factory RepositoryRuleBranchNamePatternParametersOperator.fromJson(
    String json,
  ) {
    return RepositoryRuleBranchNamePatternParametersOperator.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleBranchNamePatternParametersOperator value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleBranchNamePatternParametersOperator? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleBranchNamePatternParametersOperator.fromJson(json);
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
