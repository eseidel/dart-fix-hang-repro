/// The default repository access level for Dependabot updates.
/// example: `'internal'`
enum DependabotRepositoryAccessDetailsDefaultLevel {
  public._('public'),
  internal._('internal');

  const DependabotRepositoryAccessDetailsDefaultLevel._(this.value);

  /// Creates a DependabotRepositoryAccessDetailsDefaultLevel from a json string.
  factory DependabotRepositoryAccessDetailsDefaultLevel.fromJson(String json) {
    return DependabotRepositoryAccessDetailsDefaultLevel.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotRepositoryAccessDetailsDefaultLevel value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotRepositoryAccessDetailsDefaultLevel? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return DependabotRepositoryAccessDetailsDefaultLevel.fromJson(json);
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
