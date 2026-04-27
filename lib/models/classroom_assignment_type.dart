/// Whether it's a group assignment or individual assignment.
/// example: `'individual'`
enum ClassroomAssignmentType {
  individual._('individual'),
  group._('group');

  const ClassroomAssignmentType._(this.value);

  /// Creates a ClassroomAssignmentType from a json string.
  factory ClassroomAssignmentType.fromJson(String json) {
    return ClassroomAssignmentType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown ClassroomAssignmentType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ClassroomAssignmentType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ClassroomAssignmentType.fromJson(json);
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
