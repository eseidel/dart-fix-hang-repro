/// The type of label. Read-only labels are applied automatically when the
/// runner is configured.
enum RunnerLabelType {
  readOnly._('read-only'),
  custom._('custom');

  const RunnerLabelType._(this.value);

  /// Creates a RunnerLabelType from a json string.
  factory RunnerLabelType.fromJson(String json) {
    return RunnerLabelType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown RunnerLabelType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RunnerLabelType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RunnerLabelType.fromJson(json);
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
