/// The type of the object we're tagging. Normally this is a `commit` but it can
/// also be a `tree` or a `blob`.
enum GitCreateTagRequestType {
  commit._('commit'),
  tree._('tree'),
  blob._('blob');

  const GitCreateTagRequestType._(this.value);

  /// Creates a GitCreateTagRequestType from a json string.
  factory GitCreateTagRequestType.fromJson(String json) {
    return GitCreateTagRequestType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown GitCreateTagRequestType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GitCreateTagRequestType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return GitCreateTagRequestType.fromJson(json);
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
