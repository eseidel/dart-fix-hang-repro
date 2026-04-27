/// The target of the ruleset
enum ReposUpdateOrgRulesetRequestTarget {
  branch._('branch'),
  tag._('tag'),
  push._('push'),
  repository._('repository');

  const ReposUpdateOrgRulesetRequestTarget._(this.value);

  /// Creates a ReposUpdateOrgRulesetRequestTarget from a json string.
  factory ReposUpdateOrgRulesetRequestTarget.fromJson(String json) {
    return ReposUpdateOrgRulesetRequestTarget.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposUpdateOrgRulesetRequestTarget value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateOrgRulesetRequestTarget? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdateOrgRulesetRequestTarget.fromJson(json);
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
