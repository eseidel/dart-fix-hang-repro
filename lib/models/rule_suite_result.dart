/// The result of the rule evaluations for rules with the `active` enforcement
/// status.
enum RuleSuiteResult {
  pass._('pass'),
  fail._('fail'),
  bypass._('bypass');

  const RuleSuiteResult._(this.value);

  /// Creates a RuleSuiteResult from a json string.
  factory RuleSuiteResult.fromJson(String json) {
    return RuleSuiteResult.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown RuleSuiteResult value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RuleSuiteResult? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RuleSuiteResult.fromJson(json);
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
