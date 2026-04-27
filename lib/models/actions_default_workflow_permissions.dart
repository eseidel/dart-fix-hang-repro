/// The default workflow permissions granted to the GITHUB_TOKEN when running
/// workflows.
enum ActionsDefaultWorkflowPermissions {
  read._('read'),
  write._('write');

  const ActionsDefaultWorkflowPermissions._(this.value);

  /// Creates a ActionsDefaultWorkflowPermissions from a json string.
  factory ActionsDefaultWorkflowPermissions.fromJson(String json) {
    return ActionsDefaultWorkflowPermissions.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsDefaultWorkflowPermissions value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsDefaultWorkflowPermissions? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActionsDefaultWorkflowPermissions.fromJson(json);
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
