/// The review action you want to perform. The review actions include:
/// `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the
/// API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action
/// state to `PENDING`, which means you will need to re-submit the pull request
/// review using a review action.
enum PullsSubmitReviewRequestEvent {
  approve._('APPROVE'),
  requestChanges._('REQUEST_CHANGES'),
  comment._('COMMENT');

  const PullsSubmitReviewRequestEvent._(this.value);

  /// Creates a PullsSubmitReviewRequestEvent from a json string.
  factory PullsSubmitReviewRequestEvent.fromJson(String json) {
    return PullsSubmitReviewRequestEvent.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PullsSubmitReviewRequestEvent value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsSubmitReviewRequestEvent? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsSubmitReviewRequestEvent.fromJson(json);
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
