enum IssuesListForRepoParameter3 {
  open._('open'),
  closed._('closed'),
  all._('all');

  const IssuesListForRepoParameter3._(this.value);

  /// Creates a IssuesListForRepoParameter3 from a json string.
  factory IssuesListForRepoParameter3.fromJson(String json) {
    return IssuesListForRepoParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesListForRepoParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesListForRepoParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesListForRepoParameter3.fromJson(json);
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
