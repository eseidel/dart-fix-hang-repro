/// The level of permission to grant the access token to view events triggered
/// by an activity in an organization.
enum AppPermissionsOrganizationEvents {
  read._('read');

  const AppPermissionsOrganizationEvents._(this.value);

  /// Creates a AppPermissionsOrganizationEvents from a json string.
  factory AppPermissionsOrganizationEvents.fromJson(String json) {
    return AppPermissionsOrganizationEvents.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsOrganizationEvents value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsOrganizationEvents? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsOrganizationEvents.fromJson(json);
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
