/// The level of permission to grant the access token to view and manage users
/// blocked by the organization.
enum AppPermissionsOrganizationUserBlocking {
  read._('read'),
  write._('write');

  const AppPermissionsOrganizationUserBlocking._(this.value);

  /// Creates a AppPermissionsOrganizationUserBlocking from a json string.
  factory AppPermissionsOrganizationUserBlocking.fromJson(String json) {
    return AppPermissionsOrganizationUserBlocking.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsOrganizationUserBlocking value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsOrganizationUserBlocking? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsOrganizationUserBlocking.fromJson(json);
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
