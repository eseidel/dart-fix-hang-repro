/// **Required when `state` is `dismissed`.** A reason for dismissing the alert.
enum DependabotUpdateAlertRequestDismissedReason {
  fixStarted._('fix_started'),
  inaccurate._('inaccurate'),
  noBandwidth._('no_bandwidth'),
  notUsed._('not_used'),
  tolerableRisk._('tolerable_risk');

  const DependabotUpdateAlertRequestDismissedReason._(this.value);

  /// Creates a DependabotUpdateAlertRequestDismissedReason from a json string.
  factory DependabotUpdateAlertRequestDismissedReason.fromJson(String json) {
    return DependabotUpdateAlertRequestDismissedReason.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotUpdateAlertRequestDismissedReason value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotUpdateAlertRequestDismissedReason? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependabotUpdateAlertRequestDismissedReason.fromJson(json);
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
