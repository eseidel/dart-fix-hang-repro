/// Whether deployment to the environment(s) was approved or rejected or pending
/// (with comments)
/// example: `'approved'`
enum EnvironmentApprovalsState {
  approved._('approved'),
  rejected._('rejected'),
  pending._('pending');

  const EnvironmentApprovalsState._(this.value);

  /// Creates a EnvironmentApprovalsState from a json string.
  factory EnvironmentApprovalsState.fromJson(String json) {
    return EnvironmentApprovalsState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown EnvironmentApprovalsState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentApprovalsState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return EnvironmentApprovalsState.fromJson(json);
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
