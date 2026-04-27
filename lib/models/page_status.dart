/// The status of the most recent build of the Page.
/// example: `'built'`
enum PageStatus {
  built._('built'),
  building._('building'),
  errored._('errored');

  const PageStatus._(this.value);

  /// Creates a PageStatus from a json string.
  factory PageStatus.fromJson(String json) {
    return PageStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown PageStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PageStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PageStatus.fromJson(json);
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
