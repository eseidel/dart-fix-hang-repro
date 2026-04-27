/// The type of advisory identifier.
enum DependabotAlertSecurityAdvisoryIdentifiersInnerType {
  cve._('CVE'),
  ghsa._('GHSA');

  const DependabotAlertSecurityAdvisoryIdentifiersInnerType._(this.value);

  /// Creates a DependabotAlertSecurityAdvisoryIdentifiersInnerType from a json string.
  factory DependabotAlertSecurityAdvisoryIdentifiersInnerType.fromJson(
    String json,
  ) {
    return DependabotAlertSecurityAdvisoryIdentifiersInnerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotAlertSecurityAdvisoryIdentifiersInnerType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertSecurityAdvisoryIdentifiersInnerType? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependabotAlertSecurityAdvisoryIdentifiersInnerType.fromJson(json);
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
