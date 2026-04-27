/// Specify which types of repository this security configuration should be
/// applied to by default.
enum CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos {
  all._('all'),
  none._('none'),
  privateAndInternal._('private_and_internal'),
  public._('public');

  const CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos._(
    this.value,
  );

  /// Creates a CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos from a json string.
  factory CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos.fromJson(
    String json,
  ) {
    return CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeSecuritySetConfigurationAsDefaultRequestDefaultForNewRepos.fromJson(
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
