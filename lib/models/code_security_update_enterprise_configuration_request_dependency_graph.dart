/// The enablement status of Dependency Graph
enum CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph._(
    this.value,
  );

  /// Creates a CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph from a json string.
  factory CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph.fromJson(
    String json,
  ) {
    return CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityUpdateEnterpriseConfigurationRequestDependencyGraph.fromJson(
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
