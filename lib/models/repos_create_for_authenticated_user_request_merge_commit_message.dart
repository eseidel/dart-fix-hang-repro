/// The default value for a merge commit message.
///
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
enum ReposCreateForAuthenticatedUserRequestMergeCommitMessage {
  prBody._('PR_BODY'),
  prTitle._('PR_TITLE'),
  blank._('BLANK');

  const ReposCreateForAuthenticatedUserRequestMergeCommitMessage._(this.value);

  /// Creates a ReposCreateForAuthenticatedUserRequestMergeCommitMessage from a json string.
  factory ReposCreateForAuthenticatedUserRequestMergeCommitMessage.fromJson(
    String json,
  ) {
    return ReposCreateForAuthenticatedUserRequestMergeCommitMessage.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ReposCreateForAuthenticatedUserRequestMergeCommitMessage value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateForAuthenticatedUserRequestMergeCommitMessage?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposCreateForAuthenticatedUserRequestMergeCommitMessage.fromJson(
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
