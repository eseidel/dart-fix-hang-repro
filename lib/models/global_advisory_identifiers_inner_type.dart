/// The type of identifier.
enum GlobalAdvisoryIdentifiersInnerType {
  cve._('CVE'),
  ghsa._('GHSA');

  const GlobalAdvisoryIdentifiersInnerType._(this.value);

  /// Creates a GlobalAdvisoryIdentifiersInnerType from a json string.
  factory GlobalAdvisoryIdentifiersInnerType.fromJson(String json) {
    return GlobalAdvisoryIdentifiersInnerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown GlobalAdvisoryIdentifiersInnerType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GlobalAdvisoryIdentifiersInnerType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return GlobalAdvisoryIdentifiersInnerType.fromJson(json);
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
