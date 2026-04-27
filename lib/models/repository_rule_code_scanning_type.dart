enum RepositoryRuleCodeScanningType {
  codeScanning._('code_scanning');

  const RepositoryRuleCodeScanningType._(this.value);

  /// Creates a RepositoryRuleCodeScanningType from a json string.
  factory RepositoryRuleCodeScanningType.fromJson(String json) {
    return RepositoryRuleCodeScanningType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleCodeScanningType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCodeScanningType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCodeScanningType.fromJson(json);
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
