/// The type of the bypass reviewer
enum CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType {
  team._('TEAM'),
  role._('ROLE');

  const CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType._(
    this.value,
  );

  /// Creates a CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType from a json string.
  factory CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(
    String json,
  ) {
    return CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecurityCreateConfigurationRequestSecretScanningDelegatedBypassOptionsReviewersInnerReviewerType.fromJson(
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
