/// The target of the ruleset
enum ReposCreateOrgRulesetRequestTarget {
  branch._('branch'),
  tag._('tag'),
  push._('push'),
  repository._('repository');

  const ReposCreateOrgRulesetRequestTarget._(this.value);

  /// Creates a ReposCreateOrgRulesetRequestTarget from a json string.
  factory ReposCreateOrgRulesetRequestTarget.fromJson(String json) {
    return ReposCreateOrgRulesetRequestTarget.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposCreateOrgRulesetRequestTarget value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateOrgRulesetRequestTarget? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposCreateOrgRulesetRequestTarget.fromJson(json);
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
