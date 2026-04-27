/// The level of permission to grant the access token for packages published to
/// GitHub Packages.
enum AppPermissionsPackages {
  read._('read'),
  write._('write');

  const AppPermissionsPackages._(this.value);

  /// Creates a AppPermissionsPackages from a json string.
  factory AppPermissionsPackages.fromJson(String json) {
    return AppPermissionsPackages.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AppPermissionsPackages value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsPackages? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsPackages.fromJson(json);
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
