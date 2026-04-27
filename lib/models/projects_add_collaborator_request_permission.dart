/// The permission to grant the collaborator.
/// example: `'write'`
enum ProjectsAddCollaboratorRequestPermission {
  read._('read'),
  write._('write'),
  admin._('admin');

  const ProjectsAddCollaboratorRequestPermission._(this.value);

  /// Creates a ProjectsAddCollaboratorRequestPermission from a json string.
  factory ProjectsAddCollaboratorRequestPermission.fromJson(String json) {
    return ProjectsAddCollaboratorRequestPermission.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ProjectsAddCollaboratorRequestPermission value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsAddCollaboratorRequestPermission? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ProjectsAddCollaboratorRequestPermission.fromJson(json);
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
