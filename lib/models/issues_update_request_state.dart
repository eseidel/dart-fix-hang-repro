/// The open or closed state of the issue.
enum IssuesUpdateRequestState {
  open._('open'),
  closed._('closed');

  const IssuesUpdateRequestState._(this.value);

  /// Creates a IssuesUpdateRequestState from a json string.
  factory IssuesUpdateRequestState.fromJson(String json) {
    return IssuesUpdateRequestState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesUpdateRequestState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesUpdateRequestState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesUpdateRequestState.fromJson(json);
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
