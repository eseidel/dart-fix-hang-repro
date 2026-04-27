/// Type of repository selection requested.
enum OrganizationProgrammaticAccessGrantRequestRepositorySelection {
  none._('none'),
  all._('all'),
  subset._('subset');

  const OrganizationProgrammaticAccessGrantRequestRepositorySelection._(
    this.value,
  );

  /// Creates a OrganizationProgrammaticAccessGrantRequestRepositorySelection from a json string.
  factory OrganizationProgrammaticAccessGrantRequestRepositorySelection.fromJson(
    String json,
  ) {
    return OrganizationProgrammaticAccessGrantRequestRepositorySelection.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown OrganizationProgrammaticAccessGrantRequestRepositorySelection value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationProgrammaticAccessGrantRequestRepositorySelection?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrganizationProgrammaticAccessGrantRequestRepositorySelection.fromJson(
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
