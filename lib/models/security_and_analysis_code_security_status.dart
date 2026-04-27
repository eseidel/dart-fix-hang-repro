enum SecurityAndAnalysisCodeSecurityStatus {
  enabled._('enabled'),
  disabled._('disabled');

  const SecurityAndAnalysisCodeSecurityStatus._(this.value);

  /// Creates a SecurityAndAnalysisCodeSecurityStatus from a json string.
  factory SecurityAndAnalysisCodeSecurityStatus.fromJson(String json) {
    return SecurityAndAnalysisCodeSecurityStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAndAnalysisCodeSecurityStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAndAnalysisCodeSecurityStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecurityAndAnalysisCodeSecurityStatus.fromJson(json);
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
