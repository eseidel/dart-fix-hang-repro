/// example: `'active'`
enum WorkflowState {
  active._('active'),
  deleted._('deleted'),
  disabledFork._('disabled_fork'),
  disabledInactivity._('disabled_inactivity'),
  disabledManually._('disabled_manually');

  const WorkflowState._(this.value);

  /// Creates a WorkflowState from a json string.
  factory WorkflowState.fromJson(String json) {
    return WorkflowState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown WorkflowState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return WorkflowState.fromJson(json);
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
