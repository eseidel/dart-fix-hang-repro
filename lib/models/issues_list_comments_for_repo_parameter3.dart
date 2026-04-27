enum IssuesListCommentsForRepoParameter3 {
  asc._('asc'),
  desc._('desc');

  const IssuesListCommentsForRepoParameter3._(this.value);

  /// Creates a IssuesListCommentsForRepoParameter3 from a json string.
  factory IssuesListCommentsForRepoParameter3.fromJson(String json) {
    return IssuesListCommentsForRepoParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesListCommentsForRepoParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesListCommentsForRepoParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesListCommentsForRepoParameter3.fromJson(json);
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
