/// The role that this user should have in the team.
enum TeamsAddOrUpdateMembershipForUserInOrgRequestRole {
  member._('member'),
  maintainer._('maintainer');

  const TeamsAddOrUpdateMembershipForUserInOrgRequestRole._(this.value);

  /// Creates a TeamsAddOrUpdateMembershipForUserInOrgRequestRole from a json string.
  factory TeamsAddOrUpdateMembershipForUserInOrgRequestRole.fromJson(
    String json,
  ) {
    return TeamsAddOrUpdateMembershipForUserInOrgRequestRole.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown TeamsAddOrUpdateMembershipForUserInOrgRequestRole value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsAddOrUpdateMembershipForUserInOrgRequestRole? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return TeamsAddOrUpdateMembershipForUserInOrgRequestRole.fromJson(json);
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
