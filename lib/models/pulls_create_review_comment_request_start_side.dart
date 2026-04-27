/// **Required when using multi-line comments unless using `in_reply_to`**. The
/// `start_side` is the starting side of the diff that the comment applies to.
/// Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see
/// "[Commenting on a pull
/// request](https://docs.github.com/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)"
/// in the GitHub Help documentation. See `side` in this table for additional
/// context.
enum PullsCreateReviewCommentRequestStartSide {
  left._('LEFT'),
  right._('RIGHT'),
  side._('side');

  const PullsCreateReviewCommentRequestStartSide._(this.value);

  /// Creates a PullsCreateReviewCommentRequestStartSide from a json string.
  factory PullsCreateReviewCommentRequestStartSide.fromJson(String json) {
    return PullsCreateReviewCommentRequestStartSide.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PullsCreateReviewCommentRequestStartSide value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsCreateReviewCommentRequestStartSide? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsCreateReviewCommentRequestStartSide.fromJson(json);
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
