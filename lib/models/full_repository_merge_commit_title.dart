/// The default value for a merge commit title.
///
///   - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g.,
/// Merge pull request #123 from branch-name).
/// example: `'PR_TITLE'`
enum FullRepositoryMergeCommitTitle {
  prTitle._('PR_TITLE'),
  mergeMessage._('MERGE_MESSAGE');

  const FullRepositoryMergeCommitTitle._(this.value);

  /// Creates a FullRepositoryMergeCommitTitle from a json string.
  factory FullRepositoryMergeCommitTitle.fromJson(String json) {
    return FullRepositoryMergeCommitTitle.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown FullRepositoryMergeCommitTitle value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static FullRepositoryMergeCommitTitle? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return FullRepositoryMergeCommitTitle.fromJson(json);
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
