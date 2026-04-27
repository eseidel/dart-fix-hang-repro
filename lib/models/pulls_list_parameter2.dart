enum PullsListParameter2 {
  open._('open'),
  closed._('closed'),
  all._('all');

  const PullsListParameter2._(this.value);

  /// Creates a PullsListParameter2 from a json string.
  factory PullsListParameter2.fromJson(String json) {
    return PullsListParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PullsListParameter2 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsListParameter2? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsListParameter2.fromJson(json);
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
