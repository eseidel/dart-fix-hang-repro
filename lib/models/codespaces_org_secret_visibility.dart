/// The type of repositories in the organization that the secret is visible to
enum CodespacesOrgSecretVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const CodespacesOrgSecretVisibility._(this.value);

  /// Creates a CodespacesOrgSecretVisibility from a json string.
  factory CodespacesOrgSecretVisibility.fromJson(String json) {
    return CodespacesOrgSecretVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespacesOrgSecretVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesOrgSecretVisibility? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodespacesOrgSecretVisibility.fromJson(json);
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
