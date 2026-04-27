/// The level of permission to grant the access token to update GitHub Actions
/// workflow files.
enum AppPermissionsWorkflows {
  write._('write');

  const AppPermissionsWorkflows._(this.value);

  /// Creates a AppPermissionsWorkflows from a json string.
  factory AppPermissionsWorkflows.fromJson(String json) {
    return AppPermissionsWorkflows.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AppPermissionsWorkflows value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsWorkflows? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsWorkflows.fromJson(json);
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
