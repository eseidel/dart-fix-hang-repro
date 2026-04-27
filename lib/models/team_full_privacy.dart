/// The level of privacy this team should have
/// example: `'closed'`
enum TeamFullPrivacy {
  closed._('closed'),
  secret._('secret');

  const TeamFullPrivacy._(this.value);

  /// Creates a TeamFullPrivacy from a json string.
  factory TeamFullPrivacy.fromJson(String json) {
    return TeamFullPrivacy.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown TeamFullPrivacy value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamFullPrivacy? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return TeamFullPrivacy.fromJson(json);
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
