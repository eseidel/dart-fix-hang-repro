/// The phase of the lifecycle that the check is currently in. Statuses of
/// waiting, requested, and pending are reserved for GitHub Actions check runs.
/// example: `'queued'`
enum CheckRunStatus {
  queued._('queued'),
  inProgress._('in_progress'),
  completed._('completed'),
  waiting._('waiting'),
  requested._('requested'),
  pending._('pending');

  const CheckRunStatus._(this.value);

  /// Creates a CheckRunStatus from a json string.
  factory CheckRunStatus.fromJson(String json) {
    return CheckRunStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown CheckRunStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CheckRunStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CheckRunStatus.fromJson(json);
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
