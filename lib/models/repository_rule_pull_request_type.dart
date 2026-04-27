enum RepositoryRulePullRequestType {
  pullRequest._('pull_request');

  const RepositoryRulePullRequestType._(this.value);

  /// Creates a RepositoryRulePullRequestType from a json string.
  factory RepositoryRulePullRequestType.fromJson(String json) {
    return RepositoryRulePullRequestType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRulePullRequestType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRulePullRequestType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRulePullRequestType.fromJson(json);
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
