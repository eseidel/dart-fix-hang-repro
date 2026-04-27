/// The level of permission to grant the access token for issues and related
/// comments, assignees, labels, and milestones.
enum AppPermissionsIssues {
  read._('read'),
  write._('write');

  const AppPermissionsIssues._(this.value);

  /// Creates a AppPermissionsIssues from a json string.
  factory AppPermissionsIssues.fromJson(String json) {
    return AppPermissionsIssues.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AppPermissionsIssues value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsIssues? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsIssues.fromJson(json);
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
