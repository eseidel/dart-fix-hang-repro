/// The severity of the advisory.
enum GlobalAdvisorySeverity {
  critical._('critical'),
  high._('high'),
  medium._('medium'),
  low._('low'),
  unknown._('unknown');

  const GlobalAdvisorySeverity._(this.value);

  /// Creates a GlobalAdvisorySeverity from a json string.
  factory GlobalAdvisorySeverity.fromJson(String json) {
    return GlobalAdvisorySeverity.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown GlobalAdvisorySeverity value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static GlobalAdvisorySeverity? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return GlobalAdvisorySeverity.fromJson(json);
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
