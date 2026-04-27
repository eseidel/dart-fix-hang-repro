/// The level of permission to grant the access token for managing repository
/// environments.
enum AppPermissionsEnvironments {
  read._('read'),
  write._('write');

  const AppPermissionsEnvironments._(this.value);

  /// Creates a AppPermissionsEnvironments from a json string.
  factory AppPermissionsEnvironments.fromJson(String json) {
    return AppPermissionsEnvironments.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsEnvironments value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsEnvironments? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsEnvironments.fromJson(json);
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
