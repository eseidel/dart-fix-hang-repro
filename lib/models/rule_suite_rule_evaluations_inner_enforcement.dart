/// The enforcement level of this rule source.
enum RuleSuiteRuleEvaluationsInnerEnforcement {
  active._('active'),
  evaluate._('evaluate'),
  deletedRuleset._('deleted ruleset');

  const RuleSuiteRuleEvaluationsInnerEnforcement._(this.value);

  /// Creates a RuleSuiteRuleEvaluationsInnerEnforcement from a json string.
  factory RuleSuiteRuleEvaluationsInnerEnforcement.fromJson(String json) {
    return RuleSuiteRuleEvaluationsInnerEnforcement.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RuleSuiteRuleEvaluationsInnerEnforcement value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RuleSuiteRuleEvaluationsInnerEnforcement? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RuleSuiteRuleEvaluationsInnerEnforcement.fromJson(json);
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
