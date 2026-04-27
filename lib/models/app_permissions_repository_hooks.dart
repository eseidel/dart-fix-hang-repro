/// The level of permission to grant the access token to manage the post-receive
/// hooks for a repository.
enum AppPermissionsRepositoryHooks {
  read._('read'),
  write._('write');

  const AppPermissionsRepositoryHooks._(this.value);

  /// Creates a AppPermissionsRepositoryHooks from a json string.
  factory AppPermissionsRepositoryHooks.fromJson(String json) {
    return AppPermissionsRepositoryHooks.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsRepositoryHooks value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsRepositoryHooks? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsRepositoryHooks.fromJson(json);
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
