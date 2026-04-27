/// The level of permission to grant the access token for repository creation,
/// deletion, settings, teams, and collaborators creation.
enum AppPermissionsAdministration {
  read._('read'),
  write._('write');

  const AppPermissionsAdministration._(this.value);

  /// Creates a AppPermissionsAdministration from a json string.
  factory AppPermissionsAdministration.fromJson(String json) {
    return AppPermissionsAdministration.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsAdministration value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsAdministration? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsAdministration.fromJson(json);
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
