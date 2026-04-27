/// The level of permission to grant the access token to view and manage
/// interaction limits on a repository.
enum AppPermissionsInteractionLimits {
  read._('read'),
  write._('write');

  const AppPermissionsInteractionLimits._(this.value);

  /// Creates a AppPermissionsInteractionLimits from a json string.
  factory AppPermissionsInteractionLimits.fromJson(String json) {
    return AppPermissionsInteractionLimits.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsInteractionLimits value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsInteractionLimits? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsInteractionLimits.fromJson(json);
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
