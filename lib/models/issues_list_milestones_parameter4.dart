enum IssuesListMilestonesParameter4 {
  asc._('asc'),
  desc._('desc');

  const IssuesListMilestonesParameter4._(this.value);

  /// Creates a IssuesListMilestonesParameter4 from a json string.
  factory IssuesListMilestonesParameter4.fromJson(String json) {
    return IssuesListMilestonesParameter4.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesListMilestonesParameter4 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesListMilestonesParameter4? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesListMilestonesParameter4.fromJson(json);
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
