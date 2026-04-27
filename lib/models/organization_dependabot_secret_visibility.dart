/// Visibility of a secret
enum OrganizationDependabotSecretVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const OrganizationDependabotSecretVisibility._(this.value);

  /// Creates a OrganizationDependabotSecretVisibility from a json string.
  factory OrganizationDependabotSecretVisibility.fromJson(String json) {
    return OrganizationDependabotSecretVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrganizationDependabotSecretVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationDependabotSecretVisibility? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrganizationDependabotSecretVisibility.fromJson(json);
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
