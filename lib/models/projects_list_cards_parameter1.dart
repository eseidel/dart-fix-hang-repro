enum ProjectsListCardsParameter1 {
  all._('all'),
  archived._('archived'),
  notArchived._('not_archived');

  const ProjectsListCardsParameter1._(this.value);

  /// Creates a ProjectsListCardsParameter1 from a json string.
  factory ProjectsListCardsParameter1.fromJson(String json) {
    return ProjectsListCardsParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ProjectsListCardsParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProjectsListCardsParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ProjectsListCardsParameter1.fromJson(json);
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
