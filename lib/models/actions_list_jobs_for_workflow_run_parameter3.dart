enum ActionsListJobsForWorkflowRunParameter3 {
  latest._('latest'),
  all._('all');

  const ActionsListJobsForWorkflowRunParameter3._(this.value);

  /// Creates a ActionsListJobsForWorkflowRunParameter3 from a json string.
  factory ActionsListJobsForWorkflowRunParameter3.fromJson(String json) {
    return ActionsListJobsForWorkflowRunParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsListJobsForWorkflowRunParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsListJobsForWorkflowRunParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActionsListJobsForWorkflowRunParameter3.fromJson(json);
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
