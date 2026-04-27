/// The phase of the lifecycle that the check suite is currently in. Statuses of
/// waiting, requested, and pending are reserved for GitHub Actions check
/// suites.
/// example: `'completed'`
enum CheckSuiteStatus {
  queued._('queued'),
  inProgress._('in_progress'),
  completed._('completed'),
  waiting._('waiting'),
  requested._('requested'),
  pending._('pending');

  const CheckSuiteStatus._(this.value);

  /// Creates a CheckSuiteStatus from a json string.
  factory CheckSuiteStatus.fromJson(String json) {
    return CheckSuiteStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown CheckSuiteStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CheckSuiteStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CheckSuiteStatus.fromJson(json);
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
