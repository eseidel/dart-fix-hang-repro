/// The state of the milestone. Either `open` or `closed`.
enum IssuesCreateMilestoneRequestState {
  open._('open'),
  closed._('closed');

  const IssuesCreateMilestoneRequestState._(this.value);

  /// Creates a IssuesCreateMilestoneRequestState from a json string.
  factory IssuesCreateMilestoneRequestState.fromJson(String json) {
    return IssuesCreateMilestoneRequestState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesCreateMilestoneRequestState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesCreateMilestoneRequestState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesCreateMilestoneRequestState.fromJson(json);
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
