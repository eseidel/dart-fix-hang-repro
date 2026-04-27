enum IssuesListParameter1 {
  open._('open'),
  closed._('closed'),
  all._('all');

  const IssuesListParameter1._(this.value);

  /// Creates a IssuesListParameter1 from a json string.
  factory IssuesListParameter1.fromJson(String json) {
    return IssuesListParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown IssuesListParameter1 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesListParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesListParameter1.fromJson(json);
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
