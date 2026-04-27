/// The registry type.
enum OrgPrivateRegistryConfigurationRegistryType {
  mavenRepository._('maven_repository'),
  nugetFeed._('nuget_feed'),
  goproxyServer._('goproxy_server');

  const OrgPrivateRegistryConfigurationRegistryType._(this.value);

  /// Creates a OrgPrivateRegistryConfigurationRegistryType from a json string.
  factory OrgPrivateRegistryConfigurationRegistryType.fromJson(String json) {
    return OrgPrivateRegistryConfigurationRegistryType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgPrivateRegistryConfigurationRegistryType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgPrivateRegistryConfigurationRegistryType? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return OrgPrivateRegistryConfigurationRegistryType.fromJson(json);
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
