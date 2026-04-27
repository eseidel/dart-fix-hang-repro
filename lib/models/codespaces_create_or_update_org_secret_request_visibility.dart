/// Which type of organization repositories have access to the organization
/// secret. `selected` means only the repositories specified by
/// `selected_repository_ids` can access the secret.
enum CodespacesCreateOrUpdateOrgSecretRequestVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const CodespacesCreateOrUpdateOrgSecretRequestVisibility._(this.value);

  /// Creates a CodespacesCreateOrUpdateOrgSecretRequestVisibility from a json string.
  factory CodespacesCreateOrUpdateOrgSecretRequestVisibility.fromJson(
    String json,
  ) {
    return CodespacesCreateOrUpdateOrgSecretRequestVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespacesCreateOrUpdateOrgSecretRequestVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesCreateOrUpdateOrgSecretRequestVisibility? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesCreateOrUpdateOrgSecretRequestVisibility.fromJson(json);
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
