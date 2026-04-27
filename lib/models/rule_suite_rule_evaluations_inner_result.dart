/// The result of the evaluation of the individual rule.
enum RuleSuiteRuleEvaluationsInnerResult {
  pass._('pass'),
  fail._('fail');

  const RuleSuiteRuleEvaluationsInnerResult._(this.value);

  /// Creates a RuleSuiteRuleEvaluationsInnerResult from a json string.
  factory RuleSuiteRuleEvaluationsInnerResult.fromJson(String json) {
    return RuleSuiteRuleEvaluationsInnerResult.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RuleSuiteRuleEvaluationsInnerResult value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RuleSuiteRuleEvaluationsInnerResult? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RuleSuiteRuleEvaluationsInnerResult.fromJson(json);
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
