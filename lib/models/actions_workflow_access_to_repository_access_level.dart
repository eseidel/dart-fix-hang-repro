/// Defines the level of access that workflows outside of the repository have to
/// actions and reusable workflows within the
/// repository.
///
/// `none` means the access is only possible from workflows in this repository.
/// `user` level access allows sharing across user owned private repositories
/// only. `organization` level access allows sharing across the organization.
enum ActionsWorkflowAccessToRepositoryAccessLevel {
  none._('none'),
  user._('user'),
  organization._('organization');

  const ActionsWorkflowAccessToRepositoryAccessLevel._(this.value);

  /// Creates a ActionsWorkflowAccessToRepositoryAccessLevel from a json string.
  factory ActionsWorkflowAccessToRepositoryAccessLevel.fromJson(String json) {
    return ActionsWorkflowAccessToRepositoryAccessLevel.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsWorkflowAccessToRepositoryAccessLevel value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsWorkflowAccessToRepositoryAccessLevel? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ActionsWorkflowAccessToRepositoryAccessLevel.fromJson(json);
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
