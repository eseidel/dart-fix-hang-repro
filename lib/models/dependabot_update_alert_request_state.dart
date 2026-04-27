/// The state of the Dependabot alert.
/// A `dismissed_reason` must be provided when setting the state to `dismissed`.
enum DependabotUpdateAlertRequestState {
  dismissed._('dismissed'),
  open._('open');

  const DependabotUpdateAlertRequestState._(this.value);

  /// Creates a DependabotUpdateAlertRequestState from a json string.
  factory DependabotUpdateAlertRequestState.fromJson(String json) {
    return DependabotUpdateAlertRequestState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotUpdateAlertRequestState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotUpdateAlertRequestState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependabotUpdateAlertRequestState.fromJson(json);
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
