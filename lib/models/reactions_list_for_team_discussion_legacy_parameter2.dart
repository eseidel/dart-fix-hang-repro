enum ReactionsListForTeamDiscussionLegacyParameter2 {
  plus1._('+1'),
  minus1._('-1'),
  laugh._('laugh'),
  confused._('confused'),
  heart._('heart'),
  hooray._('hooray'),
  rocket._('rocket'),
  eyes._('eyes');

  const ReactionsListForTeamDiscussionLegacyParameter2._(this.value);

  /// Creates a ReactionsListForTeamDiscussionLegacyParameter2 from a json string.
  factory ReactionsListForTeamDiscussionLegacyParameter2.fromJson(String json) {
    return ReactionsListForTeamDiscussionLegacyParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReactionsListForTeamDiscussionLegacyParameter2 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReactionsListForTeamDiscussionLegacyParameter2? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReactionsListForTeamDiscussionLegacyParameter2.fromJson(json);
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
