/// The phase of the lifecycle that the job is currently in.
/// example: `'queued'`
enum JobStatus {
  queued._('queued'),
  inProgress._('in_progress'),
  completed._('completed'),
  waiting._('waiting'),
  requested._('requested'),
  pending._('pending');

  const JobStatus._(this.value);

  /// Creates a JobStatus from a json string.
  factory JobStatus.fromJson(String json) {
    return JobStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown JobStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static JobStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return JobStatus.fromJson(json);
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
