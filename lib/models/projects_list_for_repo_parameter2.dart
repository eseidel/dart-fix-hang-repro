enum ProjectsListForRepoParameter2 {
  open._('open'),
  closed._('closed'),
  all._('all');

  const ProjectsListForRepoParameter2._(this.value);

  /// Creates a ProjectsListForRepoParameter2 from a json string.
  factory ProjectsListForRepoParameter2.fromJson(String json) {
    return ProjectsListForRepoParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ProjectsListForRepoParameter2 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsListForRepoParameter2? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ProjectsListForRepoParameter2.fromJson(json);
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
