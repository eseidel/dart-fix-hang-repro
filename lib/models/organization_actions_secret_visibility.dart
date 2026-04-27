/// Visibility of a secret
enum OrganizationActionsSecretVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const OrganizationActionsSecretVisibility._(this.value);

  /// Creates a OrganizationActionsSecretVisibility from a json string.
  factory OrganizationActionsSecretVisibility.fromJson(String json) {
    return OrganizationActionsSecretVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrganizationActionsSecretVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationActionsSecretVisibility? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrganizationActionsSecretVisibility.fromJson(json);
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
