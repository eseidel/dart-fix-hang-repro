enum PullsListParameter6 {
  asc._('asc'),
  desc._('desc');

  const PullsListParameter6._(this.value);

  /// Creates a PullsListParameter6 from a json string.
  factory PullsListParameter6.fromJson(String json) {
    return PullsListParameter6.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PullsListParameter6 value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsListParameter6? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsListParameter6.fromJson(json);
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
