enum SearchIssuesAndPullRequestsParameter1 {
  comments._('comments'),
  reactions._('reactions'),
  reactionsPlus1._('reactions-+1'),
  reactions1._('reactions--1'),
  reactionsSmile._('reactions-smile'),
  reactionsThinkingFace._('reactions-thinking_face'),
  reactionsHeart._('reactions-heart'),
  reactionsTada._('reactions-tada'),
  interactions._('interactions'),
  created._('created'),
  updated._('updated');

  const SearchIssuesAndPullRequestsParameter1._(this.value);

  /// Creates a SearchIssuesAndPullRequestsParameter1 from a json string.
  factory SearchIssuesAndPullRequestsParameter1.fromJson(String json) {
    return SearchIssuesAndPullRequestsParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SearchIssuesAndPullRequestsParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchIssuesAndPullRequestsParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SearchIssuesAndPullRequestsParameter1.fromJson(json);
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
