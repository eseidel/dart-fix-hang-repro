/// The severity of the alert.
enum CodeScanningAlertRuleSummarySeverity {
  none._('none'),
  note._('note'),
  warning._('warning'),
  error._('error');

  const CodeScanningAlertRuleSummarySeverity._(this.value);

  /// Creates a CodeScanningAlertRuleSummarySeverity from a json string.
  factory CodeScanningAlertRuleSummarySeverity.fromJson(String json) {
    return CodeScanningAlertRuleSummarySeverity.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeScanningAlertRuleSummarySeverity value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningAlertRuleSummarySeverity? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningAlertRuleSummarySeverity.fromJson(json);
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
