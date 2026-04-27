/// The level at which the comment is targeted.
enum PullsCreateReviewCommentRequestSubjectType {
  line._('line'),
  file._('file');

  const PullsCreateReviewCommentRequestSubjectType._(this.value);

  /// Creates a PullsCreateReviewCommentRequestSubjectType from a json string.
  factory PullsCreateReviewCommentRequestSubjectType.fromJson(String json) {
    return PullsCreateReviewCommentRequestSubjectType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PullsCreateReviewCommentRequestSubjectType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsCreateReviewCommentRequestSubjectType? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return PullsCreateReviewCommentRequestSubjectType.fromJson(json);
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
