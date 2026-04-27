/// The target of the ruleset
enum ReposUpdateRepoRulesetRequestTarget {
  branch._('branch'),
  tag._('tag'),
  push._('push');

  const ReposUpdateRepoRulesetRequestTarget._(this.value);

  /// Creates a ReposUpdateRepoRulesetRequestTarget from a json string.
  factory ReposUpdateRepoRulesetRequestTarget.fromJson(String json) {
    return ReposUpdateRepoRulesetRequestTarget.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposUpdateRepoRulesetRequestTarget value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateRepoRulesetRequestTarget? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdateRepoRulesetRequestTarget.fromJson(json);
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
