/// example: `'"DISMISS"'`
enum PullsDismissReviewRequestEvent {
  dismiss._('DISMISS');

  const PullsDismissReviewRequestEvent._(this.value);

  /// Creates a PullsDismissReviewRequestEvent from a json string.
  factory PullsDismissReviewRequestEvent.fromJson(String json) {
    return PullsDismissReviewRequestEvent.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PullsDismissReviewRequestEvent value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsDismissReviewRequestEvent? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsDismissReviewRequestEvent.fromJson(json);
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
