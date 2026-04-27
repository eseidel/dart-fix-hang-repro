/// The status of the runner.
/// example: `'Ready'`
enum ActionsHostedRunnerStatus {
  ready._('Ready'),
  provisioning._('Provisioning'),
  shutdown._('Shutdown'),
  deleting._('Deleting'),
  stuck._('Stuck');

  const ActionsHostedRunnerStatus._(this.value);

  /// Creates a ActionsHostedRunnerStatus from a json string.
  factory ActionsHostedRunnerStatus.fromJson(String json) {
    return ActionsHostedRunnerStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsHostedRunnerStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsHostedRunnerStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActionsHostedRunnerStatus.fromJson(json);
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
