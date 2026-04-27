enum ReactionsListForPullRequestReviewCommentParameter3 {
  plus1._('+1'),
  minus1._('-1'),
  laugh._('laugh'),
  confused._('confused'),
  heart._('heart'),
  hooray._('hooray'),
  rocket._('rocket'),
  eyes._('eyes');

  const ReactionsListForPullRequestReviewCommentParameter3._(this.value);

  /// Creates a ReactionsListForPullRequestReviewCommentParameter3 from a json string.
  factory ReactionsListForPullRequestReviewCommentParameter3.fromJson(
    String json,
  ) {
    return ReactionsListForPullRequestReviewCommentParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReactionsListForPullRequestReviewCommentParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReactionsListForPullRequestReviewCommentParameter3? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReactionsListForPullRequestReviewCommentParameter3.fromJson(json);
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
