/// The reaction to use
/// example: `'heart'`
enum ReactionContent {
  plus1._('+1'),
  minus1._('-1'),
  laugh._('laugh'),
  confused._('confused'),
  heart._('heart'),
  hooray._('hooray'),
  rocket._('rocket'),
  eyes._('eyes');

  const ReactionContent._(this.value);

  /// Creates a ReactionContent from a json string.
  factory ReactionContent.fromJson(String json) {
    return ReactionContent.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown ReactionContent value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReactionContent? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReactionContent.fromJson(json);
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
