/// State of this Pull Request. Either `open` or `closed`.
/// example: `'open'`
enum PullRequestState {
  open._('open'),
  closed._('closed');

  const PullRequestState._(this.value);

  /// Creates a PullRequestState from a json string.
  factory PullRequestState.fromJson(String json) {
    return PullRequestState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PullRequestState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullRequestState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullRequestState.fromJson(json);
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
