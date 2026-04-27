/// The package's language or package management ecosystem.
enum SecurityAdvisoryEcosystems {
  rubygems._('rubygems'),
  npm._('npm'),
  pip._('pip'),
  maven._('maven'),
  nuget._('nuget'),
  composer._('composer'),
  go._('go'),
  rust._('rust'),
  erlang._('erlang'),
  actions._('actions'),
  pub._('pub'),
  other._('other'),
  swift._('swift');

  const SecurityAdvisoryEcosystems._(this.value);

  /// Creates a SecurityAdvisoryEcosystems from a json string.
  factory SecurityAdvisoryEcosystems.fromJson(String json) {
    return SecurityAdvisoryEcosystems.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAdvisoryEcosystems value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoryEcosystems? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoryEcosystems.fromJson(json);
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
