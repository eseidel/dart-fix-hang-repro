/// The token status as of the latest validity check.
enum OrganizationSecretScanningAlertValidity {
  active._('active'),
  inactive._('inactive'),
  unknown._('unknown');

  const OrganizationSecretScanningAlertValidity._(this.value);

  /// Creates a OrganizationSecretScanningAlertValidity from a json string.
  factory OrganizationSecretScanningAlertValidity.fromJson(String json) {
    return OrganizationSecretScanningAlertValidity.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrganizationSecretScanningAlertValidity value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationSecretScanningAlertValidity? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrganizationSecretScanningAlertValidity.fromJson(json);
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
