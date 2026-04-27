/// The enablement status of Dependency Graph
enum CodeSecurityCreateConfigurationRequestDependencyGraph {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationRequestDependencyGraph._(this.value);

  /// Creates a CodeSecurityCreateConfigurationRequestDependencyGraph from a json string.
  factory CodeSecurityCreateConfigurationRequestDependencyGraph.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestDependencyGraph.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityCreateConfigurationRequestDependencyGraph value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestDependencyGraph? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestDependencyGraph.fromJson(json);
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
