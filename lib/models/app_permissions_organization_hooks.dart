/// The level of permission to grant the access token to manage the post-receive
/// hooks for an organization.
enum AppPermissionsOrganizationHooks {
  read._('read'),
  write._('write');

  const AppPermissionsOrganizationHooks._(this.value);

  /// Creates a AppPermissionsOrganizationHooks from a json string.
  factory AppPermissionsOrganizationHooks.fromJson(String json) {
    return AppPermissionsOrganizationHooks.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsOrganizationHooks value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsOrganizationHooks? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsOrganizationHooks.fromJson(json);
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
