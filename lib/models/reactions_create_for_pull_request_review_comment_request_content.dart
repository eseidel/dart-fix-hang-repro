/// The [reaction
/// type](https://docs.github.com/rest/reactions/reactions#about-reactions) to
/// add to the pull request review comment.
enum ReactionsCreateForPullRequestReviewCommentRequestContent {
  plus1._('+1'),
  minus1._('-1'),
  laugh._('laugh'),
  confused._('confused'),
  heart._('heart'),
  hooray._('hooray'),
  rocket._('rocket'),
  eyes._('eyes');

  const ReactionsCreateForPullRequestReviewCommentRequestContent._(this.value);

  /// Creates a ReactionsCreateForPullRequestReviewCommentRequestContent from a json string.
  factory ReactionsCreateForPullRequestReviewCommentRequestContent.fromJson(
    String json,
  ) {
    return ReactionsCreateForPullRequestReviewCommentRequestContent.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ReactionsCreateForPullRequestReviewCommentRequestContent value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReactionsCreateForPullRequestReviewCommentRequestContent?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReactionsCreateForPullRequestReviewCommentRequestContent.fromJson(
      json,
    );
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
