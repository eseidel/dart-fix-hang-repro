/// The level at which the comment is targeted, can be a diff line or a file.
enum ReviewCommentSubjectType {
  line._('line'),
  file._('file');

  const ReviewCommentSubjectType._(this.value);

  /// Creates a ReviewCommentSubjectType from a json string.
  factory ReviewCommentSubjectType.fromJson(String json) {
    return ReviewCommentSubjectType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReviewCommentSubjectType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReviewCommentSubjectType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReviewCommentSubjectType.fromJson(json);
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
