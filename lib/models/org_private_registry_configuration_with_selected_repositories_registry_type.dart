/// The registry type.
enum OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType {
  mavenRepository._('maven_repository'),
  nugetFeed._('nuget_feed'),
  goproxyServer._('goproxy_server');

  const OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType._(
    this.value,
  );

  /// Creates a OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType from a json string.
  factory OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType.fromJson(
    String json,
  ) {
    return OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrgPrivateRegistryConfigurationWithSelectedRepositoriesRegistryType.fromJson(
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
