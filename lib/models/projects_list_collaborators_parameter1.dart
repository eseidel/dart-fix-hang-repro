enum ProjectsListCollaboratorsParameter1 {
  outside._('outside'),
  direct._('direct'),
  all._('all');

  const ProjectsListCollaboratorsParameter1._(this.value);

  /// Creates a ProjectsListCollaboratorsParameter1 from a json string.
  factory ProjectsListCollaboratorsParameter1.fromJson(String json) {
    return ProjectsListCollaboratorsParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ProjectsListCollaboratorsParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsListCollaboratorsParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ProjectsListCollaboratorsParameter1.fromJson(json);
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
