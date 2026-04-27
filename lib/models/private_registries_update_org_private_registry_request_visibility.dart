/// Which type of organization repositories have access to the private registry.
/// `selected` means only the repositories specified by
/// `selected_repository_ids` can access the private registry.
enum PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility {
  all._('all'),
  private._('private'),
  selected._('selected');

  const PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility._(
    this.value,
  );

  /// Creates a PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility from a json string.
  factory PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility.fromJson(
    String json,
  ) {
    return PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PrivateRegistriesUpdateOrgPrivateRegistryRequestVisibility.fromJson(
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
