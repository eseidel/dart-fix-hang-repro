enum DirectionParam {
  asc._('asc'),
  desc._('desc');

  const DirectionParam._(this.value);

  /// Creates a DirectionParam from a json string.
  factory DirectionParam.fromJson(String json) {
    return DirectionParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown DirectionParam value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DirectionParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DirectionParam.fromJson(json);
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
