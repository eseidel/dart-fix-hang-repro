/// The state of the status.
/// example: `'success'`
enum DeploymentStatusState {
  error._('error'),
  failure._('failure'),
  inactive._('inactive'),
  pending._('pending'),
  success._('success'),
  queued._('queued'),
  inProgress._('in_progress');

  const DeploymentStatusState._(this.value);

  /// Creates a DeploymentStatusState from a json string.
  factory DeploymentStatusState.fromJson(String json) {
    return DeploymentStatusState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown DeploymentStatusState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentStatusState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DeploymentStatusState.fromJson(json);
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
