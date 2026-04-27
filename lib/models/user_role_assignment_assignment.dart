/// Determines if the user has a direct, indirect, or mixed relationship to a
/// role
/// example: `'direct'`
enum UserRoleAssignmentAssignment {
  direct._('direct'),
  indirect._('indirect'),
  mixed._('mixed');

  const UserRoleAssignmentAssignment._(this.value);

  /// Creates a UserRoleAssignmentAssignment from a json string.
  factory UserRoleAssignmentAssignment.fromJson(String json) {
    return UserRoleAssignmentAssignment.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown UserRoleAssignmentAssignment value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UserRoleAssignmentAssignment? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return UserRoleAssignmentAssignment.fromJson(json);
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
