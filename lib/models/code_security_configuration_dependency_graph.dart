/// The enablement status of Dependency Graph
enum CodeSecurityConfigurationDependencyGraph {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityConfigurationDependencyGraph._(this.value);

  /// Creates a CodeSecurityConfigurationDependencyGraph from a json string.
  factory CodeSecurityConfigurationDependencyGraph.fromJson(String json) {
    return CodeSecurityConfigurationDependencyGraph.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodeSecurityConfigurationDependencyGraph value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationDependencyGraph? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationDependencyGraph.fromJson(json);
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
