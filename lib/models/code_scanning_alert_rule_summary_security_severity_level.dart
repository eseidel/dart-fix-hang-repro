/// The security severity of the alert.
enum CodeScanningAlertRuleSummarySecuritySeverityLevel {
  low._('low'),
  medium._('medium'),
  high._('high'),
  critical._('critical');

  const CodeScanningAlertRuleSummarySecuritySeverityLevel._(this.value);

  /// Creates a CodeScanningAlertRuleSummarySecuritySeverityLevel from a json string.
  factory CodeScanningAlertRuleSummarySecuritySeverityLevel.fromJson(
    String json,
  ) {
    return CodeScanningAlertRuleSummarySecuritySeverityLevel.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningAlertRuleSummarySecuritySeverityLevel value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningAlertRuleSummarySecuritySeverityLevel? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeScanningAlertRuleSummarySecuritySeverityLevel.fromJson(json);
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
