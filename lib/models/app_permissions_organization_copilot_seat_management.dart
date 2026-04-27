/// The level of permission to grant the access token for managing access to
/// GitHub Copilot for members of an organization with a Copilot Business
/// subscription. This property is in public preview and is subject to change.
enum AppPermissionsOrganizationCopilotSeatManagement {
  write._('write');

  const AppPermissionsOrganizationCopilotSeatManagement._(this.value);

  /// Creates a AppPermissionsOrganizationCopilotSeatManagement from a json string.
  factory AppPermissionsOrganizationCopilotSeatManagement.fromJson(
    String json,
  ) {
    return AppPermissionsOrganizationCopilotSeatManagement.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsOrganizationCopilotSeatManagement value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsOrganizationCopilotSeatManagement? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return AppPermissionsOrganizationCopilotSeatManagement.fromJson(json);
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
