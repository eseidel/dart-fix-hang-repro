/// The reason that the alert was dismissed.
enum DependabotAlertDismissedReason {
  fixStarted._('fix_started'),
  inaccurate._('inaccurate'),
  noBandwidth._('no_bandwidth'),
  notUsed._('not_used'),
  tolerableRisk._('tolerable_risk');

  const DependabotAlertDismissedReason._(this.value);

  /// Creates a DependabotAlertDismissedReason from a json string.
  factory DependabotAlertDismissedReason.fromJson(String json) {
    return DependabotAlertDismissedReason.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotAlertDismissedReason value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertDismissedReason? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependabotAlertDismissedReason.fromJson(json);
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
