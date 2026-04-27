enum SecurityAndAnalysisSecretScanningPushProtectionStatus {
  enabled._('enabled'),
  disabled._('disabled');

  const SecurityAndAnalysisSecretScanningPushProtectionStatus._(this.value);

  /// Creates a SecurityAndAnalysisSecretScanningPushProtectionStatus from a json string.
  factory SecurityAndAnalysisSecretScanningPushProtectionStatus.fromJson(
    String json,
  ) {
    return SecurityAndAnalysisSecretScanningPushProtectionStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAndAnalysisSecretScanningPushProtectionStatus value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAndAnalysisSecretScanningPushProtectionStatus? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAndAnalysisSecretScanningPushProtectionStatus.fromJson(json);
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
