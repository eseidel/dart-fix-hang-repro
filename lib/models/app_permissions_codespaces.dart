/// The level of permission to grant the access token to create, edit, delete,
/// and list Codespaces.
enum AppPermissionsCodespaces {
  read._('read'),
  write._('write');

  const AppPermissionsCodespaces._(this.value);

  /// Creates a AppPermissionsCodespaces from a json string.
  factory AppPermissionsCodespaces.fromJson(String json) {
    return AppPermissionsCodespaces.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsCodespaces value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsCodespaces? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsCodespaces.fromJson(json);
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
