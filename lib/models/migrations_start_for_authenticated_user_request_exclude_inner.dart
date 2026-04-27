/// Allowed values that can be passed to the exclude param.
/// example: `'repositories'`
enum MigrationsStartForAuthenticatedUserRequestExcludeInner {
  repositories._('repositories');

  const MigrationsStartForAuthenticatedUserRequestExcludeInner._(this.value);

  /// Creates a MigrationsStartForAuthenticatedUserRequestExcludeInner from a json string.
  factory MigrationsStartForAuthenticatedUserRequestExcludeInner.fromJson(
    String json,
  ) {
    return MigrationsStartForAuthenticatedUserRequestExcludeInner.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown MigrationsStartForAuthenticatedUserRequestExcludeInner value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static MigrationsStartForAuthenticatedUserRequestExcludeInner? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return MigrationsStartForAuthenticatedUserRequestExcludeInner.fromJson(
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
