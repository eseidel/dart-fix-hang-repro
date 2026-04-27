/// The level of permission to grant the access token to view and manage GPG
/// keys belonging to a user.
enum AppPermissionsGpgKeys {
  read._('read'),
  write._('write');

  const AppPermissionsGpgKeys._(this.value);

  /// Creates a AppPermissionsGpgKeys from a json string.
  factory AppPermissionsGpgKeys.fromJson(String json) {
    return AppPermissionsGpgKeys.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AppPermissionsGpgKeys value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsGpgKeys? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsGpgKeys.fromJson(json);
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
