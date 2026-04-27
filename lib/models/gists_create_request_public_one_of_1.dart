/// example: `'true'`
enum GistsCreateRequestPublicOneOf1 {
  true_._('true'),
  false_._('false');

  const GistsCreateRequestPublicOneOf1._(this.value);

  /// Creates a GistsCreateRequestPublicOneOf1 from a json string.
  factory GistsCreateRequestPublicOneOf1.fromJson(String json) {
    return GistsCreateRequestPublicOneOf1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown GistsCreateRequestPublicOneOf1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GistsCreateRequestPublicOneOf1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return GistsCreateRequestPublicOneOf1.fromJson(json);
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
