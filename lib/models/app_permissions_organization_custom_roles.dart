/// The level of permission to grant the access token for custom repository
/// roles management.
enum AppPermissionsOrganizationCustomRoles {
  read._('read'),
  write._('write');

  const AppPermissionsOrganizationCustomRoles._(this.value);

  /// Creates a AppPermissionsOrganizationCustomRoles from a json string.
  factory AppPermissionsOrganizationCustomRoles.fromJson(String json) {
    return AppPermissionsOrganizationCustomRoles.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsOrganizationCustomRoles value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsOrganizationCustomRoles? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsOrganizationCustomRoles.fromJson(json);
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
