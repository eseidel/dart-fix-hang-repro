/// The level of permission to grant the access token to search repositories,
/// list collaborators, and access repository metadata.
enum AppPermissionsMetadata {
  read._('read'),
  write._('write');

  const AppPermissionsMetadata._(this.value);

  /// Creates a AppPermissionsMetadata from a json string.
  factory AppPermissionsMetadata.fromJson(String json) {
    return AppPermissionsMetadata.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AppPermissionsMetadata value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsMetadata? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsMetadata.fromJson(json);
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
