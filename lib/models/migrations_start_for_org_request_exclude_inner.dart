enum MigrationsStartForOrgRequestExcludeInner {
  repositories._('repositories');

  const MigrationsStartForOrgRequestExcludeInner._(this.value);

  /// Creates a MigrationsStartForOrgRequestExcludeInner from a json string.
  factory MigrationsStartForOrgRequestExcludeInner.fromJson(String json) {
    return MigrationsStartForOrgRequestExcludeInner.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown MigrationsStartForOrgRequestExcludeInner value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MigrationsStartForOrgRequestExcludeInner? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return MigrationsStartForOrgRequestExcludeInner.fromJson(json);
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
