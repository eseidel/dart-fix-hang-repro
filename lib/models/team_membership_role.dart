/// The role of the user in the team.
/// example: `'member'`
enum TeamMembershipRole {
  member._('member'),
  maintainer._('maintainer');

  const TeamMembershipRole._(this.value);

  /// Creates a TeamMembershipRole from a json string.
  factory TeamMembershipRole.fromJson(String json) {
    return TeamMembershipRole.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown TeamMembershipRole value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamMembershipRole? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return TeamMembershipRole.fromJson(json);
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
