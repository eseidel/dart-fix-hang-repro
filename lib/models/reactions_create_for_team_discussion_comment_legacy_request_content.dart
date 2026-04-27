/// The [reaction
/// type](https://docs.github.com/rest/reactions/reactions#about-reactions) to
/// add to the team discussion comment.
enum ReactionsCreateForTeamDiscussionCommentLegacyRequestContent {
  plus1._('+1'),
  minus1._('-1'),
  laugh._('laugh'),
  confused._('confused'),
  heart._('heart'),
  hooray._('hooray'),
  rocket._('rocket'),
  eyes._('eyes');

  const ReactionsCreateForTeamDiscussionCommentLegacyRequestContent._(
    this.value,
  );

  /// Creates a ReactionsCreateForTeamDiscussionCommentLegacyRequestContent from a json string.
  factory ReactionsCreateForTeamDiscussionCommentLegacyRequestContent.fromJson(
    String json,
  ) {
    return ReactionsCreateForTeamDiscussionCommentLegacyRequestContent.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ReactionsCreateForTeamDiscussionCommentLegacyRequestContent value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReactionsCreateForTeamDiscussionCommentLegacyRequestContent?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReactionsCreateForTeamDiscussionCommentLegacyRequestContent.fromJson(
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
