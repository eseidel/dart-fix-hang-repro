enum RepositoryRulePullRequestParametersAllowedMergeMethodsInner {
  merge._('merge'),
  squash._('squash'),
  rebase._('rebase');

  const RepositoryRulePullRequestParametersAllowedMergeMethodsInner._(
    this.value,
  );

  /// Creates a RepositoryRulePullRequestParametersAllowedMergeMethodsInner from a json string.
  factory RepositoryRulePullRequestParametersAllowedMergeMethodsInner.fromJson(
    String json,
  ) {
    return RepositoryRulePullRequestParametersAllowedMergeMethodsInner.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown RepositoryRulePullRequestParametersAllowedMergeMethodsInner value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRulePullRequestParametersAllowedMergeMethodsInner?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRulePullRequestParametersAllowedMergeMethodsInner.fromJson(
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
