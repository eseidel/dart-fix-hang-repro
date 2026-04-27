/// The level of permission to grant the access token to manage repository
/// projects, columns, and cards.
enum AppPermissionsRepositoryProjects {
  read._('read'),
  write._('write'),
  admin._('admin');

  const AppPermissionsRepositoryProjects._(this.value);

  /// Creates a AppPermissionsRepositoryProjects from a json string.
  factory AppPermissionsRepositoryProjects.fromJson(String json) {
    return AppPermissionsRepositoryProjects.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsRepositoryProjects value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsRepositoryProjects? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsRepositoryProjects.fromJson(json);
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
