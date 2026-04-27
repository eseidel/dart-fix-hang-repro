enum RepositoryRuleWorkflowsType {
  workflows._('workflows');

  const RepositoryRuleWorkflowsType._(this.value);

  /// Creates a RepositoryRuleWorkflowsType from a json string.
  factory RepositoryRuleWorkflowsType.fromJson(String json) {
    return RepositoryRuleWorkflowsType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleWorkflowsType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleWorkflowsType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleWorkflowsType.fromJson(json);
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
