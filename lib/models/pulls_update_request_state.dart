/// State of this Pull Request. Either `open` or `closed`.
enum PullsUpdateRequestState {
  open._('open'),
  closed._('closed');

  const PullsUpdateRequestState._(this.value);

  /// Creates a PullsUpdateRequestState from a json string.
  factory PullsUpdateRequestState.fromJson(String json) {
    return PullsUpdateRequestState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PullsUpdateRequestState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsUpdateRequestState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsUpdateRequestState.fromJson(json);
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
