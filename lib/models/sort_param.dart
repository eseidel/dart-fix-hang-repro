enum SortParam {
  created._('created'),
  updated._('updated');

  const SortParam._(this.value);

  /// Creates a SortParam from a json string.
  factory SortParam.fromJson(String json) {
    return SortParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown SortParam value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SortParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SortParam.fromJson(json);
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
