enum ReactionsListForTeamDiscussionCommentInOrgParameter4 {
  plus1._('+1'),
  minus1._('-1'),
  laugh._('laugh'),
  confused._('confused'),
  heart._('heart'),
  hooray._('hooray'),
  rocket._('rocket'),
  eyes._('eyes');

  const ReactionsListForTeamDiscussionCommentInOrgParameter4._(this.value);

  /// Creates a ReactionsListForTeamDiscussionCommentInOrgParameter4 from a json string.
  factory ReactionsListForTeamDiscussionCommentInOrgParameter4.fromJson(
    String json,
  ) {
    return ReactionsListForTeamDiscussionCommentInOrgParameter4.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReactionsListForTeamDiscussionCommentInOrgParameter4 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReactionsListForTeamDiscussionCommentInOrgParameter4? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReactionsListForTeamDiscussionCommentInOrgParameter4.fromJson(json);
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
