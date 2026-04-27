/// The type of repositories to attach the configuration to.
enum CodeSecurityAttachEnterpriseConfigurationRequestScope {
  all._('all'),
  allWithoutConfigurations._('all_without_configurations');

  const CodeSecurityAttachEnterpriseConfigurationRequestScope._(this.value);

  /// Creates a CodeSecurityAttachEnterpriseConfigurationRequestScope from a json string.
  factory CodeSecurityAttachEnterpriseConfigurationRequestScope.fromJson(
    String json,
  ) {
    return CodeSecurityAttachEnterpriseConfigurationRequestScope.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityAttachEnterpriseConfigurationRequestScope value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityAttachEnterpriseConfigurationRequestScope? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityAttachEnterpriseConfigurationRequestScope.fromJson(json);
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
