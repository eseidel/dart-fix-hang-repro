enum RepositoryRuleDeletionType {
  deletion._('deletion');

  const RepositoryRuleDeletionType._(this.value);

  /// Creates a RepositoryRuleDeletionType from a json string.
  factory RepositoryRuleDeletionType.fromJson(String json) {
    return RepositoryRuleDeletionType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleDeletionType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleDeletionType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleDeletionType.fromJson(json);
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
