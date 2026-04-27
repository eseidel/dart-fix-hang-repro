// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
/// The default value for a squash merge commit message:
///
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
enum ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage {
  prBody._('PR_BODY'),
  commitMessages._('COMMIT_MESSAGES'),
  blank._('BLANK');

  const ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage._(
    this.value,
  );

  /// Creates a ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage from a json string.
  factory ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage.fromJson(
    String json,
  ) {
    return ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposCreateForAuthenticatedUserRequestSquashMergeCommitMessage.fromJson(
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
