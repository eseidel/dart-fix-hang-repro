enum IssuesListParameter0 {
  assigned._('assigned'),
  created._('created'),
  mentioned._('mentioned'),
  subscribed._('subscribed'),
  repos._('repos'),
  all._('all');

  const IssuesListParameter0._(this.value);

  /// Creates a IssuesListParameter0 from a json string.
  factory IssuesListParameter0.fromJson(String json) {
    return IssuesListParameter0.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown IssuesListParameter0 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesListParameter0? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesListParameter0.fromJson(json);
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
