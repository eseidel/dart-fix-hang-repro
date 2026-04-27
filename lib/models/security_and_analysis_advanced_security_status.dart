enum SecurityAndAnalysisAdvancedSecurityStatus {
  enabled._('enabled'),
  disabled._('disabled');

  const SecurityAndAnalysisAdvancedSecurityStatus._(this.value);

  /// Creates a SecurityAndAnalysisAdvancedSecurityStatus from a json string.
  factory SecurityAndAnalysisAdvancedSecurityStatus.fromJson(String json) {
    return SecurityAndAnalysisAdvancedSecurityStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAndAnalysisAdvancedSecurityStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAndAnalysisAdvancedSecurityStatus? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAndAnalysisAdvancedSecurityStatus.fromJson(json);
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
