/// The level at which the comment is targeted, can be a diff line or a file.
enum PullRequestReviewCommentSubjectType {
  line._('line'),
  file._('file');

  const PullRequestReviewCommentSubjectType._(this.value);

  /// Creates a PullRequestReviewCommentSubjectType from a json string.
  factory PullRequestReviewCommentSubjectType.fromJson(String json) {
    return PullRequestReviewCommentSubjectType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PullRequestReviewCommentSubjectType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullRequestReviewCommentSubjectType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullRequestReviewCommentSubjectType.fromJson(json);
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
