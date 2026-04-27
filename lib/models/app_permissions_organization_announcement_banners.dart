// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
/// The level of permission to grant the access token to view and manage
/// announcement banners for an organization.
enum AppPermissionsOrganizationAnnouncementBanners {
  read._('read'),
  write._('write');

  const AppPermissionsOrganizationAnnouncementBanners._(this.value);

  /// Creates a AppPermissionsOrganizationAnnouncementBanners from a json string.
  factory AppPermissionsOrganizationAnnouncementBanners.fromJson(String json) {
    return AppPermissionsOrganizationAnnouncementBanners.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsOrganizationAnnouncementBanners value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsOrganizationAnnouncementBanners? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return AppPermissionsOrganizationAnnouncementBanners.fromJson(json);
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
