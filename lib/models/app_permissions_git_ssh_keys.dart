/// The level of permission to grant the access token to manage git SSH keys.
enum AppPermissionsGitSshKeys {
  read._('read'),
  write._('write');

  const AppPermissionsGitSshKeys._(this.value);

  /// Creates a AppPermissionsGitSshKeys from a json string.
  factory AppPermissionsGitSshKeys.fromJson(String json) {
    return AppPermissionsGitSshKeys.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppPermissionsGitSshKeys value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppPermissionsGitSshKeys? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppPermissionsGitSshKeys.fromJson(json);
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
