/// The level of permission to grant the access token to list and manage
/// repositories a user is starring.
enum AppPermissionsStarring {
  read._('read'),
  write._('write');

  const AppPermissionsStarring._(this.value);

  /// Creates a AppPermissionsStarring from a json string.
  factory AppPermissionsStarring.fromJson(String json) {
    return AppPermissionsStarring.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AppPermissionsStarring value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsStarring? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsStarring.fromJson(json);
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
