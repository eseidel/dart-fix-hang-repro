enum RepositoryRuleRequiredSignaturesType {
  requiredSignatures._('required_signatures');

  const RepositoryRuleRequiredSignaturesType._(this.value);

  /// Creates a RepositoryRuleRequiredSignaturesType from a json string.
  factory RepositoryRuleRequiredSignaturesType.fromJson(String json) {
    return RepositoryRuleRequiredSignaturesType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleRequiredSignaturesType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleRequiredSignaturesType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleRequiredSignaturesType.fromJson(json);
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
