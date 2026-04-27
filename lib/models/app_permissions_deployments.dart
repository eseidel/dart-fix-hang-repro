/// The level of permission to grant the access token for deployments and
/// deployment statuses.
enum AppPermissionsDeployments {
  read._('read'),
  write._('write');

  const AppPermissionsDeployments._(this.value);

  /// Creates a AppPermissionsDeployments from a json string.
  factory AppPermissionsDeployments.fromJson(String json) {
    return AppPermissionsDeployments.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsDeployments value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsDeployments? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsDeployments.fromJson(json);
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
