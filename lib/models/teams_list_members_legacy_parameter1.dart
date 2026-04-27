enum TeamsListMembersLegacyParameter1 {
  member._('member'),
  maintainer._('maintainer'),
  all._('all');

  const TeamsListMembersLegacyParameter1._(this.value);

  /// Creates a TeamsListMembersLegacyParameter1 from a json string.
  factory TeamsListMembersLegacyParameter1.fromJson(String json) {
    return TeamsListMembersLegacyParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown TeamsListMembersLegacyParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsListMembersLegacyParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return TeamsListMembersLegacyParameter1.fromJson(json);
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
