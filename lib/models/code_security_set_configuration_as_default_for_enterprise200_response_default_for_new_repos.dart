/// Specifies which types of repository this security configuration is applied
/// to by default.
enum CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos {
  all._('all'),
  none._('none'),
  privateAndInternal._('private_and_internal'),
  public._('public');

  const CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos._(
    this.value,
  );

  /// Creates a CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos from a json string.
  factory CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos.fromJson(
    String json,
  ) {
    return CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecuritySetConfigurationAsDefaultForEnterprise200ResponseDefaultForNewRepos.fromJson(
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
