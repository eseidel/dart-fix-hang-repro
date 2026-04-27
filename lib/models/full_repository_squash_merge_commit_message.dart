/// The default value for a squash merge commit message:
///
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
/// example: `'PR_BODY'`
enum FullRepositorySquashMergeCommitMessage {
  prBody._('PR_BODY'),
  commitMessages._('COMMIT_MESSAGES'),
  blank._('BLANK');

  const FullRepositorySquashMergeCommitMessage._(this.value);

  /// Creates a FullRepositorySquashMergeCommitMessage from a json string.
  factory FullRepositorySquashMergeCommitMessage.fromJson(String json) {
    return FullRepositorySquashMergeCommitMessage.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown FullRepositorySquashMergeCommitMessage value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static FullRepositorySquashMergeCommitMessage? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return FullRepositorySquashMergeCommitMessage.fromJson(json);
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
