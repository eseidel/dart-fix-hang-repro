/// The state of the member in the organization. The `pending` state indicates
/// the user has not yet accepted an invitation.
/// example: `'active'`
enum OrgMembershipState {
  active._('active'),
  pending._('pending');

  const OrgMembershipState._(this.value);

  /// Creates a OrgMembershipState from a json string.
  factory OrgMembershipState.fromJson(String json) {
    return OrgMembershipState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown OrgMembershipState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgMembershipState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrgMembershipState.fromJson(json);
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
