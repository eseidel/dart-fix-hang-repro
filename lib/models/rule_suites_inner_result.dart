/// The result of the rule evaluations for rules with the `active` enforcement
/// status.
enum RuleSuitesInnerResult {
  pass._('pass'),
  fail._('fail'),
  bypass._('bypass');

  const RuleSuitesInnerResult._(this.value);

  /// Creates a RuleSuitesInnerResult from a json string.
  factory RuleSuitesInnerResult.fromJson(String json) {
    return RuleSuitesInnerResult.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown RuleSuitesInnerResult value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RuleSuitesInnerResult? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RuleSuitesInnerResult.fromJson(json);
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
