enum RepositoryRuleUpdateType {
  update._('update');

  const RepositoryRuleUpdateType._(this.value);

  /// Creates a RepositoryRuleUpdateType from a json string.
  factory RepositoryRuleUpdateType.fromJson(String json) {
    return RepositoryRuleUpdateType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleUpdateType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleUpdateType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleUpdateType.fromJson(json);
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
