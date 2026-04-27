/// Allowed values that can be passed to the exclude param.
/// example: `'repositories'`
enum MigrationsGetStatusForOrgParameter2Inner {
  repositories._('repositories');

  const MigrationsGetStatusForOrgParameter2Inner._(this.value);

  /// Creates a MigrationsGetStatusForOrgParameter2Inner from a json string.
  factory MigrationsGetStatusForOrgParameter2Inner.fromJson(String json) {
    return MigrationsGetStatusForOrgParameter2Inner.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown MigrationsGetStatusForOrgParameter2Inner value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MigrationsGetStatusForOrgParameter2Inner? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return MigrationsGetStatusForOrgParameter2Inner.fromJson(json);
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
