enum ProjectsListForUserParameter1 {
  open._('open'),
  closed._('closed'),
  all._('all');

  const ProjectsListForUserParameter1._(this.value);

  /// Creates a ProjectsListForUserParameter1 from a json string.
  factory ProjectsListForUserParameter1.fromJson(String json) {
    return ProjectsListForUserParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ProjectsListForUserParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsListForUserParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ProjectsListForUserParameter1.fromJson(json);
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
