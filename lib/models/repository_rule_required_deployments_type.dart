enum RepositoryRuleRequiredDeploymentsType {
  requiredDeployments._('required_deployments');

  const RepositoryRuleRequiredDeploymentsType._(this.value);

  /// Creates a RepositoryRuleRequiredDeploymentsType from a json string.
  factory RepositoryRuleRequiredDeploymentsType.fromJson(String json) {
    return RepositoryRuleRequiredDeploymentsType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleRequiredDeploymentsType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleRequiredDeploymentsType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleRequiredDeploymentsType.fromJson(json);
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
