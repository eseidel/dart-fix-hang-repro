/// The enablement status of Automatic dependency submission
enum CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction {
  enabled._('enabled'),
  disabled._('disabled'),
  notSet._('not_set');

  const CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction from a json string.
  factory CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationForEnterpriseRequestDependencyGraphAutosubmitAction.fromJson(
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
