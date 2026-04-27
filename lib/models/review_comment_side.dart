/// The side of the first line of the range for a multi-line comment.
enum ReviewCommentSide {
  left._('LEFT'),
  right._('RIGHT');

  const ReviewCommentSide._(this.value);

  /// Creates a ReviewCommentSide from a json string.
  factory ReviewCommentSide.fromJson(String json) {
    return ReviewCommentSide.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown ReviewCommentSide value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReviewCommentSide? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReviewCommentSide.fromJson(json);
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
