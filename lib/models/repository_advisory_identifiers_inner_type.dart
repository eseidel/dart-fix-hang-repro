/// The type of identifier.
enum RepositoryAdvisoryIdentifiersInnerType {
  cve._('CVE'),
  ghsa._('GHSA');

  const RepositoryAdvisoryIdentifiersInnerType._(this.value);

  /// Creates a RepositoryAdvisoryIdentifiersInnerType from a json string.
  factory RepositoryAdvisoryIdentifiersInnerType.fromJson(String json) {
    return RepositoryAdvisoryIdentifiersInnerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryAdvisoryIdentifiersInnerType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryIdentifiersInnerType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryIdentifiersInnerType.fromJson(json);
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
