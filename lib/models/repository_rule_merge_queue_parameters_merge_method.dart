/// Method to use when merging changes from queued pull requests.
enum RepositoryRuleMergeQueueParametersMergeMethod {
  merge._('MERGE'),
  squash._('SQUASH'),
  rebase._('REBASE');

  const RepositoryRuleMergeQueueParametersMergeMethod._(this.value);

  /// Creates a RepositoryRuleMergeQueueParametersMergeMethod from a json string.
  factory RepositoryRuleMergeQueueParametersMergeMethod.fromJson(String json) {
    return RepositoryRuleMergeQueueParametersMergeMethod.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleMergeQueueParametersMergeMethod value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleMergeQueueParametersMergeMethod? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleMergeQueueParametersMergeMethod.fromJson(json);
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
