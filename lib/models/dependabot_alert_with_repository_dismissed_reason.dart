/// The reason that the alert was dismissed.
enum DependabotAlertWithRepositoryDismissedReason {
  fixStarted._('fix_started'),
  inaccurate._('inaccurate'),
  noBandwidth._('no_bandwidth'),
  notUsed._('not_used'),
  tolerableRisk._('tolerable_risk');

  const DependabotAlertWithRepositoryDismissedReason._(this.value);

  /// Creates a DependabotAlertWithRepositoryDismissedReason from a json string.
  factory DependabotAlertWithRepositoryDismissedReason.fromJson(String json) {
    return DependabotAlertWithRepositoryDismissedReason.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotAlertWithRepositoryDismissedReason value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertWithRepositoryDismissedReason? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependabotAlertWithRepositoryDismissedReason.fromJson(json);
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
