/// The phase of the lifecycle that the job is currently in.
/// example: `'queued'`
enum JobStepsInnerStatus {
  queued._('queued'),
  inProgress._('in_progress'),
  completed._('completed');

  const JobStepsInnerStatus._(this.value);

  /// Creates a JobStepsInnerStatus from a json string.
  factory JobStepsInnerStatus.fromJson(String json) {
    return JobStepsInnerStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown JobStepsInnerStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static JobStepsInnerStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return JobStepsInnerStatus.fromJson(json);
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
