enum SecurityAndAnalysisSecretScanningStatus {
  enabled._('enabled'),
  disabled._('disabled');

  const SecurityAndAnalysisSecretScanningStatus._(this.value);

  /// Creates a SecurityAndAnalysisSecretScanningStatus from a json string.
  factory SecurityAndAnalysisSecretScanningStatus.fromJson(String json) {
    return SecurityAndAnalysisSecretScanningStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAndAnalysisSecretScanningStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAndAnalysisSecretScanningStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecurityAndAnalysisSecretScanningStatus.fromJson(json);
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
