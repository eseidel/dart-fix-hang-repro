/// The type of repositories in the organization that can access the variable.
/// `selected` means only the repositories specified by
/// `selected_repository_ids` can access the variable.
enum ActionsUpdateOrgVariableRequestVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const ActionsUpdateOrgVariableRequestVisibility._(this.value);

  /// Creates a ActionsUpdateOrgVariableRequestVisibility from a json string.
  factory ActionsUpdateOrgVariableRequestVisibility.fromJson(String json) {
    return ActionsUpdateOrgVariableRequestVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsUpdateOrgVariableRequestVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsUpdateOrgVariableRequestVisibility? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ActionsUpdateOrgVariableRequestVisibility.fromJson(json);
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
