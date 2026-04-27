// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
/// The permission to grant to the team for this project. Default: the team's
/// `permission` attribute will be used to determine what permission to grant
/// the team on this project. Note that, if you choose not to pass any
/// parameters, you'll need to set `Content-Length` to zero when calling this
/// endpoint. For more information, see "[HTTP
/// method](https://docs.github.com/rest/guides/getting-started-with-the-rest-api#http-method)."
enum TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission {
  read._('read'),
  write._('write'),
  admin._('admin');

  const TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission._(this.value);

  /// Creates a TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission from a json string.
  factory TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission.fromJson(
    String json,
  ) {
    return TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return TeamsAddOrUpdateProjectPermissionsInOrgRequestPermission.fromJson(
      json,
    );
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
