/// The state of the user's membership in the team.
enum TeamMembershipState {
  active._('active'),
  pending._('pending');

  const TeamMembershipState._(this.value);

  /// Creates a TeamMembershipState from a json string.
  factory TeamMembershipState.fromJson(String json) {
    return TeamMembershipState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown TeamMembershipState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamMembershipState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return TeamMembershipState.fromJson(json);
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
