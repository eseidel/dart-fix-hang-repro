enum PerParam {
  day._('day'),
  week._('week');

  const PerParam._(this.value);

  /// Creates a PerParam from a json string.
  factory PerParam.fromJson(String json) {
    return PerParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown PerParam value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PerParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PerParam.fromJson(json);
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
