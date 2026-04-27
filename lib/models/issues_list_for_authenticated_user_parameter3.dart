enum IssuesListForAuthenticatedUserParameter3 {
  created._('created'),
  updated._('updated'),
  comments._('comments');

  const IssuesListForAuthenticatedUserParameter3._(this.value);

  /// Creates a IssuesListForAuthenticatedUserParameter3 from a json string.
  factory IssuesListForAuthenticatedUserParameter3.fromJson(String json) {
    return IssuesListForAuthenticatedUserParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesListForAuthenticatedUserParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesListForAuthenticatedUserParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesListForAuthenticatedUserParameter3.fromJson(json);
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
