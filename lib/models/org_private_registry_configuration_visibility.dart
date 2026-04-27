/// Which type of organization repositories have access to the private registry.
enum OrgPrivateRegistryConfigurationVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const OrgPrivateRegistryConfigurationVisibility._(this.value);

  /// Creates a OrgPrivateRegistryConfigurationVisibility from a json string.
  factory OrgPrivateRegistryConfigurationVisibility.fromJson(String json) {
    return OrgPrivateRegistryConfigurationVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgPrivateRegistryConfigurationVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgPrivateRegistryConfigurationVisibility? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return OrgPrivateRegistryConfigurationVisibility.fromJson(json);
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
