/// The severity of the advisory.
enum DependabotAlertSecurityAdvisorySeverity {
  low._('low'),
  medium._('medium'),
  high._('high'),
  critical._('critical');

  const DependabotAlertSecurityAdvisorySeverity._(this.value);

  /// Creates a DependabotAlertSecurityAdvisorySeverity from a json string.
  factory DependabotAlertSecurityAdvisorySeverity.fromJson(String json) {
    return DependabotAlertSecurityAdvisorySeverity.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotAlertSecurityAdvisorySeverity value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertSecurityAdvisorySeverity? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependabotAlertSecurityAdvisorySeverity.fromJson(json);
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
